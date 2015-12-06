using System.Windows;
using DatabaseLibrary;
using System;

namespace LibraryUserApp
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            var database = new DatabaseModelContainer();
            database.LibrarySet.Add(new Library
            {
                Name = "Библиотека им. Лермонтова",
                Address = "ул. Лермонтова 3",
                Phone = "8-800-555-35-35",
                WorkTimeBegin = TimeSpan.FromHours(7),
                WorkTimeEnd = TimeSpan.FromHours(18),
                FreeDay = 7,
                Admin = "Перекатиполе Людмила Егоровна"
            });

           // database.SaveChanges();
        }
    }
}
