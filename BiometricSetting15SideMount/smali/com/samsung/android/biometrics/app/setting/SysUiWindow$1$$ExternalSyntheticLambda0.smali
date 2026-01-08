.class public final synthetic Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "removeView: pending"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->removeView()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
