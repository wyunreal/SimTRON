<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="yes" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="yes" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="40xx" urn="urn:adsk.eagle:library:80">
<description>&lt;b&gt;CMOS Logic Devices, 4000 Series&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola &lt;i&gt;CMOS LOGIC DATA&lt;/i&gt;; book, 02/88, DL131 REV 1
&lt;li&gt;http://www.elexp.com
&lt;li&gt;http://www.intersil.com
&lt;li&gt;http://www.ls3c.com.tw/product/1/COMOS.html
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16" urn="urn:adsk.eagle:footprint:721/1" library_version="2">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16" urn="urn:adsk.eagle:footprint:722/1" library_version="2">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-4.064" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-2.032" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="DIL16" urn="urn:adsk.eagle:package:822/2" type="model" library_version="2">
<description>Dual In Line Package</description>
<packageinstances>
<packageinstance name="DIL16"/>
</packageinstances>
</package3d>
<package3d name="SO16" urn="urn:adsk.eagle:package:821/2" type="model" library_version="2">
<description>Small Outline package 150 mil</description>
<packageinstances>
<packageinstance name="SO16"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="4051" urn="urn:adsk.eagle:symbol:763/1" library_version="2">
<wire x1="-7.62" y1="-17.78" x2="7.62" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="7.62" y2="17.78" width="0.4064" layer="94"/>
<wire x1="7.62" y1="17.78" x2="-7.62" y2="17.78" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="17.78" x2="-7.62" y2="-17.78" width="0.4064" layer="94"/>
<text x="-7.62" y="18.415" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="X4" x="-12.7" y="5.08" length="middle"/>
<pin name="X6" x="-12.7" y="0" length="middle"/>
<pin name="X" x="12.7" y="15.24" length="middle" rot="R180"/>
<pin name="X7" x="-12.7" y="-2.54" length="middle"/>
<pin name="X5" x="-12.7" y="2.54" length="middle"/>
<pin name="INH" x="-12.7" y="-7.62" length="middle" direction="in"/>
<pin name="C" x="-12.7" y="-15.24" length="middle" direction="in"/>
<pin name="B" x="-12.7" y="-12.7" length="middle" direction="in"/>
<pin name="A" x="-12.7" y="-10.16" length="middle" direction="in"/>
<pin name="X3" x="-12.7" y="7.62" length="middle"/>
<pin name="X0" x="-12.7" y="15.24" length="middle"/>
<pin name="X1" x="-12.7" y="12.7" length="middle"/>
<pin name="X2" x="-12.7" y="10.16" length="middle"/>
</symbol>
<symbol name="PWR+VEE" urn="urn:adsk.eagle:symbol:764/1" library_version="2">
<text x="-2.54" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.175" y="-5.842" size="1.27" layer="95" rot="R90">VEE</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="VEE" x="-5.08" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="4051" urn="urn:adsk.eagle:component:857/3" prefix="IC" library_version="2">
<description>8-channel &lt;b&gt;ANALOG MULTIPLEXER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="4051" x="20.32" y="0"/>
<gate name="P" symbol="PWR+VEE" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="A" pad="11"/>
<connect gate="A" pin="B" pad="10"/>
<connect gate="A" pin="C" pad="9"/>
<connect gate="A" pin="INH" pad="6"/>
<connect gate="A" pin="X" pad="3"/>
<connect gate="A" pin="X0" pad="13"/>
<connect gate="A" pin="X1" pad="14"/>
<connect gate="A" pin="X2" pad="15"/>
<connect gate="A" pin="X3" pad="12"/>
<connect gate="A" pin="X4" pad="1"/>
<connect gate="A" pin="X5" pad="5"/>
<connect gate="A" pin="X6" pad="2"/>
<connect gate="A" pin="X7" pad="4"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
<connect gate="P" pin="VEE" pad="7"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:822/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="A" pad="11"/>
<connect gate="A" pin="B" pad="10"/>
<connect gate="A" pin="C" pad="9"/>
<connect gate="A" pin="INH" pad="6"/>
<connect gate="A" pin="X" pad="3"/>
<connect gate="A" pin="X0" pad="13"/>
<connect gate="A" pin="X1" pad="14"/>
<connect gate="A" pin="X2" pad="15"/>
<connect gate="A" pin="X3" pad="12"/>
<connect gate="A" pin="X4" pad="1"/>
<connect gate="A" pin="X5" pad="5"/>
<connect gate="A" pin="X6" pad="2"/>
<connect gate="A" pin="X7" pad="4"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
<connect gate="P" pin="VEE" pad="7"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:821/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Arduino-clone">
<description>Arduino Clone pinheaders
By cl@xganon.com
http://www.xganon.com</description>
<packages>
<package name="PRO-MINI-2">
<pad name="TX0" x="-8.89" y="12.7" drill="0.8" shape="long"/>
<pad name="RX1" x="-8.89" y="10.16" drill="0.8" shape="long"/>
<pad name="RST1" x="-8.89" y="7.62" drill="0.8" shape="long"/>
<pad name="GND1" x="-8.89" y="5.08" drill="0.8" shape="long"/>
<pad name="D2" x="-8.89" y="2.54" drill="0.8" shape="long"/>
<pad name="D3" x="-8.89" y="0" drill="0.8" shape="long"/>
<pad name="D4" x="-8.89" y="-2.54" drill="0.8" shape="long"/>
<pad name="D5" x="-8.89" y="-5.08" drill="0.8" shape="long"/>
<pad name="D6" x="-8.89" y="-7.62" drill="0.8" shape="long"/>
<pad name="D7" x="-8.89" y="-10.16" drill="0.8" shape="long"/>
<pad name="D8" x="-8.89" y="-12.7" drill="0.8" shape="long"/>
<pad name="D9" x="-8.89" y="-15.24" drill="0.8" shape="long"/>
<pad name="RAW" x="6.35" y="12.7" drill="0.8" shape="long"/>
<pad name="GND" x="6.35" y="10.16" drill="0.8" shape="long"/>
<pad name="RST" x="6.35" y="7.62" drill="0.8" shape="long"/>
<pad name="VCC" x="6.35" y="5.08" drill="0.8" shape="long"/>
<pad name="A0" x="6.35" y="2.54" drill="0.8" shape="long"/>
<pad name="A1" x="6.35" y="0" drill="0.8" shape="long"/>
<pad name="A2" x="6.35" y="-2.54" drill="0.8" shape="long"/>
<pad name="A3" x="6.35" y="-5.08" drill="0.8" shape="long"/>
<pad name="D13" x="6.35" y="-7.62" drill="0.8" shape="long"/>
<pad name="D12" x="6.35" y="-10.16" drill="0.8" shape="long"/>
<pad name="D11" x="6.35" y="-12.7" drill="0.8" shape="long"/>
<pad name="D10" x="6.35" y="-15.24" drill="0.8" shape="long"/>
<pad name="GND2" x="-7.62" y="15.24" drill="0.8" shape="long" rot="R90"/>
<pad name="GND3" x="-5.08" y="15.24" drill="0.8" shape="long" rot="R90"/>
<pad name="VCC1" x="-2.54" y="15.24" drill="0.8" shape="long" rot="R90"/>
<pad name="RX1-1" x="0" y="15.24" drill="0.8" shape="long" rot="R90"/>
<pad name="TX0-1" x="2.54" y="15.24" drill="0.8" shape="long" rot="R90"/>
<pad name="DTR" x="5.08" y="15.24" drill="0.8" shape="long" rot="R90"/>
<pad name="A6" x="2.54" y="-8.89" drill="0.8" shape="long" rot="R180"/>
<pad name="A7" x="2.54" y="-6.35" drill="0.8" shape="long" rot="R180"/>
<pad name="A4" x="2.54" y="1.27" drill="0.8" shape="long" rot="R180"/>
<pad name="A5" x="2.54" y="3.81" drill="0.8" shape="long" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="PRO-MINI-2">
<pin name="GND3" x="-7.62" y="25.4" visible="pin" length="middle" rot="R270"/>
<pin name="GND4" x="-5.08" y="25.4" visible="pin" length="middle" rot="R270"/>
<pin name="VCC1" x="-2.54" y="25.4" visible="pin" length="middle" rot="R270"/>
<pin name="RX1-1" x="0" y="25.4" visible="pin" length="middle" rot="R270"/>
<pin name="TX0-1" x="2.54" y="25.4" visible="pin" length="middle" rot="R270"/>
<pin name="DTR" x="5.08" y="25.4" visible="pin" length="middle" rot="R270"/>
<pin name="TX0" x="-22.86" y="12.7" visible="pin" length="middle"/>
<pin name="RX1" x="-22.86" y="10.16" visible="pin" length="middle"/>
<pin name="RST1" x="-22.86" y="7.62" visible="pin" length="middle"/>
<pin name="GND2" x="-22.86" y="5.08" visible="pin" length="middle"/>
<pin name="D2" x="-22.86" y="2.54" visible="pin" length="middle"/>
<pin name="D3" x="-22.86" y="0" visible="pin" length="middle"/>
<pin name="D4" x="-22.86" y="-2.54" visible="pin" length="middle"/>
<pin name="D5" x="-22.86" y="-5.08" visible="pin" length="middle"/>
<pin name="D6" x="-22.86" y="-7.62" visible="pin" length="middle"/>
<pin name="D7" x="-22.86" y="-10.16" visible="pin" length="middle"/>
<pin name="D8" x="-22.86" y="-12.7" visible="pin" length="middle"/>
<pin name="D9" x="-22.86" y="-15.24" visible="pin" length="middle"/>
<pin name="RAW" x="20.32" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="GND" x="20.32" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="RST" x="20.32" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="VCC" x="20.32" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="A3" x="20.32" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="A2" x="20.32" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="A1" x="20.32" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="A0" x="20.32" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="D13" x="20.32" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="D12" x="20.32" y="-10.16" visible="pin" length="middle" rot="R180"/>
<pin name="D11" x="20.32" y="-12.7" visible="pin" length="middle" rot="R180"/>
<pin name="D10" x="20.32" y="-15.24" visible="pin" length="middle" rot="R180"/>
<pin name="A7" x="2.54" y="-2.54" visible="pin" length="point" rot="R180"/>
<pin name="A6" x="2.54" y="-5.08" visible="pin" length="point" rot="R180"/>
<pin name="A5" x="2.54" y="5.08" visible="pin" length="point" rot="R180"/>
<pin name="A4" x="2.54" y="2.54" visible="pin" length="point" rot="R180"/>
<wire x1="-17.78" y1="20.32" x2="15.24" y2="20.32" width="0.254" layer="94"/>
<wire x1="15.24" y1="20.32" x2="15.24" y2="-20.32" width="0.254" layer="94"/>
<wire x1="15.24" y1="-20.32" x2="-17.78" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-20.32" x2="-17.78" y2="20.32" width="0.254" layer="94"/>
<text x="-5.08" y="-12.7" size="1.778" layer="97" rot="R90">Arduino Pro Mini</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PRO-MINI-2">
<description>Arduino Pro Mini Layout 2
Sparkfun.com</description>
<gates>
<gate name="G$1" symbol="PRO-MINI-2" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="PRO-MINI-2">
<connects>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="D10" pad="D10"/>
<connect gate="G$1" pin="D11" pad="D11"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D3" pad="D3"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D5" pad="D5"/>
<connect gate="G$1" pin="D6" pad="D6"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="D9" pad="D9"/>
<connect gate="G$1" pin="DTR" pad="DTR"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND2" pad="GND1"/>
<connect gate="G$1" pin="GND3" pad="GND2"/>
<connect gate="G$1" pin="GND4" pad="GND3"/>
<connect gate="G$1" pin="RAW" pad="RAW"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="RST1" pad="RST1"/>
<connect gate="G$1" pin="RX1" pad="RX1"/>
<connect gate="G$1" pin="RX1-1" pad="RX1-1"/>
<connect gate="G$1" pin="TX0" pad="TX0"/>
<connect gate="G$1" pin="TX0-1" pad="TX0-1"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
<connect gate="G$1" pin="VCC1" pad="VCC1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lsta" urn="urn:adsk.eagle:library:161">
<description>&lt;b&gt;Female Headers etc.&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
FE = female&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FE07" urn="urn:adsk.eagle:footprint:8137/1" library_version="1">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<wire x1="-8.89" y1="1.27" x2="-8.89" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-1.27" x2="-6.604" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-1.27" x2="-6.35" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.016" x2="-6.096" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-1.27" x2="-4.064" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.27" x2="-3.81" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.016" x2="-3.556" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.27" x2="-1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.27" x2="-1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.016" x2="-1.016" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.27" x2="1.016" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-1.27" x2="1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.27" x2="8.89" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.27" x2="1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.016" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.27" x2="-1.016" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="1.27" x2="-1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="-1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.27" x2="-3.556" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.27" x2="-3.81" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.016" x2="-4.064" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.27" x2="-6.096" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.27" x2="-6.35" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.016" x2="-6.604" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="1.27" x2="-8.89" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="0.762" x2="-7.874" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-7.874" y1="0.508" x2="-8.128" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.508" x2="-8.128" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.508" x2="-7.874" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-7.874" y1="-0.508" x2="-7.874" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-7.874" y1="-0.762" x2="-7.366" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-0.762" x2="-7.366" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-0.508" x2="-7.112" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-0.508" x2="-7.112" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="0.508" x2="-7.366" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="0.508" x2="-7.366" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="0.762" x2="-7.874" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="0.762" x2="-5.334" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="0.508" x2="-5.588" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-5.588" y1="0.508" x2="-5.588" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.588" y1="-0.508" x2="-5.334" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.508" x2="-5.334" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.762" x2="-4.826" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.762" x2="-4.826" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.508" x2="-4.572" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.572" y1="-0.508" x2="-4.572" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-4.572" y1="0.508" x2="-4.826" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="0.508" x2="-4.826" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="0.762" x2="-5.334" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="0.762" x2="-2.794" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="0.508" x2="-3.048" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="0.508" x2="-3.048" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-0.508" x2="-2.794" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.508" x2="-2.794" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.762" x2="-2.286" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.508" x2="-2.032" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="-0.508" x2="-2.032" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="0.508" x2="-2.286" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="0.508" x2="-2.286" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="0.762" x2="-2.794" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.508" x2="-0.508" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.508" x2="-0.508" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.508" x2="-0.254" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.508" x2="-0.254" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.762" x2="0.254" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.762" x2="0.254" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.508" x2="0.508" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.508" x2="0.508" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.508" x2="0.254" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.254" y1="0.508" x2="0.254" y2="0.762" width="0.1524" layer="51"/>
<wire x1="0.254" y1="0.762" x2="-0.254" y2="0.762" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0.762" x2="2.286" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0.508" x2="2.032" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.032" y1="0.508" x2="2.032" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.032" y1="-0.508" x2="2.286" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.508" x2="2.286" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.762" x2="2.794" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.762" x2="2.794" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.508" x2="3.048" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-0.508" x2="3.048" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.048" y1="0.508" x2="2.794" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.794" y1="0.508" x2="2.794" y2="0.762" width="0.1524" layer="51"/>
<wire x1="2.794" y1="0.762" x2="2.286" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-1.27" x2="3.556" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.556" y1="-1.27" x2="3.81" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.016" x2="4.064" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.27" x2="6.096" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-1.27" x2="6.35" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.016" x2="6.604" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.604" y1="1.27" x2="6.35" y2="1.016" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.016" x2="6.096" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.096" y1="1.27" x2="4.064" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.27" x2="3.81" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.016" x2="3.556" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.556" y1="1.27" x2="1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="0.762" x2="4.826" y2="0.508" width="0.1524" layer="51"/>
<wire x1="4.826" y1="0.508" x2="4.572" y2="0.508" width="0.1524" layer="51"/>
<wire x1="4.572" y1="0.508" x2="4.572" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.572" y1="-0.508" x2="4.826" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.508" x2="4.826" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.762" x2="5.334" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.762" x2="5.334" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.508" x2="5.588" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="5.588" y1="-0.508" x2="5.588" y2="0.508" width="0.1524" layer="51"/>
<wire x1="5.588" y1="0.508" x2="5.334" y2="0.508" width="0.1524" layer="51"/>
<wire x1="5.334" y1="0.508" x2="5.334" y2="0.762" width="0.1524" layer="51"/>
<wire x1="5.334" y1="0.762" x2="4.826" y2="0.762" width="0.1524" layer="51"/>
<wire x1="7.366" y1="0.762" x2="7.366" y2="0.508" width="0.1524" layer="51"/>
<wire x1="7.366" y1="0.508" x2="7.112" y2="0.508" width="0.1524" layer="51"/>
<wire x1="7.112" y1="0.508" x2="7.112" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-0.508" x2="7.366" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="7.366" y1="-0.508" x2="7.366" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="7.366" y1="-0.762" x2="7.874" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="7.874" y1="-0.762" x2="7.874" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="7.874" y1="-0.508" x2="8.128" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.508" x2="8.128" y2="0.508" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.508" x2="7.874" y2="0.508" width="0.1524" layer="51"/>
<wire x1="7.874" y1="0.508" x2="7.874" y2="0.762" width="0.1524" layer="51"/>
<wire x1="7.874" y1="0.762" x2="7.366" y2="0.762" width="0.1524" layer="51"/>
<wire x1="8.89" y1="1.27" x2="6.604" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.604" y1="-1.27" x2="8.89" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-8.128" y="1.524" size="1.27" layer="21" ratio="10">1</text>
<text x="-7.62" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="7.112" y="1.524" size="1.27" layer="21" ratio="10">7</text>
<rectangle x1="-7.747" y1="0.254" x2="-7.493" y2="0.762" layer="51"/>
<rectangle x1="-7.747" y1="-0.762" x2="-7.493" y2="-0.254" layer="51"/>
<rectangle x1="-5.207" y1="0.254" x2="-4.953" y2="0.762" layer="51"/>
<rectangle x1="-5.207" y1="-0.762" x2="-4.953" y2="-0.254" layer="51"/>
<rectangle x1="-2.667" y1="0.254" x2="-2.413" y2="0.762" layer="51"/>
<rectangle x1="-2.667" y1="-0.762" x2="-2.413" y2="-0.254" layer="51"/>
<rectangle x1="-0.127" y1="0.254" x2="0.127" y2="0.762" layer="51"/>
<rectangle x1="-0.127" y1="-0.762" x2="0.127" y2="-0.254" layer="51"/>
<rectangle x1="2.413" y1="0.254" x2="2.667" y2="0.762" layer="51"/>
<rectangle x1="2.413" y1="-0.762" x2="2.667" y2="-0.254" layer="51"/>
<rectangle x1="4.953" y1="0.254" x2="5.207" y2="0.762" layer="51"/>
<rectangle x1="4.953" y1="-0.762" x2="5.207" y2="-0.254" layer="51"/>
<rectangle x1="7.493" y1="0.254" x2="7.747" y2="0.762" layer="51"/>
<rectangle x1="7.493" y1="-0.762" x2="7.747" y2="-0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="FE07" urn="urn:adsk.eagle:package:8223/1" type="box" library_version="1">
<description>FEMALE HEADER</description>
<packageinstances>
<packageinstance name="FE07"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="FE07-1" urn="urn:adsk.eagle:symbol:8136/1" library_version="1">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-6.985" x2="1.905" y2="-8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.27" y1="10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="10.16" x2="3.81" y2="10.16" width="0.4064" layer="94"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="8.255" x2="1.905" y2="6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="10.922" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FE07-1" urn="urn:adsk.eagle:component:8261/1" prefix="SV" uservalue="yes" library_version="1">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FE07-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FE07">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8223/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex" urn="urn:adsk.eagle:library:165">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="22-23-2021" library_version="2">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 2 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232021_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<wire x1="-2.54" y1="3.175" x2="2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="3.175" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="-2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<text x="-2.54" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV" library_version="2">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M" library_version="2">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2021" prefix="X" library_version="2">
<description>.100" (2.54mm) Center Header - 2 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2021">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2021" constant="no"/>
<attribute name="OC_FARNELL" value="1462926" constant="no"/>
<attribute name="OC_NEWARK" value="25C3832" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="RXMUX" library="40xx" library_urn="urn:adsk.eagle:library:80" deviceset="4051" device="N" package3d_urn="urn:adsk.eagle:package:822/2"/>
<part name="TXMUX" library="40xx" library_urn="urn:adsk.eagle:library:80" deviceset="4051" device="N" package3d_urn="urn:adsk.eagle:package:822/2"/>
<part name="U$1" library="Arduino-clone" deviceset="PRO-MINI-2" device=""/>
<part name="SV1" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE07-1" device="" package3d_urn="urn:adsk.eagle:package:8223/1"/>
<part name="SV2" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE07-1" device="" package3d_urn="urn:adsk.eagle:package:8223/1"/>
<part name="SV3" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE07-1" device="" package3d_urn="urn:adsk.eagle:package:8223/1"/>
<part name="SV4" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE07-1" device="" package3d_urn="urn:adsk.eagle:package:8223/1"/>
<part name="SV5" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE07-1" device="" package3d_urn="urn:adsk.eagle:package:8223/1"/>
<part name="SV6" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE07-1" device="" package3d_urn="urn:adsk.eagle:package:8223/1"/>
<part name="SV7" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE07-1" device="" package3d_urn="urn:adsk.eagle:package:8223/1"/>
<part name="SV8" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE07-1" device="" package3d_urn="urn:adsk.eagle:package:8223/1"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="GND11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="X1" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2021" device="">
<attribute name="SPICEPREFIX" value="X"/>
</part>
<part name="GND13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="RXMUX" gate="A" x="96.52" y="68.58"/>
<instance part="TXMUX" gate="A" x="152.4" y="68.58"/>
<instance part="U$1" gate="G$1" x="22.86" y="68.58"/>
<instance part="SV1" gate="G$1" x="-15.24" y="12.7"/>
<instance part="SV2" gate="G$1" x="7.62" y="12.7"/>
<instance part="SV3" gate="G$1" x="30.48" y="12.7"/>
<instance part="SV4" gate="G$1" x="53.34" y="12.7"/>
<instance part="SV5" gate="G$1" x="76.2" y="12.7"/>
<instance part="SV6" gate="G$1" x="99.06" y="12.7"/>
<instance part="SV7" gate="G$1" x="121.92" y="12.7"/>
<instance part="SV8" gate="G$1" x="144.78" y="12.7"/>
<instance part="GND1" gate="1" x="0" y="-7.62"/>
<instance part="GND2" gate="1" x="22.86" y="-7.62"/>
<instance part="GND3" gate="1" x="45.72" y="-7.62"/>
<instance part="GND4" gate="1" x="68.58" y="-7.62"/>
<instance part="GND5" gate="1" x="91.44" y="-7.62"/>
<instance part="GND6" gate="1" x="114.3" y="-7.62"/>
<instance part="GND7" gate="1" x="137.16" y="-7.62"/>
<instance part="GND8" gate="1" x="162.56" y="-7.62"/>
<instance part="GND9" gate="1" x="-20.32" y="71.12"/>
<instance part="GND10" gate="1" x="58.42" y="76.2"/>
<instance part="P+1" gate="VCC" x="-15.24" y="0"/>
<instance part="P+2" gate="VCC" x="7.62" y="0"/>
<instance part="P+3" gate="VCC" x="30.48" y="0"/>
<instance part="P+4" gate="VCC" x="53.34" y="0"/>
<instance part="P+5" gate="VCC" x="76.2" y="0"/>
<instance part="P+6" gate="VCC" x="99.06" y="0"/>
<instance part="P+7" gate="VCC" x="121.92" y="0"/>
<instance part="P+8" gate="VCC" x="144.78" y="0"/>
<instance part="P+9" gate="VCC" x="48.26" y="91.44"/>
<instance part="GND11" gate="1" x="76.2" y="58.42"/>
<instance part="GND12" gate="1" x="132.08" y="58.42"/>
<instance part="X1" gate="-1" x="-17.78" y="93.98"/>
<instance part="X1" gate="-2" x="-17.78" y="91.44"/>
<instance part="GND13" gate="1" x="-20.32" y="88.9"/>
<instance part="P+10" gate="VCC" x="-20.32" y="96.52"/>
</instances>
<busses>
<bus name="ADDR[0..2]">
<segment>
<wire x1="50.8" y1="45.72" x2="78.74" y2="45.72" width="0.762" layer="92"/>
<label x="55.88" y="48.26" size="1.778" layer="95"/>
<wire x1="78.74" y1="45.72" x2="134.62" y2="45.72" width="0.762" layer="92"/>
<wire x1="50.8" y1="45.72" x2="50.8" y2="68.58" width="0.762" layer="92"/>
<wire x1="78.74" y1="45.72" x2="78.74" y2="58.42" width="0.762" layer="92"/>
<wire x1="134.62" y1="45.72" x2="134.62" y2="58.42" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="ENABLE[0..7]">
<segment>
<wire x1="-12.7" y1="71.12" x2="-12.7" y2="40.64" width="0.762" layer="92"/>
<wire x1="-12.7" y1="40.64" x2="152.4" y2="40.64" width="0.762" layer="92"/>
<label x="-10.16" y="43.18" size="1.778" layer="95"/>
</segment>
</bus>
<bus name="TX[0..7]">
<segment>
<wire x1="-12.7" y1="33.02" x2="127" y2="33.02" width="0.762" layer="92"/>
<wire x1="127" y1="33.02" x2="127" y2="83.82" width="0.762" layer="92"/>
<wire x1="127" y1="33.02" x2="160.02" y2="33.02" width="0.762" layer="92"/>
<label x="127" y="86.36" size="1.778" layer="95"/>
</segment>
</bus>
<bus name="RX[0..7]">
<segment>
<wire x1="-12.7" y1="35.56" x2="71.12" y2="35.56" width="0.762" layer="92"/>
<wire x1="71.12" y1="35.56" x2="160.02" y2="35.56" width="0.762" layer="92"/>
<wire x1="71.12" y1="83.82" x2="71.12" y2="35.56" width="0.762" layer="92"/>
<label x="68.58" y="86.36" size="1.778" layer="95"/>
</segment>
</bus>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND9" gate="1" pin="GND"/>
<pinref part="U$1" gate="G$1" pin="GND2"/>
<wire x1="-20.32" y1="73.66" x2="0" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="43.18" y1="78.74" x2="58.42" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV1" gate="G$1" pin="2"/>
<wire x1="-7.62" y1="7.62" x2="0" y2="7.62" width="0.1524" layer="91"/>
<wire x1="0" y1="7.62" x2="0" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="SV1" gate="G$1" pin="6"/>
<wire x1="-7.62" y1="17.78" x2="0" y2="17.78" width="0.1524" layer="91"/>
<wire x1="0" y1="17.78" x2="0" y2="7.62" width="0.1524" layer="91"/>
<junction x="0" y="7.62"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="2"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="15.24" y1="7.62" x2="22.86" y2="7.62" width="0.1524" layer="91"/>
<wire x1="22.86" y1="7.62" x2="22.86" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV2" gate="G$1" pin="6"/>
<wire x1="15.24" y1="17.78" x2="22.86" y2="17.78" width="0.1524" layer="91"/>
<wire x1="22.86" y1="17.78" x2="22.86" y2="7.62" width="0.1524" layer="91"/>
<junction x="22.86" y="7.62"/>
</segment>
<segment>
<pinref part="SV3" gate="G$1" pin="2"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="38.1" y1="7.62" x2="45.72" y2="7.62" width="0.1524" layer="91"/>
<wire x1="45.72" y1="7.62" x2="45.72" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="6"/>
<wire x1="38.1" y1="17.78" x2="45.72" y2="17.78" width="0.1524" layer="91"/>
<wire x1="45.72" y1="17.78" x2="45.72" y2="7.62" width="0.1524" layer="91"/>
<junction x="45.72" y="7.62"/>
</segment>
<segment>
<pinref part="SV4" gate="G$1" pin="2"/>
<wire x1="60.96" y1="7.62" x2="68.58" y2="7.62" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="68.58" y1="7.62" x2="68.58" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="6"/>
<wire x1="60.96" y1="17.78" x2="68.58" y2="17.78" width="0.1524" layer="91"/>
<wire x1="68.58" y1="17.78" x2="68.58" y2="7.62" width="0.1524" layer="91"/>
<junction x="68.58" y="7.62"/>
</segment>
<segment>
<pinref part="SV5" gate="G$1" pin="2"/>
<wire x1="83.82" y1="7.62" x2="91.44" y2="7.62" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="91.44" y1="7.62" x2="91.44" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV5" gate="G$1" pin="6"/>
<wire x1="83.82" y1="17.78" x2="91.44" y2="17.78" width="0.1524" layer="91"/>
<wire x1="91.44" y1="17.78" x2="91.44" y2="7.62" width="0.1524" layer="91"/>
<junction x="91.44" y="7.62"/>
</segment>
<segment>
<pinref part="SV6" gate="G$1" pin="2"/>
<wire x1="106.68" y1="7.62" x2="114.3" y2="7.62" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="114.3" y1="7.62" x2="114.3" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV6" gate="G$1" pin="6"/>
<wire x1="106.68" y1="17.78" x2="114.3" y2="17.78" width="0.1524" layer="91"/>
<wire x1="114.3" y1="17.78" x2="114.3" y2="7.62" width="0.1524" layer="91"/>
<junction x="114.3" y="7.62"/>
</segment>
<segment>
<pinref part="SV7" gate="G$1" pin="2"/>
<wire x1="129.54" y1="7.62" x2="137.16" y2="7.62" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="137.16" y1="7.62" x2="137.16" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV7" gate="G$1" pin="6"/>
<wire x1="129.54" y1="17.78" x2="137.16" y2="17.78" width="0.1524" layer="91"/>
<wire x1="137.16" y1="17.78" x2="137.16" y2="7.62" width="0.1524" layer="91"/>
<junction x="137.16" y="7.62"/>
</segment>
<segment>
<pinref part="SV8" gate="G$1" pin="2"/>
<wire x1="152.4" y1="7.62" x2="162.56" y2="7.62" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="162.56" y1="7.62" x2="162.56" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV8" gate="G$1" pin="6"/>
<wire x1="152.4" y1="17.78" x2="162.56" y2="17.78" width="0.1524" layer="91"/>
<wire x1="162.56" y1="17.78" x2="162.56" y2="7.62" width="0.1524" layer="91"/>
<junction x="162.56" y="7.62"/>
</segment>
<segment>
<pinref part="GND11" gate="1" pin="GND"/>
<pinref part="RXMUX" gate="A" pin="INH"/>
<wire x1="76.2" y1="60.96" x2="83.82" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TXMUX" gate="A" pin="INH"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="139.7" y1="60.96" x2="132.08" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X1" gate="-2" pin="S"/>
<pinref part="GND13" gate="1" pin="GND"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="7.62" y1="-2.54" x2="15.24" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV2" gate="G$1" pin="1"/>
<wire x1="15.24" y1="-2.54" x2="15.24" y2="5.08" width="0.1524" layer="91"/>
<pinref part="SV2" gate="G$1" pin="3"/>
<wire x1="15.24" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="91"/>
<wire x1="20.32" y1="10.16" x2="20.32" y2="5.08" width="0.1524" layer="91"/>
<wire x1="20.32" y1="5.08" x2="15.24" y2="5.08" width="0.1524" layer="91"/>
<junction x="15.24" y="5.08"/>
</segment>
<segment>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<wire x1="30.48" y1="-2.54" x2="38.1" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="1"/>
<wire x1="38.1" y1="-2.54" x2="38.1" y2="5.08" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="3"/>
<wire x1="38.1" y1="10.16" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
<wire x1="43.18" y1="10.16" x2="43.18" y2="5.08" width="0.1524" layer="91"/>
<wire x1="43.18" y1="5.08" x2="38.1" y2="5.08" width="0.1524" layer="91"/>
<junction x="38.1" y="5.08"/>
</segment>
<segment>
<pinref part="SV4" gate="G$1" pin="1"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<wire x1="60.96" y1="5.08" x2="60.96" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-2.54" x2="53.34" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="3"/>
<wire x1="60.96" y1="10.16" x2="66.04" y2="10.16" width="0.1524" layer="91"/>
<wire x1="66.04" y1="10.16" x2="66.04" y2="5.08" width="0.1524" layer="91"/>
<wire x1="66.04" y1="5.08" x2="60.96" y2="5.08" width="0.1524" layer="91"/>
<junction x="60.96" y="5.08"/>
</segment>
<segment>
<pinref part="SV5" gate="G$1" pin="1"/>
<wire x1="83.82" y1="5.08" x2="83.82" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<wire x1="83.82" y1="-2.54" x2="76.2" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV5" gate="G$1" pin="3"/>
<wire x1="83.82" y1="10.16" x2="88.9" y2="10.16" width="0.1524" layer="91"/>
<wire x1="88.9" y1="10.16" x2="88.9" y2="5.08" width="0.1524" layer="91"/>
<wire x1="88.9" y1="5.08" x2="83.82" y2="5.08" width="0.1524" layer="91"/>
<junction x="83.82" y="5.08"/>
</segment>
<segment>
<pinref part="SV6" gate="G$1" pin="1"/>
<wire x1="106.68" y1="5.08" x2="106.68" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
<wire x1="106.68" y1="-2.54" x2="99.06" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV6" gate="G$1" pin="3"/>
<wire x1="106.68" y1="10.16" x2="111.76" y2="10.16" width="0.1524" layer="91"/>
<wire x1="111.76" y1="10.16" x2="111.76" y2="5.08" width="0.1524" layer="91"/>
<wire x1="111.76" y1="5.08" x2="106.68" y2="5.08" width="0.1524" layer="91"/>
<junction x="106.68" y="5.08"/>
</segment>
<segment>
<pinref part="SV7" gate="G$1" pin="1"/>
<wire x1="129.54" y1="5.08" x2="129.54" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="P+7" gate="VCC" pin="VCC"/>
<wire x1="129.54" y1="-2.54" x2="121.92" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV7" gate="G$1" pin="3"/>
<wire x1="129.54" y1="10.16" x2="134.62" y2="10.16" width="0.1524" layer="91"/>
<wire x1="134.62" y1="10.16" x2="134.62" y2="5.08" width="0.1524" layer="91"/>
<wire x1="134.62" y1="5.08" x2="129.54" y2="5.08" width="0.1524" layer="91"/>
<junction x="129.54" y="5.08"/>
</segment>
<segment>
<pinref part="SV8" gate="G$1" pin="1"/>
<wire x1="152.4" y1="5.08" x2="152.4" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="P+8" gate="VCC" pin="VCC"/>
<wire x1="152.4" y1="-2.54" x2="144.78" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV8" gate="G$1" pin="3"/>
<wire x1="152.4" y1="10.16" x2="157.48" y2="10.16" width="0.1524" layer="91"/>
<wire x1="157.48" y1="10.16" x2="157.48" y2="5.08" width="0.1524" layer="91"/>
<wire x1="157.48" y1="5.08" x2="152.4" y2="5.08" width="0.1524" layer="91"/>
<junction x="152.4" y="5.08"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="RAW"/>
<pinref part="P+9" gate="VCC" pin="VCC"/>
<wire x1="43.18" y1="81.28" x2="48.26" y2="81.28" width="0.1524" layer="91"/>
<wire x1="48.26" y1="81.28" x2="48.26" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<pinref part="SV1" gate="G$1" pin="1"/>
<wire x1="-15.24" y1="-2.54" x2="-7.62" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="5.08" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="3"/>
<wire x1="-7.62" y1="10.16" x2="-2.54" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="10.16" x2="-2.54" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="5.08" x2="-7.62" y2="5.08" width="0.1524" layer="91"/>
<junction x="-7.62" y="5.08"/>
</segment>
<segment>
<pinref part="X1" gate="-1" pin="S"/>
<pinref part="P+10" gate="VCC" pin="VCC"/>
</segment>
</net>
<net name="ADDR0" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="A"/>
<wire x1="78.74" y1="58.42" x2="83.82" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TXMUX" gate="A" pin="A"/>
<wire x1="134.62" y1="58.42" x2="139.7" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A2"/>
<wire x1="50.8" y1="68.58" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR1" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="B"/>
<wire x1="78.74" y1="55.88" x2="83.82" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TXMUX" gate="A" pin="B"/>
<wire x1="134.62" y1="55.88" x2="139.7" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A1"/>
<wire x1="50.8" y1="66.04" x2="43.18" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADDR2" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="C"/>
<wire x1="78.74" y1="53.34" x2="83.82" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TXMUX" gate="A" pin="C"/>
<wire x1="134.62" y1="53.34" x2="139.7" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A0"/>
<wire x1="50.8" y1="63.5" x2="43.18" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ENABLE0" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D2"/>
<wire x1="-12.7" y1="71.12" x2="0" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV1" gate="G$1" pin="7"/>
<wire x1="-7.62" y1="20.32" x2="-7.62" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ENABLE1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D3"/>
<wire x1="-12.7" y1="68.58" x2="0" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="7"/>
<wire x1="15.24" y1="20.32" x2="15.24" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ENABLE2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D4"/>
<wire x1="-12.7" y1="66.04" x2="0" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="G$1" pin="7"/>
<wire x1="38.1" y1="20.32" x2="38.1" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ENABLE3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D5"/>
<wire x1="-12.7" y1="63.5" x2="0" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV4" gate="G$1" pin="7"/>
<wire x1="60.96" y1="20.32" x2="60.96" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ENABLE4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D6"/>
<wire x1="-12.7" y1="60.96" x2="0" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV5" gate="G$1" pin="7"/>
<wire x1="83.82" y1="20.32" x2="83.82" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ENABLE5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D7"/>
<wire x1="-12.7" y1="58.42" x2="0" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV6" gate="G$1" pin="7"/>
<wire x1="106.68" y1="20.32" x2="106.68" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ENABLE6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D8"/>
<wire x1="-12.7" y1="55.88" x2="0" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV7" gate="G$1" pin="7"/>
<wire x1="129.54" y1="20.32" x2="129.54" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ENABLE7" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D9"/>
<wire x1="-12.7" y1="53.34" x2="0" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV8" gate="G$1" pin="7"/>
<wire x1="152.4" y1="20.32" x2="152.4" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="X"/>
<wire x1="63.5" y1="101.6" x2="109.22" y2="101.6" width="0.1524" layer="91"/>
<wire x1="109.22" y1="101.6" x2="109.22" y2="83.82" width="0.1524" layer="91"/>
<wire x1="63.5" y1="101.6" x2="63.5" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="D11"/>
<wire x1="63.5" y1="55.88" x2="43.18" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="66.04" y1="53.34" x2="66.04" y2="99.06" width="0.1524" layer="91"/>
<pinref part="TXMUX" gate="A" pin="X"/>
<wire x1="66.04" y1="99.06" x2="165.1" y2="99.06" width="0.1524" layer="91"/>
<wire x1="165.1" y1="99.06" x2="165.1" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="D10"/>
<wire x1="43.18" y1="53.34" x2="66.04" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX0" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="X0"/>
<wire x1="83.82" y1="83.82" x2="71.12" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-5.08" y1="35.56" x2="-5.08" y2="15.24" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="5"/>
<wire x1="-5.08" y1="15.24" x2="-7.62" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX1" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="X1"/>
<wire x1="83.82" y1="81.28" x2="71.12" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="5"/>
<wire x1="17.78" y1="35.56" x2="17.78" y2="15.24" width="0.1524" layer="91"/>
<wire x1="17.78" y1="15.24" x2="15.24" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX2" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="X2"/>
<wire x1="83.82" y1="78.74" x2="71.12" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="G$1" pin="5"/>
<wire x1="40.64" y1="35.56" x2="40.64" y2="15.24" width="0.1524" layer="91"/>
<wire x1="40.64" y1="15.24" x2="38.1" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX3" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="X3"/>
<wire x1="83.82" y1="76.2" x2="71.12" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV4" gate="G$1" pin="5"/>
<wire x1="63.5" y1="35.56" x2="63.5" y2="15.24" width="0.1524" layer="91"/>
<wire x1="63.5" y1="15.24" x2="60.96" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX4" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="X4"/>
<wire x1="83.82" y1="73.66" x2="71.12" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV5" gate="G$1" pin="5"/>
<wire x1="86.36" y1="35.56" x2="86.36" y2="15.24" width="0.1524" layer="91"/>
<wire x1="86.36" y1="15.24" x2="83.82" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX5" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="X5"/>
<wire x1="83.82" y1="71.12" x2="71.12" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV6" gate="G$1" pin="5"/>
<wire x1="109.22" y1="35.56" x2="109.22" y2="15.24" width="0.1524" layer="91"/>
<wire x1="109.22" y1="15.24" x2="106.68" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX6" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="X6"/>
<wire x1="83.82" y1="68.58" x2="71.12" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV7" gate="G$1" pin="5"/>
<wire x1="132.08" y1="35.56" x2="132.08" y2="15.24" width="0.1524" layer="91"/>
<wire x1="132.08" y1="15.24" x2="129.54" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX7" class="0">
<segment>
<pinref part="RXMUX" gate="A" pin="X7"/>
<wire x1="83.82" y1="66.04" x2="71.12" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV8" gate="G$1" pin="5"/>
<wire x1="154.94" y1="35.56" x2="154.94" y2="15.24" width="0.1524" layer="91"/>
<wire x1="154.94" y1="15.24" x2="152.4" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX0" class="0">
<segment>
<pinref part="TXMUX" gate="A" pin="X0"/>
<wire x1="139.7" y1="83.82" x2="127" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV1" gate="G$1" pin="4"/>
<wire x1="-2.54" y1="33.02" x2="-2.54" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="12.7" x2="-7.62" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX1" class="0">
<segment>
<pinref part="TXMUX" gate="A" pin="X1"/>
<wire x1="139.7" y1="81.28" x2="127" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="4"/>
<wire x1="20.32" y1="33.02" x2="20.32" y2="12.7" width="0.1524" layer="91"/>
<wire x1="20.32" y1="12.7" x2="15.24" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX2" class="0">
<segment>
<pinref part="TXMUX" gate="A" pin="X2"/>
<wire x1="139.7" y1="78.74" x2="127" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="G$1" pin="4"/>
<wire x1="43.18" y1="33.02" x2="43.18" y2="12.7" width="0.1524" layer="91"/>
<wire x1="43.18" y1="12.7" x2="38.1" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX3" class="0">
<segment>
<pinref part="TXMUX" gate="A" pin="X3"/>
<wire x1="139.7" y1="76.2" x2="127" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV4" gate="G$1" pin="4"/>
<wire x1="66.04" y1="33.02" x2="66.04" y2="12.7" width="0.1524" layer="91"/>
<wire x1="66.04" y1="12.7" x2="60.96" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX4" class="0">
<segment>
<pinref part="TXMUX" gate="A" pin="X4"/>
<wire x1="139.7" y1="73.66" x2="127" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV5" gate="G$1" pin="4"/>
<wire x1="88.9" y1="33.02" x2="88.9" y2="12.7" width="0.1524" layer="91"/>
<wire x1="88.9" y1="12.7" x2="83.82" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX5" class="0">
<segment>
<pinref part="TXMUX" gate="A" pin="X5"/>
<wire x1="139.7" y1="71.12" x2="127" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV6" gate="G$1" pin="4"/>
<wire x1="111.76" y1="33.02" x2="111.76" y2="12.7" width="0.1524" layer="91"/>
<wire x1="111.76" y1="12.7" x2="106.68" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX6" class="0">
<segment>
<pinref part="TXMUX" gate="A" pin="X6"/>
<wire x1="139.7" y1="68.58" x2="127" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV7" gate="G$1" pin="4"/>
<wire x1="134.62" y1="33.02" x2="134.62" y2="12.7" width="0.1524" layer="91"/>
<wire x1="134.62" y1="12.7" x2="129.54" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX7" class="0">
<segment>
<pinref part="TXMUX" gate="A" pin="X7"/>
<wire x1="139.7" y1="66.04" x2="127" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV8" gate="G$1" pin="4"/>
<wire x1="157.48" y1="33.02" x2="157.48" y2="12.7" width="0.1524" layer="91"/>
<wire x1="157.48" y1="12.7" x2="152.4" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>