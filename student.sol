// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDB {
    
    struct Student {
        string name;
        uint256 rollno;
        string class;
    }
    
    Student[] private students;
    
    function addStudent(string memory name, uint256 rollno, string memory class) public {
        students.push(Student(name, rollno, class));
    }
    
    function getStudentById(uint256 id) public view returns (string memory, uint256, string memory) {
        require(id < students.length, "Student does not exist in database");
        return (students[id].name, students[id].rollno, students[id].class);
    }
    
    function getTotalNumberOfStudents() public view returns (uint256) {
        return students.length;
    }
}


#m-code


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Students{

    struct Student{
        uint id;
        string name;
        uint age;
        string grade;
    }

    Student[] public students;
    uint public studentCount;

    // Receive function to accept ether
    receive() external payable { }

    // Fallback (Optional can handle non epmty transactions
    fallback() external payable { }

    function addStudent(string memory _name, uint _age, string memory _grade) public{
        studentCount++;
        students.push(Student(studentCount,_name, _age, _grade));
    }

    // function to get student details by ID
    function getStudent(uint _id) public view returns(uint, string memory, uint, string memory){
        require(_id>0 && _id <studentCount,"Student does not exist");
        Student memory student = students[_id - 1];
        return(student.id, student.name, student.age, student.grade);
    }

    //function to get the total number of students
    function getTotalStudents() public view returns(uint){
        return studentCount;
    }

}
