#!/usr/bin/ruby
require 'selenium-webdriver'
userid = 'ユーザーID'
password = 'パスワード'
screenshot_path = '任意のパス'
driver = Selenium::WebDriver.for :chrome
# :timeoutオプションは秒数を指定している。この場合は100秒
wait = Selenium::WebDriver::Wait.new(:timeout => 100) 
begin 
	driver.get "https://www.rakuten-sec.co.jp/"
	driver.find_element(:xpath, '//*[@id="form-login-id"]').send_key userid
	driver.find_element(:xpath, '//*[@id="form-login-pass"]').send_key password
	driver.find_element(:class, 's1-form-login__container').submit
	driver.find_element(:xpath, '//*[@id="str-main-inner"]/div[2]/div/div[2]/ul/li[1]/a').click
	driver.find_element(:xpath, '//*[@id="editAnchor1"]').click
	File.open('stock_list.txt') do |file|
	  file.each_line do |stock_number|
	  	puts stock_number
	  	if driver.find_elements(:id, 'addAnchor1').size >= 1 then
			driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
			#untilメソッドは文字通り「～するまで」を意味する
			wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
			driver.switch_to.frame('TB_iframeContent')
			driver.find_element(:id, 'ss-02').send_key stock_number
			puts stock_number
			driver.find_element(:id, 'industryCd').submit
			driver.find_element(:id, '0').click
			driver.save_screenshot(screenshot_path+stock_number+'.png')
			driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
			if driver.find_elements(:id, 'err_msg').size >= 1 then
				driver.switch_to.window driver.window_handle
				if driver.find_elements(:id, 'TB_closeWindowButton').size >= 1 then
					driver.find_element(:id, 'TB_closeWindowButton').click
					sleep 5
					driver.find_element(:id, 'prc_save_button1').click
					driver.find_element(:xpath, '//*[@id="form"]/div[1]/fieldset/ul/li[2]/a').click
					driver.find_element(:id, 'editAnchor1').click
					if driver.find_elements(:id, 'addAnchor1').size >= 1 then
						driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
						#untilメソッドは文字通り「～するまで」を意味する
						wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
						driver.switch_to.frame('TB_iframeContent')
						driver.find_element(:id, 'ss-02').send_key stock_number
						puts stock_number
						driver.find_element(:id, 'industryCd').submit
						driver.find_element(:id, '0').click
						driver.save_screenshot(screenshot_path+stock_number+'.png')
						driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
						if driver.find_elements(:id, 'err_msg').size >= 1 then
							driver.switch_to.window driver.window_handle
							if driver.find_elements(:id, 'TB_closeWindowButton').size >= 1 then
								driver.find_element(:id, 'TB_closeWindowButton').click
								sleep 5
								driver.find_element(:id, 'prc_save_button1').click
								driver.find_element(:xpath, '//*[@id="form"]/div[1]/fieldset/ul/li[3]/a').click
								driver.find_element(:id, 'editAnchor1').click
								if driver.find_elements(:id, 'addAnchor1').size >= 1 then
									driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
									#untilメソッドは文字通り「～するまで」を意味する
									wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
									driver.switch_to.frame('TB_iframeContent')
									driver.find_element(:id, 'ss-02').send_key stock_number
									puts stock_number
									driver.find_element(:id, 'industryCd').submit
									driver.find_element(:id, '0').click
									driver.save_screenshot(screenshot_path+stock_number+'.png')
									driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
									if driver.find_elements(:id, 'err_msg').size >= 1 then
										driver.switch_to.window driver.window_handle
										if driver.find_elements(:id, 'TB_closeWindowButton').size >= 1 then
											driver.find_element(:id, 'TB_closeWindowButton').click
											sleep 5
											driver.find_element(:id, 'prc_save_button1').click
											driver.find_element(:xpath, '//*[@id="form"]/div[1]/fieldset/ul/li[4]/a').click
											driver.find_element(:id, 'editAnchor1').click
											if driver.find_elements(:id, 'addAnchor1').size >= 1 then
												driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
												#untilメソッドは文字通り「～するまで」を意味する
												wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
												driver.switch_to.frame('TB_iframeContent')
												driver.find_element(:id, 'ss-02').send_key stock_number
												puts stock_number
												driver.find_element(:id, 'industryCd').submit
												driver.find_element(:id, '0').click
												driver.save_screenshot(screenshot_path+stock_number+'.png')
												driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
												if driver.find_elements(:id, 'err_msg').size >= 1 then
													driver.switch_to.window driver.window_handle
													if driver.find_elements(:id, 'TB_closeWindowButton').size >= 1 then
														driver.find_element(:id, 'TB_closeWindowButton').click
														sleep 5
														driver.find_element(:id, 'prc_save_button1').click
														driver.find_element(:xpath, '//*[@id="form"]/div[1]/fieldset/ul/li[4]/a').click
														driver.find_element(:id, 'editAnchor1').click
														if driver.find_elements(:id, 'addAnchor1').size >= 1 then
															driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
															#untilメソッドは文字通り「～するまで」を意味する
															wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
															driver.switch_to.frame('TB_iframeContent')
															driver.find_element(:id, 'ss-02').send_key stock_number
															puts stock_number
															driver.find_element(:id, 'industryCd').submit
															driver.find_element(:id, '0').click
															driver.save_screenshot(screenshot_path+stock_number+'.png')
															driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
															if driver.find_elements(:id, 'err_msg').size >= 1 then
																driver.switch_to.window driver.window_handle
																if driver.find_elements(:id, 'TB_closeWindowButton').size >= 1 then
																	driver.find_element(:id, 'TB_closeWindowButton').click
																	sleep 5
																	driver.find_element(:id, 'prc_save_button1').click
																	driver.find_element(:xpath, '//*[@id="form"]/div[1]/fieldset/ul/li[5]/a').click
																	driver.find_element(:id, 'editAnchor1').click
																	if driver.find_elements(:id, 'addAnchor1').size >= 1 then
																		driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
																		#untilメソッドは文字通り「～するまで」を意味する
																		wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
																		driver.switch_to.frame('TB_iframeContent')
																		driver.find_element(:id, 'ss-02').send_key stock_number
																		puts stock_number
																		driver.find_element(:id, 'industryCd').submit
																		driver.find_element(:id, '0').click
																		driver.save_screenshot(screenshot_path+stock_number+'.png')
																		driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
																		if driver.find_elements(:id, 'err_msg').size >= 1 then
																			driver.switch_to.window driver.window_handle
																			if driver.find_elements(:id, 'TB_closeWindowButton').size >= 1 then
																				driver.find_element(:id, 'TB_closeWindowButton').click
																				sleep 5
																				driver.find_element(:id, 'prc_save_button1').click
																				driver.find_element(:xpath, '//*[@id="form"]/div[1]/fieldset/ul/li[6]/a').click
																				driver.find_element(:id, 'editAnchor1').click
																				if driver.find_elements(:id, 'addAnchor1').size >= 1 then
																					driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
																					#untilメソッドは文字通り「～するまで」を意味する
																					wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
																					driver.switch_to.frame('TB_iframeContent')
																					driver.find_element(:id, 'ss-02').send_key stock_number
																					puts stock_number
																					driver.find_element(:id, 'industryCd').submit
																					driver.find_element(:id, '0').click
																					driver.save_screenshot(screenshot_path+stock_number+'.png')
																					driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
																					if driver.find_elements(:id, 'err_msg').size >= 1 then
																						driver.switch_to.window driver.window_handle
																						if driver.find_elements(:id, 'TB_closeWindowButton').size >= 1 then
																							driver.find_element(:id, 'TB_closeWindowButton').click
																							sleep 5
																							driver.find_element(:id, 'prc_save_button1').click
																							driver.find_element(:xpath, '//*[@id="form"]/div[1]/fieldset/ul/li[7]/a').click
																							driver.find_element(:id, 'editAnchor1').click
																							if driver.find_elements(:id, 'addAnchor1').size >= 1 then
																								driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
																								#untilメソッドは文字通り「～するまで」を意味する
																								wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
																								driver.switch_to.frame('TB_iframeContent')
																								driver.find_element(:id, 'ss-02').send_key stock_number
																								puts stock_number
																								driver.find_element(:id, 'industryCd').submit
																								driver.find_element(:id, '0').click
																								driver.save_screenshot(screenshot_path+stock_number+'.png')
																								driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
																								if driver.find_elements(:id, 'err_msg').size >= 1 then
																									driver.switch_to.window driver.window_handle
																									if driver.find_elements(:id, 'TB_closeWindowButton').size >= 1 then
																										driver.find_element(:id, 'TB_closeWindowButton').click
																										sleep 5
																										driver.find_element(:id, 'prc_save_button1').click
																										driver.find_element(:xpath, '//*[@id="form"]/div[1]/fieldset/ul/li[8]/a').click
																										driver.find_element(:id, 'editAnchor1').click
																										if driver.find_elements(:id, 'addAnchor1').size >= 1 then
																											driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
																											#untilメソッドは文字通り「～するまで」を意味する
																											wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
																											driver.switch_to.frame('TB_iframeContent')
																											driver.find_element(:id, 'ss-02').send_key stock_number
																											puts stock_number
																											driver.find_element(:id, 'industryCd').submit
																											driver.find_element(:id, '0').click
																											driver.save_screenshot(screenshot_path+stock_number+'.png')
																											driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
																											if driver.find_elements(:id, 'err_msg').size >= 1 then
																												driver.switch_to.window driver.window_handle
																												if driver.find_elements(:id, 'TB_closeWindowButton').size >= 1 then
																													driver.find_element(:id, 'TB_closeWindowButton').click
																													sleep 5
																													driver.find_element(:id, 'prc_save_button1').click
																													driver.find_element(:xpath, '//*[@id="form"]/div[1]/fieldset/ul/li[9]/a').click
																													driver.find_element(:id, 'editAnchor1').click
																													if driver.find_elements(:id, 'addAnchor1').size >= 1 then
																														driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
																														#untilメソッドは文字通り「～するまで」を意味する
																														wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
																														driver.switch_to.frame('TB_iframeContent')
																														driver.find_element(:id, 'ss-02').send_key stock_number
																														puts stock_number
																														driver.find_element(:id, 'industryCd').submit
																														driver.find_element(:id, '0').click
																														driver.save_screenshot(screenshot_path+stock_number+'.png')
																														driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
																														if driver.find_elements(:id, 'err_msg').size >= 1 then
																															driver.switch_to.window driver.window_handle
																															if driver.find_elements(:id, 'TB_closeWindowButton').size >= 1 then
																																driver.find_element(:id, 'TB_closeWindowButton').click
																																sleep 5
																																driver.find_element(:id, 'prc_save_button1').click
																																driver.find_element(:xpath, '//*[@id="form"]/div[1]/fieldset/ul/li[10]/a').click
																																driver.find_element(:id, 'editAnchor1').click
																																if driver.find_elements(:id, 'addAnchor1').size >= 1 then
																																	driver.find_element(:xpath, '//*[@id="addAnchor1"]').click
																																	#untilメソッドは文字通り「～するまで」を意味する
																																	wait.until {driver.find_element(:id, 'TB_iframeContent').displayed?}
																																	driver.switch_to.frame('TB_iframeContent')
																																	driver.find_element(:id, 'ss-02').send_key stock_number
																																	puts stock_number
																																	driver.find_element(:id, 'industryCd').submit
																																	driver.find_element(:id, '0').click
																																	driver.save_screenshot(screenshot_path+stock_number+'.png')
																																	driver.find_element(:xpath, '//*[@id="str-main-inner"]/table/tbody/tr/td/table/tbody/tr/td/form/div[3]/ul/li/a').click
																																end
																															end
																														end
																													end
																												end
																											end
																										end
																									end
																								end
																							end
																						end
																					end
																				end
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	  end
	end
rescue => e
  puts "何か問題が発生しました。"
  p e
end
sleep 10
