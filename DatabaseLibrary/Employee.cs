//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DatabaseLibrary
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employee : Person
    {
        public string Profession { get; set; }
        public int ExperienceYears { get; set; }
        public int LibraryId { get; set; }
    
        public virtual Library Library { get; set; }
    }
}
