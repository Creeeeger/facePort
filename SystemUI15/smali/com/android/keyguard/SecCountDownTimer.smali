.class public Lcom/android/keyguard/SecCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAttempt:I

.field public final mAttemptRemainingBeforePermanentLock:I

.field public final mAttemptRemainingBeforeWipe:I

.field public final mContext:Landroid/content/Context;

.field public final mIsBouncer:Z

.field public final mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mTimerText:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLandroid/content/Context;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mTimerText:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/keyguard/SecCountDownTimer;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/keyguard/SecCountDownTimer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p8, p0, Lcom/android/keyguard/SecCountDownTimer;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    iput-boolean p9, p0, Lcom/android/keyguard/SecCountDownTimer;->mIsBouncer:Z

    const/4 p1, 0x1

    invoke-interface {p7, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mAttemptRemainingBeforeWipe:I

    invoke-interface {p7}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttemptsBeforePermanentLock()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mAttemptRemainingBeforePermanentLock:I

    const/4 p1, 0x0

    invoke-virtual {p6, p1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p1

    invoke-interface {p7, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mAttempt:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 9

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x3c

    rem-int/2addr v0, v1

    const-wide/32 v2, 0xea60

    div-long v2, p1, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    rem-int/2addr v2, v1

    const-wide/32 v3, 0x36ee80

    div-long/2addr p1, v3

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget p2, p0, Lcom/android/keyguard/SecCountDownTimer;->mAttemptRemainingBeforeWipe:I

    const-string v3, "\n"

    const-string v4, "\n\n"

    if-lez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/keyguard/SecCountDownTimer;->mIsBouncer:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/SecCountDownTimer;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    iget v5, p0, Lcom/android/keyguard/SecCountDownTimer;->mAttempt:I

    iget v6, p0, Lcom/android/keyguard/SecCountDownTimer;->mAttemptRemainingBeforeWipe:I

    invoke-virtual {v3, v5, v6}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/SecCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/SecCountDownTimer;->mAttemptRemainingBeforeWipe:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v7, 0x7f110006

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4, v3}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_1
    iget p2, p0, Lcom/android/keyguard/SecCountDownTimer;->mAttemptRemainingBeforePermanentLock:I

    const/4 v5, 0x3

    if-lt v5, p2, :cond_3

    if-lez p2, :cond_3

    iget-boolean p2, p0, Lcom/android/keyguard/SecCountDownTimer;->mIsBouncer:Z

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/SecCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/SecCountDownTimer;->mAttemptRemainingBeforePermanentLock:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f110007

    invoke-virtual {v5, v8, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/SecCountDownTimer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRemoteLockMode()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    iget-boolean p2, p0, Lcom/android/keyguard/SecCountDownTimer;->mIsBouncer:Z

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/SecCountDownTimer;->mContext:Landroid/content/Context;

    const v6, 0x7f130a6c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/SecCountDownTimer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRemoteLockMode()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    const-string p2, ""

    :goto_2
    invoke-static {p2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    if-lez p1, :cond_9

    if-ne v2, v1, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/SecCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f110010

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_6
    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f11000c

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    if-le p1, v3, :cond_8

    if-ne v2, v3, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/SecCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f110011

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/SecCountDownTimer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f130a6b

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    if-le v2, v3, :cond_a

    iget-object p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f110012

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f110013

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mTimerText:Ljava/lang/String;

    return-void
.end method
