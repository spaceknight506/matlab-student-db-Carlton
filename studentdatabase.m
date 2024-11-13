% Author: Thomas Carlton
% Email: carlto49@rowan.edu
% Course: Intro to Matlab/Cad - Fall 2024
% Assignment: Matlab Midterm
% Date: 11/13/24

% This is the database of students

classdef StudentData
    % Defining the properties of the database

    properties 
        size = 6
        student = []
        amount_of_students = 0
    end

    methods
        

        function currentobj = addstudents(currentobj, Student)
            if currentobj.amount_of_students < currentobj.size
               currentobj.amount_of_students = currentobj.amount_of_students + 1;
               currentobj.student(currentobj.amount_of_students) = Student;
            else
                fprintf("The Database of Students is Full \n")
            end
        end

        % This function 
        function currentobj = initSD(currentobj, size)
            currentobj.size = size;
            currentobj.student = repmat(Student, 1, currentobj.size);
        end

        % This is where a student is created and added into the database
        function currentobj =createstudent (currentobj, Student_id, Student_name, Student_age, Student_gpa, Student_Major)
            if currentobj.amount_of_students < currentobj.size
               NewStudent = Student(Student_id, Student_name, Student_age, Student_gpa, Student_Major);
               currentobj = currentobj.addstudents(NewStudent);
            else
                fprintf("The Database is full of Students \n");
            end
        end 

        % This displays the Students information including their name, id,
        % gpa, major, and age.

        function showStudents(currentobj)
            if currentobj.amount_of_students == 0
                fprintf('No student information to display. \n ');
                return;
            end
            for i = 1: currentobj.amount_of_students
                fprintf("########--Student %d--######## \n", i)
                currentobj.student(i).Display_Information();
            end
        end

        %This function will allow use to search for a student using their
        %each students id.

        function result = findStudent(currentobj, Student_id)
            result = 0;
            for i = 1:currentobj.amount_of_students
                if strcmp(currentobj.student(i).Student_id, Student_id)
                    currentobj.student(i).Display_Information(); 
                    result = 1;
                    break;
                end
            end
            if result == 0
                fprintf("Student Not Found \n")
            end
        end
        % This will save the database into its own file. Which can be
        % opened on its own.

        function savedatabase (currentobj, filename)
            save(filename, 'currentobj');
        end
    end 
end 
