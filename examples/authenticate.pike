int main()
{

  object p=System.PAM.PAM("telnet");
  string user="testuser";
  string pass="letmein";
  p->start(user, conv);
  p->open_session(0);
  p->setcred(0);
   write("u: " + user + " p: " + pass + " r: " + p->authenticate(pass, 0) + "\n");
  p->close_session(0);
  p->end(0);
  p=0;
  return 0;
}

mixed conv(string user, mixed data, array c)
{
  write("user: %s\n data: %O\n conv: %O\n", user, data, c);
  return ({({data, 1})});
}


