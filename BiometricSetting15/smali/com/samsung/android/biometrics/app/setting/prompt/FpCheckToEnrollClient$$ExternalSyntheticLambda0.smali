.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendErrorEventToBioService(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->stop()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    const/16 v0, 0x3e9

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;->restartTimeout()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptWindow;->mPromptGuiHelper:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 39
    .line 40
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->handleAuthenticationHelp(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FpCheckToEnrollClient;I)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v2, 0x7d0

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
