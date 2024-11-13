% Author: Thomas Carlton
% Email: carlto49@rowan.edu
% Course: Intro to Matlab/Cad - Fall 2024
% Assignment: Matlab Midterm
% Date: 11/13/24

% Defining the class
classdef Student

    
    % Creates the properties 
    properties
        Student_id = ""
        Student_name = ""
        Student_age = "" 
        Student_gpa = 0.0
        Student_Major = ""
    end

    % These next few lines creates the methods section.

    methods 

        % This function will allow for information to be added in the
        % database.

        function currentobj = Student(Student_id, Student_name, Student_age, Student_gpa, Student_Major)
            if nargin > 0
                currentobj.Student_id = Student_id;
                currentobj.Student_name = Student_name;
                currentobj.Student_age = Student_age;
                currentobj.Student_gpa = Student_gpa;
                currentobj.Student_Major = Student_Major;
            end
        end

        % This will allow us to create the students information in main.m

        function Show_Student_Information = Display_Information(currentobj)
            fprintf('Student ID: %s \n', currentobj.Student_id);
            fprintf('Student Name: %s \n', currentobj.Student_name);
            fprintf('Student Age: %s \n', currentobj.Student_age);
            fprintf('Student GPA: %s \n', currentobj.Student_gpa);
            fprintf('Student Major: %s \n', currentobj.Student_Major);
            Show_Student_Information = 1;
        end

        % This function allows a user to update a students gpa within the
        % database.

        function currentobj = Update_GPA(currentobj, new_GPA)
            if new_GPA >= 0 && new_GPA <= 4.0
        currentobj.Student_gpa = new_GPA;
        fprintf('Your GPA was updated to %.2f \n', currentobj.Student_gpa)
            else 
        error('Your GPA is Invalid. It must be between 0.0 and 4.0');
            end
        end
    end

end
