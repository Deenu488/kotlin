public abstract interface KtInterface /* KtInterface*/ {
  public abstract void defaultFun();//  defaultFun()

  public abstract void withoutBody();//  withoutBody()

  public static final class DefaultImpls /* KtInterface.DefaultImpls*/ {
    private static int getProp(@org.jetbrains.annotations.NotNull() KtInterface);//  getProp(KtInterface)

    private static void privateFun(@org.jetbrains.annotations.NotNull() KtInterface);//  privateFun(KtInterface)

    public static void defaultFun(@org.jetbrains.annotations.NotNull() KtInterface);//  defaultFun(KtInterface)
  }
}