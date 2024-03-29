<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../includeslist/header.jsp" %>

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Board Modify Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<!-- 7/20 -->
                        	<form role="form"  action="/hospitals/modify"  method="post">
                        		<!-- Criteria 클래스의 인스턴스 명과 일치 => 자동 바인딩 -->
                        		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
						    	<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
						    	<input type="hidden" name="type" value='<c:out value="${cri.type}"/>'>
						    	<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}"/>'>
								<div class="from-group">
									<label>Bno</label>
									<input class="form-control"  name="bno"  readonly="readonly"  value='<c:out value="${hospitals.bno}"/>' ><br>
								</div>
								
								<div class="from-group">
									<label>Title</label>
									<input class="form-control"  name="title"  value='<c:out value="${hospitals.title}"/>' ><br>
								</div>
							
								<div class="from-group">
									<label>Text area</label>
									<textarea class="form-control"   rows="3"  name="content"  >
									<c:out value="${hospitals.content}"/></textarea><br>
								</div>
							
								<div class="from-group">
									<label>Writer</label>
									<input class="form-control"  name="writer"  readonly="readonly" value='<c:out value="${hospitals.writer}"/>' ><br>
								</div>
								
								<div class="from-group">
									<label>RegDate</label>
									<input class="form-control"  name='regdate'  readonly="readonly" 
									value='<fmt:formatDate pattern="yyyy/MM/dd" value="${hospitals.regdate }"/>' ><br>
								</div>
								
								<div class="from-group">
									<label>UpdateDate</label>
									<input class="form-control"  name='updatedate'  readonly="readonly" 
									value='<fmt:formatDate pattern="yyyy/MM/dd" value="${hospitals.updatedate }"/>' ><br>
								</div>
			
								<button type="submit"  data-oper='modify' class="btn btn-default">Modify</button>												    
								<button type="submit"   data-oper='remove' class="btn btn-danger">Remove</button>												    
								<button type="submit"  data-oper='list' class="btn btn-info">List</button>												    
							    
						    </form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
 <script type="text/javascript">
 		$(document).ready(function(){
 			
 			var formObj = $("form");
 			
 			$('button').on("click", function(e){
 				e.preventDefault();
 				
 				var operation = $(this).data('oper');
 				console.log(operation);
 				
 				// 7/20
 				if(operation === 'remove'){
 					formObj.attr("action", "/hospitals/remove");
 				}else if(operation === 'list'){
 				//	self.location = "/board/list";
 				formObj.attr("action", "/hospitals/list").attr("method","get");
 				var pageNumTag = $("input[name='pageNum']").clone();
 				var amountTag = $("input[name='amount']").clone();
 				var typeTag = $("input[name='type']").clone();
 				var keywordTag = $("input[name='keyword']").clone();
 				formObj.empty();
 				formObj.append(pageNumTag);
 				formObj.append(amountTag);
 				formObj.append(typeTag);
 				formObj.append(keywordTag);
 				}
 				formObj.submit();
 			});
 		});
 </script>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
<%@ include file="../includeslist/footer.jsp" %>