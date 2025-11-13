.class public final Lcom/android/systemui/biometrics/BiometricNotificationService$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public mIsShowing:Z

.field public final synthetic this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/BiometricNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->mIsShowing:Z

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 13

    iget-object v6, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    iget-object v0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-boolean v2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->mIsShowing:Z

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->mIsShowing:Z

    iget-object p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_unlock_re_enroll"

    const/4 v1, -0x2

    const/4 v7, 0x0

    invoke-static {p0, v0, v7, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const-wide/16 v8, 0x1388

    const v10, 0x7f13024f

    const-string v11, "BiometricNotificationService"

    const/4 v12, 0x1

    if-ne p0, v12, :cond_1

    iget-boolean p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFaceNotificationQueued:Z

    if-nez p0, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Face re-enroll notification queued."

    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFaceNotificationQueued:Z

    iget-object p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    const v0, 0x7f1306b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    const v0, 0x7f1306b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-boolean p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintReenrollRequired:Z

    if-eqz p0, :cond_2

    iget-boolean p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintNotificationQueued:Z

    if-nez p0, :cond_2

    iput-boolean v7, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintReenrollRequired:Z

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Fingerprint re-enroll notification queued."

    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintNotificationQueued:Z

    iget-object p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    const v0, 0x7f1306d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    const v0, 0x7f1306d0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->mIsShowing:Z

    return-void
.end method
