CREATE OR REPLACE EDITIONABLE procedure HR.Populate_Toad_Dir_Listing( p_directory in varchar2 )
  as language java
  name 'ToadDirList.getList( java.lang.String )';
/
