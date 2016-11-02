class Player extends Entity
{
  boolean _keyLeft;
  boolean _keyRight;
  boolean _keyJump;
  boolean _attackRight;
  boolean _attackLeft;
  boolean _weaponChange;
  PVector _moveSpeed;

  Player(float x, float y, PImage img, boolean isActive)
  {
    super(x, y, img, "Player", isActive);
    super.CreateBody(BodyType.DYNAMIC);
    _moveSpeed = new PVector(50, 0);
  }
 
 void Update()
  {
    KeyInputs();
    Movement();
  }

  void KeyInputs()
  {
    if (keyPressed)
    {
      if (key == 'd')
      {
        _keyRight = true;
      }
      if (key == 'a')
      {
        _keyLeft = true;
      }
      if (key == 'w')
      {
        _keyJump = true;
      }
      if (key == '\'')
      {
        println("asdferg");
        _attackRight = true;
      }
      if (key == 'k')
      {
        _attackLeft = true;
      }
      if (key == 'q')
      {
        _weaponChange = true;
      }
    } 
    else
    {
      _keyLeft  = false;
      _keyRight = false;
      _keyJump  = false;
      _attackRight = false;
      _attackLeft = false;
      _weaponChange = false;
    }
  }
  
  void Movement()
  {
    
  }
}