.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;
.super Landroid/os/CountDownTimer;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mContext:Landroid/content/Context;

.field public final mErrorView:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;Landroid/content/Context;JLandroid/widget/TextView;I)V
    .locals 2

    .line 1
    iput p6, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 4
    .line 5
    const-wide/16 v0, 0x3e8

    .line 6
    .line 7
    invoke-direct {p0, p3, p4, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 8
    .line 9
    .line 10
    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->mErrorView:Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->onErrorTimeoutFinish()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mClearErrorRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$2;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$2;->run()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->onErrorTimeoutFinish()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mClearErrorRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$2;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$2;->run()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->onTick$com$samsung$android$biometrics$app$setting$prompt$knox$KnoxAuthCredentialView$ErrorTimer(J)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mKnoxClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->setErrorTimerText(Landroid/widget/TextView;J)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTick$com$samsung$android$biometrics$app$setting$prompt$knox$KnoxAuthCredentialView$ErrorTimer(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p1, v0

    .line 4
    long-to-int p1, p1

    .line 5
    div-int/lit8 p2, p1, 0x3c

    .line 6
    .line 7
    const/16 v0, 0x3c

    .line 8
    .line 9
    if-le p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->mErrorView:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    add-int/lit8 p2, p2, 0x1

    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, 0x7f0e0001

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-gt p1, v0, :cond_1

    .line 41
    .line 42
    if-lez p1, :cond_1

    .line 43
    .line 44
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->mErrorView:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$3;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/high16 v1, 0x7f0e0000

    .line 61
    .line 62
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method
