.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mAtmRemain:I

.field public mErrorState:I

.field public mInputPin:Ljava/lang/String;

.field public mInputPuk:Ljava/lang/String;

.field public mState:I

.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 5
    .line 6
    return-void
.end method

.method public static printState(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, ""

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "ERROR_CONFIRM_PIN_FAIL"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "FAIL"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "DONE"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "CONFIRM_PIN"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "ENTER_PIN_PUK"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "ENTER_PUK"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "ENTER_PIN"

    .line 26
    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getState()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mState:I

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->printState(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "getState : "

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "BSS_UCMAuthCredentialPasswordView"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mState:I

    .line 23
    .line 24
    return p0
.end method

.method public final setState(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "setState : "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "BSS_UCMAuthCredentialPasswordView"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mState:I

    .line 25
    .line 26
    return-void
.end method
