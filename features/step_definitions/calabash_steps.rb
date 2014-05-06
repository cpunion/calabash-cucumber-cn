# encoding: UTF-8

Given /^应用正在运行$/ do
  macro %Q|the app is running|
end

# -- Touch --#
Then /^我点按屏幕左(\d+)上(\d+)$/ do |x, y|
  macro %Q|I press on screen #{x} from the left and #{y} from the top|
end

Then /^我点按"([^\"]*)"$/ do |name|
  macro %Q|I press "#{name}"|
end

Then /^我点按"([^\"]*)"右(\d+)%下(\d+)$/ do |name,x,y|
  macro %Q|I press #{x}% right and #{y}% down from "#{name}"|
end

Then /^我点按第(\d+)个按钮$/ do |index|
  macro %Q|I press button number #{index}|
end

Then /^我点按"([^\"]*)"按钮$/ do |name|
  macro %Q|I press the "#{name}" button|
end

Then /^我点按第(\d+)个文本框$/ do |index|
  macro %Q|I press text field number #{index}|
end


Then /^我点按文本框"([^\"]*)"$/ do |name|
  macro %Q|I press the "#{name}" text field|
end

#Note in tables views: this means visible cell index!
Then /^我点按第(\d+)个列表项$/ do |index|
  macro %Q|I press list item number #{index}|
end

Then /^我点按列表项"([^\"]*)"$/ do |cell_name|
  macro %Q|I press list item "#{cell_name}"|
end

Then /^我切换开关$/ do
  macro %Q|I toggle the switch|
end

Then /^我切换"([^\"]*)"开关$/ do |name|
  macro %Q|I toggle the "#{name}" switch|
end

Then /^我点按用户的位置$/ do
  macro %Q|I touch the user location|
end

Then /^我点按(?:完成|搜索|done|search)$/ do
  macro %Q|I touch done|
end


## -- Entering text -- ##

Then /^我在"([^\"]*)"中输入"([^\"]*)"$/ do |field_name, text_to_type|
  macro %Q|I enter "#{text_to_type}" into the "#{field_name}" field|
end

Then /^我在文本框"([^\"]*)"中输入"([^\"]*)"$/ do |field_name, text_to_type|
  macro %Q|I enter "#{text_to_type}" into the "#{field_name}" text field|
end

# alias
Then /^我在"([^\"]*)"中填写"([^\"]*)"$/ do |text_field, text_to_type|
  macro %Q|I fill in "#{text_field}" with "#{text_to_type}"|
end

Then /^我用软键盘在文本框"([^\"]*)"中输入"([^\"]*)"$/ do |field_name, text_to_type|
  macro %Q|I use the native keyboard to enter "#{text_to_type}" into the "#{field_name}" text field|
end

Then /^我在文本框中填写:$/ do |table|
  step %Q|I fill in text fields as follows:|, table
end

Then /^我在第(\d+)个文本框中输入"([^\"]*)"$/ do |index, text|
  macro %Q|I enter "#{text}" into text field number #{index}|
end

Then /^我用软键盘在第(\d+)个文本框中输入"([^\"]*)"$/ do |index, text_to_type|
  macro %Q|I use the native keyboard to enter "#{text_to_type}" into text field number #{index}|
end

When /^我清除"([^\"]*)"$/ do |name|
  macro %Q|I clear "#{name}"|
end

Then /^我清除第(\d+)个文本框$/ do |index|
  macro %Q|I clear text field number #{index}|
end

# -- See -- #
Then /^我等到看见"([^\"]*)"$/ do |expected_mark|
  macro %Q|I wait to see "#{expected_mark}"|
end

Then /^我等到看不见"([^\"]*)"$/ do |expected_mark|
  macro %Q|I wait until I don't see "#{expected_mark}|
end

Then /^我等到"([^\"]*)"出现$/ do |name|
  macro %Q|I wait for "#{name}" to appear|
end

Then /^我等到"([^\"]*)"按钮出现$/ do |name|
  macro %Q|I wait for the "#{name}" button to appear|
end

Then /^我等到看见标题是"([^\"]*)"的导航条$/ do |expected_mark|
  macro %Q|I wait to see a navigation bar titled "#{expected_mark}"|
end

Then /^我等待"([^\"]*)"文本框$/ do |placeholder_or_view_mark|
  macro %Q|I wait for the "#{placeholder_or_view_mark}" text field|
end

Then /^我等待(\d+)个文本框$/ do |count|
  macro %Q|I wait for #{count} text field|
end


Then /^我等$/ do
  macro %Q|I wait|
end

Then /^我等啊等$/ do
 macro %Q|I wait and wait|
end

Then /^我等啊等啊等...$/ do
  macro %Q|I wait and wait and wait...|
end

When /^我等([\d\.]+)秒$/ do |num_seconds|
  macro %Q|I wait for #{num_seconds} seconds|
end


Then /^我后退$/ do
  macro %Q|I go back|
end

Then /^(?:我)?截屏$/ do
  macro %Q|I take screenshot|
end

DIRs = {"左" => "left", "右" => "right", "上" => "up", "下" => "down"}

Then /^我向(左|右|上|下)划$/ do |dir|
  dir = DIRs[dir]
  macro %Q|I swipe #{dir}|
end

Then /^我向(左|右|上|下)划第(\d+)个$/ do |dir, index|
  dir = DIRs[dir]
  macro %Q|I swipe #{dir} on number #{index}|
end

Then /^我向(左|右|上|下)划第(\d+)个的x:(\d+),y:(\d+)$/ do |dir, index, x, y|
  dir = DIRs[dir]
  macro %Q|I swipe #{dir} on number #{index} at x #{x} and y #{y}|
end

Then /^我在"([^\"]*)"上向(左|右|上|下)划$/ do |mark, dir|
  dir = DIRs[dir]
  macro %Q|I swipe #{dir} on "#{mark}"|
end

Then /^我划动第(\d+)个格子$/ do |index|
  macro %Q|I swipe on cell number #{index}|
end


##pinch##
Then /^我双指(放大|缩小)$/ do |in_out|
  in_out = in_out == "放大" and "in" or "out"
  macro %Q|I pinch to zoom #{in_out}|
end

Then /^我在"([^\"]*)"上双指(放大|缩小)$/ do |name, in_out|
  in_out = in_out == "放大" and "in" or "out"
  macro %Q|I pinch to zoom #{in_out} on "#{name}"|
end

#   Note "up/left/right" seems to be missing on the web base
Then /^我向(上|下|左|右)滚动$/ do |dir|
  dir = DIRs[dir]
  macro %Q|I scroll #{dir}|
end

Then /^我在"([^\"]*)"上向(上|下|左|右)滚动$/ do |name, dir|
  dir = DIRs[dir]
  macro %Q|I scroll #{dir} on "#{name}"|
end



### Playback ###
Then /^我回放记录"([^\"]*)"$/ do |filename|
  macro %Q|I playback recording "#{filename}"|
end

Then /^我在"([^\"]*)"上回放记录"([^\"]*)"$/ do |name, filename|
  macro %Q|I playback recording "#{filename}" on "#{name}"|
end

Then /^我在"([^\"]*)"上回放记录"([^\"]*)"，偏移(\d+),(\d+)$/ do |name, filename, x, y|
  macro %Q|I playback recording "#{filename}" on "#{name}" with offset #{x},#{y}|
end

Then /^我反向回放记录"([^\"]*)"$/ do |filename|
  macro %Q|I reverse playback recording "#{filename}"|
end

Then /^我在"([^\"]*)"上反向回放记录"([^\"]*)"$/ do |name, filename|
  macro %Q|I reverse playback recording "#{filename}" on "#{name}"|
end

Then /^我在"([^\"]*)"上反向回放记录"([^\"]*)"，偏移(\d+),(\d+)$/ do |name, filename, x, y|
  macro %Q|I reverse playback recording "#{filename}" on "#{name}" with offset #{x},#{y}|
end


### Device orientation ###
Then /^我向(左|右)旋转设备$/ do |dir|
  dir = DIRs[dir]
  macro %Q|I rotate device #{dir}|
end

Then /^我把应用切到后台(\d+)秒$/ do |secs|
  macro %Q|I send app to background for #{secs} seconds|
end

### Assertions ###
Then /^我应该看到"([^\"]*)"$/ do |expected_mark|
  macro %Q|I should see "#{expected_mark}"|
end

Then /^我应该看不到"([^\"]*)"$/ do |expected_mark|
  macro %Q|I should not see "#{expected_mark}"|
end

Then /^我应该看到"([^\"]*)"按钮$/ do |expected_mark|
  macro %Q|I should see a "#{expected_mark}" button|
end
Then /^我应该看不到"([^\"]*)"按钮$/ do |expected_mark|
  macro %Q|I should not see a "#{expected_mark}" button|
end

Then /^我看不到文字"([^\"]*)"$/ do |text|
  macro %Q|I don't see the text "#{text}"|
end
Then /^我看不到"([^\"]*)"$/ do |text|
  macro %Q|I don't see the "#{text}"|
end

Then /^我看到文字"([^\"]*)"$/ do |text|
  macro %Q|I see the text "#{text}"|
end
Then /^我看到"([^\"]*)"$/ do |text|
  macro %Q|I see the "#{text}"|
end

Then /^我应该看到以"([^\"]*)"开头的文字$/ do |text|
  macro %Q|I should see text starting with "#{text}"|
end

Then /^我应该看到包含"([^\"]*)"的文字$/ do |text|
  macro %Q|I should see text containing "#{text}"|
end

Then /^我应该看到以"([^\"]*)"结尾的文字$/ do |text|
  macro %Q|I should see text ending with "#{text}"|
end

Then /^我看到(\d+)个文本框$/ do |count|
  macro %Q|I see #{count} text fields|
end

Then /^我应该看到"([^\"]*)"文本框$/ do |expected_mark|
  macro %Q|I should see a "#{expected_mark}" text field|
end

Then /^我应该看不到"([^\"]*)"文本框$/ do |expected_mark|
  macro %Q|I should not see a "#{expected_mark}" text field|
end


Then /^我应该看到地图$/ do
  macro %Q|I should see a map|
end

Then /^我应该看到用户的位置$/ do
  macro %Q|I should see the user location|
end

### Date Picker ###

# time_str can be in any format that Time can parse
Then(/^我修改日期选择器的时间为"([^"]*)"$/) do |time_str|
  macro %Q|I change the date picker time to "#{time_str}"|
end

# date_str can be in any format that Date can parse
Then(/^我修改日期选择器的日期为"([^"]*)"$/) do |time_str|
  macro %Q|I change the date picker date to "#{date_str}"|
end

# date_str can be in any format that Date can parse
Then(/^我修改日期选择器日期为"([^"]*)"，时间为"([^"]*)"$/) do |date_str, time_str|
  macro %Q|I change the date picker time to "#{time_str}"|
  macro %Q|I change the date picker date to "#{date_str}"|
end
