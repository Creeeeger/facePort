.class public final Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mClock:Ljava/time/Clock;

.field public final mCollectTime:I

.field public final mDisplayMessageRunnable:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$$ExternalSyntheticLambda0;

.field public final mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field public final mHandler:Landroid/os/Handler;

.field public final mHelpMessageList:Ljava/util/Deque;

.field public final mHelpMinimumDisplayTime:I

.field public mLastProgressMessageDisplayed:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;

.field public mMustDisplayProgress:Z

.field public final mPrioritizeAcquireMessages:Z

.field public final mProgressMessageList:Ljava/util/Deque;

.field public final mProgressMinimumDisplayTime:I

.field public final mProgressPriorityOverHelp:Z

.field public mWaitingForMessage:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;Ljava/time/Clock;IIZZI)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mClock:Ljava/time/Clock;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mWaitingForMessage:Z

    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mHelpMessageList:Ljava/util/Deque;

    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mProgressMessageList:Ljava/util/Deque;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    iput p4, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mHelpMinimumDisplayTime:I

    iput p5, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mProgressMinimumDisplayTime:I

    iput-boolean p6, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mProgressPriorityOverHelp:Z

    iput-boolean p7, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mPrioritizeAcquireMessages:Z

    iput p8, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mCollectTime:I

    new-instance p2, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mDisplayMessageRunnable:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$$ExternalSyntheticLambda0;

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final onAcquired(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onAcquired(Z)V

    return-void
.end method

.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mHelpMessageList:Ljava/util/Deque;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$HelpMessage;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$HelpMessage;-><init>(Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;ILjava/lang/CharSequence;)V

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mWaitingForMessage:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mWaitingForMessage:Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mDisplayMessageRunnable:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$$ExternalSyntheticLambda0;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mCollectTime:I

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onEnrollmentProgress(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mProgressMessageList:Ljava/util/Deque;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;-><init>(Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;I)V

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mWaitingForMessage:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mWaitingForMessage:Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mDisplayMessageRunnable:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$$ExternalSyntheticLambda0;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mCollectTime:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
