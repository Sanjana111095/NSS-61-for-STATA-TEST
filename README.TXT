
Government of India.
Data Processing Division.
National Sample Survey Division.
164, Gopal Lal Thakur Road, Kolkata-700108.
Phone No. (033) 2577-1128.
---------------------------------------
NSS 61st Round.
Final Multiplier-posted unit-level data of
Employment-Unemployment Survey (Sch.10).

Data Files
-----------------------------------------------------------------------------------
  No. of      No. of  Data          Remarks
 records       bytes  File name
-----------------------------------------------------------------------------------
  864380    132250140   ah12.txt    for states with codes = 09,11,13,15,17
  737821    112886613   ah22.txt    for states with codes = 10,14,16,18
  713935    109232055   ah32.txt    for states with codes = 12,19,21,35
  680106    104056218   ah42.txt    for states with codes = 01,02,03,04,06,07
 1642778    251345187   ah52.txt    for states with codes = 05,22,23,27,28,30,31,32
  161385     24691905   ah62.txt    for states with codes = 20
  481416     73656648   ah72.txt    for states with codes = 08,24,25,26
  619477     94779981   ah82.txt    for states with codes = 29,33,34
-----------------------------------------------------------------------------------

Multiplier files 
-------------------------------------
  12788      3874764    multalls2.61

  12788      3874768    mltsubs10.all
-------------------------------------
Record length is 302 for both the multiplier files.
(The Multipliers / Weights are already posted onto data files.)


Note for users :
----------------
(1)  These are text data with fixed record-length of 152 characters.
     First 126 bytes are data, and remaining 26 bytes are weights.     
     
(2)  The Layout of data is given in the EXCEL-file layout.xls.   
     
(3)  The data is organised in various levels having different data
     formats.  Information regarding which block of the Schedule has
     been put into which level, is given in the file layout.xls.

(4)  For generating any estimate, one has to extract relevant portion
     of the data, and aggregate after applying the weights.
     
(5)  Weights (or multipliers) are given at the end of each record
     from 127th byte onwards. In each record, there are two sets
     of weights (multipliers) -- the first set is "Subsample-wise
     sampling design based multiplier" and the second set is 
     "post-survey adjusted sub-round-wise subsample combined 
      multiplier" as given below : (For description of subsample and
      sub-round please see Instructions Manual for fiels staff, Vol-I)

     
      "subsample-wise design based weights"   
     ----------------------------------------
     NSS = Bytes 127-129 (3 bytes)
     NSC = Bytes 130-132 (3 bytes)
     MLT_SS = Bytes 133-142 (10 bytes)
     -----------------------------------------    
  
     "sub-round wise subsample combined weights"
     --------------------------------------------
      MLT_SR = Bytes 143-152 (10 bytes)
     --------------------------------------------
     
     All records of a household will have same weight figure.
 

   In case of those Blocks/Levels, where Item/Person Sl.No. is not
    applicable the field is filled up with  00000.
    
(7) In the value fields (Rs. or Quantity or Area etc.) only the 
    numeric figure is given in datafile.  The decimal point is
    to be assumed after looking at the type of that field in the
    printed schedule.
----------------------------------------------------------------

 
   Use of subsample-wise weights (multipliers) 
----------------------------------------------------------------

    For generating subsample-wise estimates based on data of all 
    subrounds taken together, either Subsample-1 households or 
    Subsample-2 households are to be considered at one time.
    Subsample code is available in the data file. (Please see 
    layout of data).  
      
     Apply weight (or multipliers) as follows :
     
     weight = MLT_SS/100.
 
     For generating subsample-combined estimates based on data of all 
    subrounds taken together all households are to be considered.
      
     Apply weight (or multipliers) as follows :
     
     weight = MLT_SS/100,   if NSS=NSC
            = MLT_SS/200    otherwise.
    
--------------------------------------------------------------------------  

    Use of "sub-round wise subsample combined weights" (multipliers) 
--------------------------------------------------------------------------

    For generating sub-round-wise subsample combined estimates, either all
    Sub-round-1 households or all Sub-round-2 households or all Sub-round-3
    households or all Sub-round-4 households are to be considered at one 
    time. Sub-round code is available in the data file. (Please see 
    layout of data).  rs are
    to be used.
    
     Apply the sub-round wise subsample combined multiplies 
     ( or weights ) as follows :
     
     weight = MLT_SR/100.
 


-----------------------------------------------------------------------------    

(8)  Common Primary Key for identification of a record for any record is
       FSU Serial Number                  =  4(5)   (i.e., offset = 4th byte,
                                                           length = 5 bytes
       Hamlet-Group /Sub-Block Number     = 31(1)
       Second Stage Stratum Number        = 32(1)
       Household Serial Number            = 33(2)
       Level Number                       = 35(2)
       Item/ Person Serial Number         = 37(5)
                    
-------------------------------------------------------------------------------


List of Documents
------------------

General Information   ----  README.TXT

Text Data Layout      -----  Layout.xls

Subsample-wise multiplier file layout    - mltlay61.doc

Sub-round eise subsample combined multiplier file layout -srmltlay61.doc


Instructions for Schedule 10 
Chapter 1 of Instructions Vol. I - Chapter-1.doc
Chapter 2 of Instructions Vol. I - Chapter-2.doc
Chapter 4 of Instructions Vol. I - Chapter-4.doc

Blank Schedule 10 -  61sch10.doc

Estimation procedure for 61st round Estimation_procedure.doc

State codes - State code.doc
------------------------------------------------------------------------------

    
Note : (1) f.s.u. serial numbers in records are assigned false numbers
            to disable identity of units;

        (2) files are in ASCII format and they are flat / line sequential.
 
