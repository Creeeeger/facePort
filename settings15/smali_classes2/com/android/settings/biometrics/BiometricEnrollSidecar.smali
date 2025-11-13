.class public abstract Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mEnrolling:Z

.field public mEnrollmentCancel:Landroid/os/CancellationSignal;

.field public mEnrollmentRemaining:I

.field public mEnrollmentSteps:I

.field public final mHandler:Landroid/os/Handler;

.field public mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

.field public final mQueuedEvents:Ljava/util/ArrayList;

.field public final mTimeoutRunnable:Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;

.field public mToken:[B

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mTimeoutRunnable:Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final cancelEnrollment()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mTimeoutRunnable:Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;-><init>(I)V

    iput p1, v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;->helpMsgId:I

    iput-object p2, v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;->helpString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    return-void
.end method

.method public final onEnrollmentProgress(I)V
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    :cond_0
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    invoke-interface {v0, p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput p0, v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;->enrollmentSteps:I

    iput p1, v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;->remaining:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->startEnrollment()V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    :cond_0
    return-void
.end method

.method public final setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;->send(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public startEnrollment()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mTimeoutRunnable:Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    return-void
.end method
