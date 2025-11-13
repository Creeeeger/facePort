.class public final Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;
.super Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$Message;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mRemaining:I

.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;->this$0:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$Message;-><init>()V

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;->mRemaining:I

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$Message;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method public final display()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;->this$0:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;->mRemaining:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    iput-object p0, v0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mLastProgressMessageDisplayed:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;

    iget-object p0, v0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mDisplayMessageRunnable:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$$ExternalSyntheticLambda0;

    iget v0, v0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mProgressMinimumDisplayTime:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
