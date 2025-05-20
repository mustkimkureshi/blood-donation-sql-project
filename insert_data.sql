--Insert into donar
insert into donar(D_id,D_name,D_dob,D_email,D_mn,D_add,D_bg,gender) values (&D_id,'&D_name','&D_dob','&D_email',&D_mn,'&D_add','&D_bg','&gender');

--Insert into patient
insert into patient(P_id,P_name,P_dob,P_email,P_mn,P_add,P_bg,gender) values(&P_id,'&P_name','&P_dob','&P_email',&P_mn,'&P_add','&P_bg','&gender');

--Insert into hospital
insert into hospital(H_id,H_name,H_add,H_mn) values (&H_id,'&H_name','&H_add',&H_mn);

--Insert into donation
insert into donation (Don_id,Don_date,volume,D_id,P_id,H_id) values (&Don_id,'&Don_date,&volume,&D_id,&P_id,&H_id);
