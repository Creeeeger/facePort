.class public final Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAcquireLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mCanceledSignalLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mCancelingSignalQueue:Ljava/util/LinkedList;

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public final mEnrollmentCallback:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel$1;

.field public final mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

.field public final mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mPointerDownLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mPointerUpLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

.field public mToken:[B

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;I)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;-><init>(II)V

    invoke-direct {p1, v0}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCanceledSignalLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mAcquireLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerDownLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerUpLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancelingSignalQueue:Ljava/util/LinkedList;

    new-instance p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel$1;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;)V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mEnrollmentCallback:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel$1;

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    iput p3, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mUserId:I

    return-void
.end method


# virtual methods
.method public final cancelEnrollment()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    const-string v1, "FingerprintEnrollProgressViewModel"

    if-nez v0, :cond_0

    const-string p0, "Fail to cancel enrollment, has cancelled or not start"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v2, "enrollment cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancelingSignalQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 p0, 0x1

    return p0
.end method

.method public final clearProgressLiveData()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final isEnrolling()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startEnrollment(I)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    const-string v2, "FingerprintEnrollProgressViewModel"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v0, "Null hardware auth token for enroll"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_1

    const-string v1, "Enrolling is running, shall not start again"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {p0 .. p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    move/from16 v8, p1

    if-ne v8, v2, :cond_2

    const v2, 0x7f050070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v7, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;

    invoke-virtual/range {p0 .. p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v12

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    const v2, 0x7f050072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    const v2, 0x7f050071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    iget-object v11, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mEnrollmentCallback:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel$1;

    move-object v9, v7

    invoke-direct/range {v9 .. v17}, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;-><init>(Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;Ljava/time/Clock;IIZZI)V

    iget-object v4, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    iget-object v5, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    iget v6, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mUserId:I

    move/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    iget-object v5, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    iget v6, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mUserId:I

    iget-object v7, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mEnrollmentCallback:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel$1;

    move/from16 v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;ILandroid/content/Intent;)V

    :goto_0
    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object v0
.end method
