package com.cangoonline.controller.approve.approvepool;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import com.cangoonline.service.system.fhlog.FHlogManager;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.cangoonline.controller.base.BaseController;
import com.cangoonline.entity.Page;
import com.cangoonline.util.AppUtil;
import com.cangoonline.util.ObjectExcelView;
import com.cangoonline.util.PageData;
import com.cangoonline.util.Jurisdiction;
import com.cangoonline.service.approve.approvepool.ApprovePoolManager;

/** 
 * 说明：待分配列表
 * 创建人：zhaopeng
 * 创建时间：2018-01-05
 */
@Controller
@RequestMapping(value="/pendingpool")
public class PendingPoolController extends BaseController {
	
	String menuUrl = "pendingpool/list.do"; //菜单地址(权限用)
	@Resource(name="approvepoolService")
	private ApprovePoolManager approvepoolService;
	@Resource(name="fhlogService")
	private FHlogManager FHLOG;


	@RequestMapping(value="/claim")
	public ModelAndView claim() throws Exception{
		PageData pd = new PageData();
		pd = this.getPageData();
		FHLOG.save(Jurisdiction.getUsername(), "认领申请:"+pd.getString("APPLYSERIALNO"));
		ModelAndView mv = this.getModelAndView();
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}

	/**列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表ApprovePool");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = approvepoolService.list(page);	//列出ApprovePool列表
		mv.setViewName("approve/approvepool/approvepool_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	

	 /**去查看页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/view")
	public ModelAndView view()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = approvepoolService.findById(pd);	//根据ID读取
		mv.setViewName("approve/approvepool/approvepool_view");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**批量删除
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"批量删除ApprovePool");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			approvepoolService.deleteAll(ArrayDATA_IDS);
			pd.put("msg", "ok");
		}else{
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}
	
	 /**导出到excel
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"导出ApprovePool到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("申请编号");	//1
		titles.add("客户姓名");	//2
		titles.add("证件号码");	//3
		titles.add("产品名称");	//4
		titles.add("渠道");	//5
		titles.add("登记日期");	//6
		dataMap.put("titles", titles);
		List<PageData> varOList = approvepoolService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("APPLYSERIALNO"));	    //1
			vpd.put("var2", varOList.get(i).getString("CUSTOMERNAME"));	    //2
			vpd.put("var3", varOList.get(i).getString("CERTNO"));	    //3
			vpd.put("var4", varOList.get(i).getString("BUSINESSTYPE"));	    //4
			vpd.put("var5", varOList.get(i).getString("CHANNEL"));	    //5
			vpd.put("var6", varOList.get(i).getString("INPUTDATE"));	    //6
			varList.add(vpd);
		}
		dataMap.put("varList", varList);
		ObjectExcelView erv = new ObjectExcelView();
		mv = new ModelAndView(erv,dataMap);
		return mv;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
