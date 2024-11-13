% Author: Thomas Carlton
% Email: carlto49@rowan.edu
% Course: Intro to Matlab/Cad - Fall 2024
% Assignment: Matlab Midterm
% Date: 11/13/24

% To simplify the variable name I will set StudentData to SD

SD = StudentData;

% SD = SD.initSD(5) ; would make the maximum size of the database 5.

SD = SD.initSD(6);

% Creating the Students including theur names, ids, majors, ages, and gpas.
SD = SD.createstudent("1", "Derrick", "34", 1.2, "Art History");
SD = SD.createstudent("2", "Rahul", "18", 3.8, "Sports Medicine");
SD = SD.createstudent("3", "Sarah", "23", 2.7, "Physics");
SD = SD.createstudent("4", "Jake", "63", 3.4, "Mechanical Engineering");
SD = SD.createstudent("5", "Y. Sheldon", "10", 4.0, "Mathmatics");
SD = SD.createstudent("6", "Sofia", "46", 2.4, "Data Science");

% This is how added students get displayed.

%SD.showStudents();

% This is where a student can be searched by using their student Id. When
% the Id matches a student the students information shown by the database. If the id
% does not match any student an error message will be given.

SD.findStudent("4");

% This saves the database to a seperate matlab file.

%SD.saveDatabase('Student_Database.mat')

% this loads the previous database

%load('Student_Database.mat')

%This will create a histogram for the students gpas

nbins = 6;
x = [1.2, 3.8, 2.7, 3.4, 4.0, 2.4];
histogram(x, nbins);


% This creates a bar graph showing the students ages.

values = [34, 18,23, 63, 10, 46];
h = bar(values);
h.FaceColor = 'flat';
h.CData = [0 1 0
           0 0 1
           1 0 1
           1 1 0
           1 0 0
           0 1 1];
set(gca, 'xticklabel', categories);
title('Students Ages')


% This creates a bar graph that shows the students majors compared to their
% gpas
Categories = {'Art History', 'Sports Medicine', 'Physics', 'Mechanical Engineering', 'Mathmatics', 'Data Science'};
values = [1.2, 3.8, 2.7, 3.4, 4.0, 2.4];
h = bar(values);
title ('Average GPA by Academic Major')
h.FaceColor = "flat";
h.CData = [0 0.4470 0.7410
           0.8500 0.3250 0.0980
           0.4940 0.1840 0.5560
           0.6360 0.0780 0.1840
           0.9290 0.6940 0.1250
           0.3010 0.7450 0.9330];
