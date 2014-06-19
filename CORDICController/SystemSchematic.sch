<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="Controller">
            <timestamp>2014-6-19T18:27:4</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="register_file">
            <timestamp>2014-6-19T18:41:47</timestamp>
            <rect width="336" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-428" height="24" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2014-6-19T18:46:13</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Comparator">
            <timestamp>2014-6-19T19:3:58</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <block symbolname="Controller" name="XLXI_1">
            <blockpin name="start" />
            <blockpin name="done" />
            <blockpin name="rst" />
            <blockpin name="clk" />
            <blockpin name="code(3:0)" />
            <blockpin name="t" />
            <blockpin name="op" />
            <blockpin name="load" />
            <blockpin name="m(1:0)" />
            <blockpin name="i(3:0)" />
        </block>
        <block symbolname="register_file" name="XLXI_3">
            <blockpin name="wr_enable" />
            <blockpin name="rd_enable" />
            <blockpin name="clk" />
            <blockpin name="rst" />
            <blockpin name="wr_data0(31:0)" />
            <blockpin name="wr_data1(31:0)" />
            <blockpin name="wr_data2(31:0)" />
            <blockpin name="rd_data0(31:0)" />
            <blockpin name="rd_data1(31:0)" />
            <blockpin name="rd_data2(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_4">
            <blockpin name="clk" />
            <blockpin name="rst" />
            <blockpin name="in1(7:0)" />
            <blockpin name="in2(7:0)" />
            <blockpin name="alu_mode(2:0)" />
            <blockpin name="z_flag" />
            <blockpin name="n_flag" />
            <blockpin name="result(7:0)" />
        </block>
        <block symbolname="Comparator" name="XLXI_5">
            <blockpin name="clk" />
            <blockpin name="OperationSelect" />
            <blockpin name="Zi(31:0)" />
            <blockpin name="Z0(31:0)" />
            <blockpin name="Yi(31:0)" />
            <blockpin name="Y0(31:0)" />
            <blockpin name="Output" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="816" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2416" y="1424" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1424" y="816" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1536" y="1472" name="XLXI_4" orien="R0">
        </instance>
    </sheet>
</drawing>