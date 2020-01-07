<html>
<head></head>
<body>
	<form onsubmit="return finalvalidation()">
		<h1 style="text-align: center">Location Details</h1>
		<table align="center" cellspacing="15">
			<div id="algn" align="center">
				<tr align="center">
					<td><b>From:<select id="from">
								<option value="">Select...</option>
								<option value="bglr" class="fromlocation">BANGLORE</option>
								<option value="cmbtre" class="fromlocation">COIMBATORE</option>
								<option value="kochi" class="fromlocation">KOCHI</option>
						</select>
					</b> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <b>TIME :</b><input
						type="time" name="fromTime" class="d-sub" required /></td>
				</tr>

				<tr>
					<td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To:<select
							id="to">
								<option value="">Select...</option>
								<option value="bglr" class="tolocation">BANGLORE</option>
								<option value="cmbtre" class="tolocation">COIMBATORE</option>
								<option value="kochi" class="tolocation">KOCHI</option>
						</select>
					</b> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <!--<span id="err1"></span></b>-->
						<b>TIME :</b><input type="time" name="toTime" class="d-sub" required /></td>
				</tr>

				<tr>
					<td><label for="locid">ENTER LOCATION ID</label> <input
						type="text" class="d-sub" name="routeId"
						placeholder="ENTER LOCATION ID" id="txt1"
						oninput="funvalidation()" required /><span id="errormessage"
						style="color: red; font-weight: bold;"> </span></td>
				</tr>

				<tr>
					<td><label for="locid">ENTER TRAIN NO:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="text" class="d-sub" name="trainNo"
						placeholder="ENTER TRAIN NUMBER" id="txt2"
						oninput="funvalidation1()" required /> <span id="errormessage1"
						style="color: red; font-weight: bold;"> </span></td> &nbsp;
				</tr>

				<tr>
					<td><label for="locid">ENTER STOP 1:</label> <input
						type="text" class="d-sub" name="stop1" placeholder="ENTER STOP 1"
						id="txt3" oninput="funvalidation2()" required /> &nbsp; &nbsp;
						&nbsp; <span id="errormessage2"
						style="color: red; font-weight: bold;"> </span> <b>TIME :</b><input
						type="time" name="time1" class="d-sub" required /></td>
				</tr>

				<tr>
					<td><label for="locid">ENTER STOP 2:</label><input type="text"
						class="d-sub" name="stop2" placeholder="ENTER STOP 2" id="txt4"
						oninput="funvalidation3()" required /> &nbsp; &nbsp; &nbsp; <span
						id="errormessage3" style="color: red; font-weight: bold;">
					</span> <b>TIME :</b><input type="time" name="time2" class="d-sub" required /></td>
				</tr>

				<tr>
					<td><label for="locid">ENTER STOP 3:</label><input type="text"
						class="d-sub" name="stop3" placeholder="ENTER STOP 3" id="txt5"
						oninput="funvalidation4()" required /> &nbsp; &nbsp; &nbsp; <span
						id="errormessage4" style="color: red; font-weight: bold;">
					</span> <b>TIME :</b><input type="time"  name="time3" class="d-sub" required></td>
				</tr>

				<tr align="center">
					<td><input type="submit" class="d-sub" value="ADD LOCATION"
						style="font-size: 20; color: black;" onsubmit="finalvalidation()" />
						<br /> <span id="err"></span></td>

				</tr>
			</div>
		</table>

		<script>
			function funvalidation() {
				var userval = document.getElementById("txt1").value;
				var namePattern = "^[A-Za-z]+$";
				if (!userval.match(namePattern)) {
					document.getElementById("errormessage").innerHTML = "(Invalid input)";
				} else {
					document.getElementById("errormessage").innerHTML = "";
				}
			}
			function funvalidation1() {
				var userval = document.getElementById("txt2").value;
				var namePattern = "^[A-Za-z0-9]+$";
				if (!userval.match(namePattern)) {
					document.getElementById("errormessage1").innerHTML = "(Invalid input)";
				} else {
					document.getElementById("errormessage1").innerHTML = "";
				}
			}
			function funvalidation2() {
				var userval = document.getElementById("txt3").value;
				var namePattern = "^[A-Za-z]+$";
				if (!userval.match(namePattern)) {
					document.getElementById("errormessage2").innerHTML = "(Invalid input)";
				} else {
					document.getElementById("errormessage2").innerHTML = "";
				}
			}
			function funvalidation3() {
				var userval = document.getElementById("txt4").value;
				var namePattern = "^[A-Za-z]+$";
				if (!userval.match(namePattern)) {
					document.getElementById("errormessage3").innerHTML = "(Invalid input)";
				} else {
					document.getElementById("errormessage3").innerHTML = "";
				}
			}
			function funvalidation4() {
				var userval = document.getElementById("txt5").value;
				var namePattern = "^[A-Za-z]+$";
				if (!userval.match(namePattern)) {
					document.getElementById("errormessage4").innerHTML = "(Invalid input)";
				} else {
					document.getElementById("errormessage4").innerHTML = "";
				}
			}
			function finalvalidation() {

				var x = funvalidation();
				var y = funvalidation1();
				var z = funvalidation2();
				var h = funvalidation3();
				var r = funvalidation4();
				if (x && y && z && h && r)
					return true;
				else
					return false;

			}
		</script>
	</form>
</body>
</html>