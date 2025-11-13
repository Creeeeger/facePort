.class public final Lcom/android/systemui/biometrics/BiometricNotificationService;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mBroadcastReceiver:Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public mFaceNotificationQueued:Z

.field public final mFaceStateListener:Lcom/android/systemui/biometrics/BiometricNotificationService$3;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mFingerprintNotificationQueued:Z

.field public final mFingerprintReEnrollNotification:Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;

.field public mFingerprintReenrollRequired:Z

.field public final mFingerprintStateListener:Lcom/android/systemui/biometrics/BiometricNotificationService$4;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFingerprintReenrollForced:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/biometrics/BiometricNotificationService$1;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mNotificationChannel:Landroid/app/NotificationChannel;

.field public final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Landroid/app/NotificationManager;Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;Ljava/util/Optional;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Landroid/os/Handler;",
            "Landroid/app/NotificationManager;",
            "Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;",
            ">;",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/hardware/face/FaceManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricNotificationService$1;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationService;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardStateControllerCallback:Lcom/android/systemui/biometrics/BiometricNotificationService$1;

    new-instance v0, Lcom/android/systemui/biometrics/BiometricNotificationService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricNotificationService$2;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationService;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/biometrics/BiometricNotificationService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricNotificationService$3;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationService;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFaceStateListener:Lcom/android/systemui/biometrics/BiometricNotificationService$3;

    new-instance v0, Lcom/android/systemui/biometrics/BiometricNotificationService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricNotificationService$4;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationService;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintStateListener:Lcom/android/systemui/biometrics/BiometricNotificationService$4;

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p4, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p6, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mBroadcastReceiver:Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;

    new-instance p1, Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;

    invoke-direct {p1}, Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;-><init>()V

    invoke-virtual {p7, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintReEnrollNotification:Lcom/android/systemui/biometrics/FingerprintReEnrollNotificationImpl;

    iput-object p8, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p9, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method


# virtual methods
.method public final showNotification(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFaceNotificationQueued:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p5, v2, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintNotificationQueued:Z

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "BiometricNotificationService"

    if-nez v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Failed to show notification "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Notification manager is null!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "is_reenroll_forced"

    invoke-virtual {v2, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    sget-object p6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v4, 0xc000000

    invoke-static {p1, v0, v2, v4, p6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    const-string v4, "BiometricHiPriNotificationChannel"

    invoke-direct {v0, v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v2, "sys"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x1080454

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p3, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v3, p5, p1, p6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardStateControllerCallback:Lcom/android/systemui/biometrics/BiometricNotificationService$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v2, "BiometricHiPriNotificationChannel"

    const-string v3, " Biometric Unlock"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationChannel:Landroid/app/NotificationChannel;

    const-string v0, "fingerprint_action_show_reenroll_dialog"

    const-string v1, "face_action_show_reenroll_dialog"

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mBroadcastReceiver:Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintStateListener:Lcom/android/systemui/biometrics/BiometricNotificationService$4;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFaceStateListener:Lcom/android/systemui/biometrics/BiometricNotificationService$3;

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "face_unlock_re_enroll"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
