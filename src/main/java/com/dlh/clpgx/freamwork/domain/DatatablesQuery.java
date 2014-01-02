package com.dlh.clpgx.freamwork.domain;
import java.util.Enumeration;
import java.util.Map;
import java.util.TreeMap;
import javax.servlet.ServletRequest;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springside.modules.domain.BaseQuery;
import org.springside.modules.persistence.DynamicSpecifications;
import org.springside.modules.persistence.SearchFilter;
public class DatatablesQuery extends BaseQuery {
	private int pageNumber=1;
	private int pageSize=20;
	private String sortFiled="id";
	private String sortType="DESC";
	private final String prefix="mDataProp_";
	private final String sSearch_value_params="sSearch";
	private ServletRequest request;
	public DatatablesQuery(ServletRequest request, Object bean) {
		super(request, bean);
		this.pageSize =   StringUtils.isBlank(request.getParameter("iDisplayLength"))?10:Integer.parseInt(request.getParameter("iDisplayLength"));
		int start = StringUtils.isBlank(request.getParameter("iDisplayStart"))?1:Integer.parseInt(request.getParameter("iDisplayStart"));
		pageNumber = start/this.pageSize+1;
		this.sortFiled =(String) (StringUtils.isBlank(request.getParameter("sortFiled"))?"id":request.getParameter("sortFiled"));
		this.sortType = (String) (StringUtils.isBlank(request.getParameter("sortType"))?"DESC":request.getParameter("sortType"));
		this.request = request;

		// TODO Auto-generated constructor stub
	}
	
	
	@Override
	public PageRequest buildPageRequest(){
		return  buildPageRequest(pageNumber, pageSize, sortType);
	}
	@Override
	public PageRequest buildPageRequest(int pageNumber, int pagzSize, String sortType){
		Sort sort = null;
		if("ASC".equals(sortType)){
			sort = new Sort(Direction.ASC, sortFiled);
		}else{
			sort = new Sort(Direction.DESC, sortFiled);
		}
		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}
	
	
	@Override
	public Specification buildOrSpecification() {
		// TODO Auto-generated method stub
		Enumeration paramNames = request.getParameterNames();
		Map<String, Object> searchParams = new TreeMap<String, Object>();
		while ((paramNames != null) && paramNames.hasMoreElements()) {
			String paramName = (String) paramNames.nextElement();
			if ("".equals(prefix) || paramName.startsWith(prefix)) {
				String value = request.getParameter(paramName);
				searchParams.put("LIKE_"+value, request.getParameter(sSearch_value_params));
			}
		};
		
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		return DynamicSpecifications.byOrSearchFilter(filters.values(), getVo().getClass());
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

}
