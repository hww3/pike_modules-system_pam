int main()
{
  object p=System.PAM.PAM("telnet");

  string user="testuser";
  string pass="testpass";
  string newpass="testpass";
  p->start(user, conv);
   write("u: " + user + " p: " + pass + " r: " + p->chauthtok((["pass": pass, "newpass": newpass]), 0) + "\n");
  p->end(0);
  p=0;
  return 0;
}

mixed conv(string user, mixed data, array c)
{
  write("data: %O\n", data);
  write("conv: %O\n", c);
  return ({({data->pass, 1})});
}
