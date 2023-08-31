<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="VCP-Demo" Type="Folder">
			<Item Name="CRC_Calculation.vi" Type="VI" URL="../VCP-Demo_Safe/VCP-Demo/CRC_Calculation.vi"/>
			<Item Name="Read.vi" Type="VI" URL="../VCP-Demo_Safe/VCP-Demo/Read.vi"/>
			<Item Name="VCP-Demo.vi" Type="VI" URL="../VCP-Demo_Safe/VCP-Demo/VCP-Demo.vi"/>
			<Item Name="Write.vi" Type="VI" URL="../VCP-Demo_Safe/VCP-Demo/Write.vi"/>
		</Item>
		<Item Name="VIs" Type="Folder">
			<Item Name="PD4-C Front Panel.vi" Type="VI" URL="../PD4-C Front Panel.vi"/>
			<Item Name="PD4-C Init.vi" Type="VI" URL="../PD4-C Init.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
			</Item>
			<Item Name="Nanotech PDC-4.lvlib" Type="Library" URL="../Old and Failed/Nanotec_PDC-4 Lib/Nanotech PDC-4.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
