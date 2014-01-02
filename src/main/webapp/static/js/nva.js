function indexOf($tab) {
	return $("#clpg-tabs li").index($tab);
}
function _indexOfPanels($tab) {
	return _getTabPanels.index($tab)
}
function _getTabPanels() {
	return $("#gloab-container").children();
}

$(document)
		.ready(
				function() {
					$.get("${ctx}/admin/index/desk", {}, function(data,
							textStatus, jqXHR) {
						var tabpanel = $("<div id='clpg-tabpanel-id-0'>");
						$("#gloab-container").append(tabpanel);
						tabpanel.html(data);
					}, "html")

					$("#clpg-tabs")
							.find("li")
							.each(
									function(i) {
										$(this)
												.unbind("click")
												.click(
														function(event) {
															$("#clpg-tabs")
																	.find("li")
																	.removeClass();
															$(this).addClass(
																	"hover");
															_getTabPanels()
																	.hide();
															var _index = indexOf($(this));
															var tabps = $(
																	"#clpg-tabpanel-id-"
																			+ _index)
																	.attr("id");
															if (tabps) {
																$(
																		"#clpg-tabpanel-id-"
																				+ _index)
																		.show();
															} else {
																var tabpanel = $("<div id=clpg-tabpanel-id-"
																		+ indexOf($(this))
																		+ ">");
																$
																		.get(
																				$(
																						this)
																						.attr(
																								"url"),
																				{},
																				function(
																						data,
																						textStatus,
																						jqXHR) {
																					$(
																							"#gloab-container")
																							.append(
																									tabpanel);
																					tabpanel
																							.html(
																									data)
																							.initUI();

																				},
																				"html")

															}
														});

									});
				});