<div id="nav">
	<div id="nav_con">
		<ul>
			<#list strs as str>
				<li>
					<span href="localhost:8080/user/channel/${str}">${str}</span>
				</li>
			</#list>
		</ul>
	</div>
</div>