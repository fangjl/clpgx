<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="portlet box blue">
                  <div class="portlet-title">
                     <div class="caption"><i class="icon-globe"></i>Show/Hide Columns</div>
                     <div class="actions">
                        <div class="btn-group">
                           <a data-toggle="dropdown" href="#" class="btn default">
                           Columns
                           <i class="icon-angle-down"></i>
                           </a>
                           <div class="dropdown-menu hold-on-click dropdown-checkboxes pull-right" id="sample_2_column_toggler">
                               	<c:forEach items="${fields}" var="field" varStatus="status">
								    <label><div class="checker"><span class="checked"><input type="checkbox" data-column="${status }" checked=""></span></div>${field.name}</label>
								</c:forEach>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="portlet-body">
                     <div role="grid" class="dataTables_wrapper form-inline" id="sample_2_wrapper"><div class="row"><div class="col-md-6 col-sm-12"><div id="sample_2_length" class="dataTables_length"><label><div class="select2-container form-control input-small" id="s2id_autogen3"><a tabindex="-1" class="select2-choice" onclick="return false;" href="javascript:void(0)">   <span class="select2-chosen">5</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow"><b></b></span></a><input type="text" class="select2-focusser select2-offscreen" id="s2id_autogen4"><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <input type="text" class="select2-input" spellcheck="false" autocapitalize="off" autocorrect="off" autocomplete="off">   </div>   <ul class="select2-results">   </ul></div></div><select name="sample_2_length" size="1" aria-controls="sample_2" class="form-control input-small select2-offscreen" tabindex="-1"><option value="5">5</option><option value="15">15</option><option value="20">20</option><option value="-1">All</option></select> records</label></div></div><div class="col-md-12 col-sm-12"><div class="dataTables_filter" id="sample_2_filter"><label>Search: <input type="text" aria-controls="sample_2" class="form-control input-small"></label></div></div></div><div class="table-scrollable"><table id="sample_2" class="table table-striped table-bordered table-hover table-full-width dataTable" aria-describedby="sample_2_info">
                        <thead>
                           <tr role="row">
                           	<c:forEach items="${fields}" var="field" varStatus="status">
								     <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample_2" rowspan="1" colspan="1" style="width: 189px;" aria-label="Rendering engine: activate to sort column ascending">${field.name}</th>
							</c:forEach>
                           </tr>
                        </thead>
                        
                     <tbody role="alert" aria-live="polite" aria-relevant="all">
                     
                     
                     
                     <c:forEach items="${fields}" var="field" varStatus="status">
                     	   		<tr class="odd">
                     	   		<c:forEach items="${pages.content}" var="content" varStatus="status">
                     	   		    <td class="">${ content.field.name}</td>
								</c:forEach>
                     	   		</tr>
							</c:forEach>
                     
                     
                     
                           
                           
                           </tbody>
                           </table>
                           </div>
                           
                           
                           
                           <div class="row">
                           <div class="col-md-5 col-sm-12">
                           <div class="dataTables_info" id="sample_2_info">Showing 1 to 10 of 43 entries</div>
                           </div><div class="col-md-7 col-sm-12">
                           <div class="dataTables_paginate paging_bootstrap">
                           <ul class="pagination">
                           <li class="prev disabled">
                           <a title="Previous" href="#">
                           <i class="icon-angle-left">
                           </i></a></li>
                           <li class="active">
                           <a href="#">1</a>
                           </li><li><a href="#">2
                           </a></li><li><a href="#">3</a></li><li>
                           <a href="#">4</a></li><li><a href="#">5</a></li><li class="next"><a title="Next" href="#"><i class="icon-angle-right"></i></a></li></ul></div></div></div></div>
                  </div>
               </div>
