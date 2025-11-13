.class public final Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;
.super Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback$Stub;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinish(III)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance p3, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p3, p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onStart(III)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance p3, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p3, p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
