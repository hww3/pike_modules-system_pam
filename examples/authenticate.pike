int main()
{

  object p=System.PAM.PAM("other");
  string user="letmein";
  string pass="user";
  p->start(user, conv);
  p->open_session(0);
  p->setcred(0);
  int z = p->authenticate(pass, 0);
   write("u: " + user + " p: " + pass + " r: " + 
             z + ", " + p->strerror(z) + "\n");
  p->close_session(0);
  p->end(0);
  p=0;
  return 0;
}

mixed conv(string user, mixed data, array c)
{
  write("user: %s\n data: %O\n conv: %O\n", user, data, c);
  if(stringp(data))
    return ({({data, 1})});
  else return ({({ "hah", 1 })});
}


