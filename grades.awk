#! /usr/bin/awk
{
    if($1 in students){
        students[$1] = students[$1]","$2
    }else{
        students[$1] = $2;
    }
}
END{
    for(student in students){
        score = 0;
        total = 0;
        split(students[student], temp, ",");
        total = length(temp);
        for(subject in temp){
            score += temp[subject];
        }
        print student, "average is:", score / total | "sort -t: -nrk2"
    }
}
