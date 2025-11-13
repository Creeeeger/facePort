.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

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
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onLockoutTimeoutFinish()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsDetachedFromWindow:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getCallback()Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onLockoutTimeoutStart()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_2
    sget v1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->$r8$clinit:I

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->enterAlertMode(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-wide/16 v3, 0xbb8

    .line 52
    .line 53
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_3
    sget v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->$r8$clinit:I

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->enterAlertMode(I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_4
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mAlertMode:I

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->enterAlertMode(I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->clearErrorMessage()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
