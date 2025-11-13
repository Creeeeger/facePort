.class public final Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/ClientCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleOnClientFinished(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onClientStarted(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleOnClientStarted()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
