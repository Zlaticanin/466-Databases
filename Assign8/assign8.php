<!--
   Milena Zlaticanin
   CSCI 466 - 1
   Assignment 8
   Professor Lehuta
   Due: 03/12/21
-->

<html>
   <head><title>Assignment 8</title></head>

   <body>
      <h1>Parts/Suppliers Database</h1>

      <h2>Suppliers And Their Details</h2>
         <form action = "http://students.cs.niu.edu/~z1847022/q1.php" method="GET">
            <input type = "Submit" name = "Submit" value = "Suppliers"/>
         </form>

      <h2>Parts And Their Details</h2>
         <form action = "http://students.cs.niu.edu/~z1847022/q2.php" method="GET">
            <input type = "Submit" name = "Submit" value = "Parts"/>
         </form>

      <h2>Select a Part and Click "Submit"</h2>
         <form action = "http://students.cs.niu.edu/~z1847022/q3.php" method="GET">
            <input type = "radio" id = "Nut" name = "part" value = "1">
            <label for = "Nut">Nut</label><br />

            <input type = "radio" id = "Bolt" name = "part" value = "2">
            <label for = "Bolt">Bolt</label><br />

            <input type = "radio" id = "Screw" name = "part" value = "3">
            <label for = "Screw">Blue Screw</label><br />

            <input type = "radio" id = "Screw" name = "part" value = "4">
            <label for = "Screw">Red Screw</label><br />

            <input type = "radio" id = "Cam" name = "part" value = "5">
            <label for = "Cam">Cam</label><br />

            <input type = "radio" id = "Cog" name = "part" value = "6">
            <label for = "Cog">Cog</label><br />

            <input type = "Submit" name = "Submit" value = "Submit"/>
         </form>

         <h2>Select a Supplier and Click "Submit"</h2>
         <form action = "http://students.cs.niu.edu/~z1847022/q4.php" method="GET">
            <input type = "radio" id = "Smith" name = "supplier" value = "1">
            <label for = "Smith">Smith</label><br />

            <input type = "radio" id = "Jones" name = "supplier" value = "2">
            <label for = "Jones">Jones</label><br />

            <input type = "radio" id = "Blake" name = "supplier" value = "3">
            <label for = "Blake">Blake</label><br />

            <input type = "radio" id = "Clark" name = "supplier" value = "4">
            <label for = "Clark">Clark</label><br />

            <input type = "radio" id = "Adams" name = "supplier" value = "5">
            <label for = "Adams">Adams</label><br />

            <input type = "Submit" name = "Submit" value = "Submit"/>
         </form>

         <h2>Select What Part You Want To Buy And From Which Supplier, Then Click "Submit"</h2>
         <form action = "http://students.cs.niu.edu/~z1847022/q5.php" method="GET">
            <div>
               <input type = "radio" id = "Nut" name = "part" value = "1">
               <label for = "Nut">Nut</label><br />

               <input type = "radio" id = "Bolt" name = "part" value = "2">
               <label for = "Bolt">Bolt</label><br />

               <input type = "radio" id = "Screw" name = "part" value = "3">
               <label for = "Screw">Blue Screw</label><br />

               <input type = "radio" id = "Screw" name = "part" value = "4">
               <label for = "Screw">Red Screw</label><br />

               <input type = "radio" id = "Cam" name = "part" value = "5">
               <label for = "Cam">Cam</label><br />

               <input type = "radio" id = "Cog" name = "part" value = "6">
               <label for = "Cog">Cog</label><br />
            </div><br /><div>
               <input type = "radio" id = "Smith" name = "supplier" value = "1">
               <label for = "Smith">Smith</label><br />

               <input type = "radio" id = "Jones" name = "supplier" value = "2">
               <label for = "Jones">Jones</label><br />

               <input type = "radio" id = "Blake" name = "supplier" value = "3">
               <label for = "Blake">Blake</label><br />

               <input type = "radio" id = "Clark" name = "supplier" value = "4">
               <label for = "Clark">Clark</label><br />

               <input type = "radio" id = "Adams" name = "supplier" value = "5">
               <label for = "Adams">Adams</label><br />
            </div><br />
                Enter The Quantity You Would Like To Purchase:<input type = "text" name = "QTY"><br />
                <input type = "Submit" name = "Submit" value = "Submit"/>
         </form>

         <h2>Add A Part To The Database And Then Click "Submit"</h2>
         <form action = "http://students.cs.niu.edu/~z1847022/q6.php" method="POST">
            Enter Part Name:<input type = "text" name = "PName"><br />
            Enter Part Color:<input type = "text" name = "Color"><br />
            Enter Part Weight:<input type = "text" name = "Weight"><br />

            <input type = "Submit" name = "Submit" value = "Submit"/>
         </form>

         <h2>Add A Supplier To The Database And Then Click "Submit"</h2>
         <form action = "http://students.cs.niu.edu/~z1847022/q7.php" method="POST">
            Enter Supplier's Name:<input type = "text" name = "SName"><br />
            Enter Supplier's Status:<input type = "text" name = "Status"><br />
            Enter Supplier's City:<input type = "text" name = "City"><br />

            <input type = "Submit" name = "Submit" value = "Submit"/>
         </form>
   </body>
</html>