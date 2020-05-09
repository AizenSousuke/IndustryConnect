class Spaceship
{
    public class Weapon
    {
        public void Fire() 
        {
            System.Console.WriteLine("Fire!");
        }
    }
}

Spaceship.Weapon weapon = new Spaceship.Weapon();
weapon.Fire();