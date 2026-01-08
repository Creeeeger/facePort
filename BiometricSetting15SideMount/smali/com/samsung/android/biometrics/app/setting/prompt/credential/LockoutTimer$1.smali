.class public final Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;
.super Landroid/os/CountDownTimer;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;

    .line 2
    .line 3
    const-wide/16 v0, 0x3e8

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;->mListener:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;

    .line 2
    .line 3
    const-wide/16 v0, 0x3e8

    .line 4
    .line 5
    div-long/2addr p1, v0

    .line 6
    long-to-int p1, p1

    .line 7
    div-int/lit8 p2, p1, 0x3c

    .line 8
    .line 9
    const/16 v0, 0x3c

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-le p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    add-int/2addr p2, v1

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
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    if-lez p1, :cond_2

    .line 38
    .line 39
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-ne p1, v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x3

    .line 49
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/high16 v0, 0x7f0e0000

    .line 58
    .line 59
    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const-string p1, ""

    .line 65
    .line 66
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;->mListener:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;

    .line 67
    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 71
    .line 72
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3$$ExternalSyntheticLambda1;

    .line 75
    .line 76
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method
