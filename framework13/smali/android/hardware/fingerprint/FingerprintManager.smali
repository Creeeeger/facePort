.class public Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricFingerprintConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$MyHandler;,
        Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;,
        Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;,
        Landroid/hardware/fingerprint/FingerprintManager$OnFingerprintDetectionCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;,
        Landroid/hardware/fingerprint/FingerprintManager$SecurityLevel;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationFlag;,
        Landroid/hardware/fingerprint/FingerprintManager$SensorPosition;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollReason;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = true

.field public static final blacklist ENROLL_ENROLL:I = 0x2

.field public static final blacklist ENROLL_FIND_SENSOR:I = 0x1

.field private static final greylist-max-o MSG_ACQUIRED:I = 0x65

.field private static final greylist-max-o MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final greylist-max-o MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final blacklist MSG_CHALLENGE_GENERATED:I = 0x6a

.field private static final greylist-max-o MSG_ENROLL_RESULT:I = 0x64

.field private static final greylist-max-o MSG_ERROR:I = 0x68

.field private static final blacklist MSG_FINGERPRINT_DETECTED:I = 0x6b

.field private static final greylist-max-o MSG_REMOVED:I = 0x69

.field private static final blacklist MSG_UDFPS_POINTER_DOWN:I = 0x6c

.field private static final blacklist MSG_UDFPS_POINTER_UP:I = 0x6d

.field public static final blacklist SECURITY_LEVEL_CONVENIENCE:I = 0x3

.field public static final blacklist SECURITY_LEVEL_NONE:I = 0x0

.field public static final blacklist SECURITY_LEVEL_STRONG:I = 0x1

.field public static final blacklist SECURITY_LEVEL_WEAK:I = 0x2

.field public static final blacklist SEM_FLAG_AUTHENTICATION_NO_SYSTEM_UI:I = 0x8000

.field public static final blacklist SEM_FLAG_SECURITY_2_STEP_VERIFICATION:I = 0x1000

.field public static final whitelist SEM_SENSOR_POSITION_DISPLAY:I = 0x2

.field public static final whitelist SEM_SENSOR_POSITION_HOME_KEY:I = 0x1

.field public static final blacklist SEM_SENSOR_POSITION_POWER_KEY:I = 0x4

.field public static final whitelist SEM_SENSOR_POSITION_REAR:I = 0x3

.field public static final blacklist SENSOR_ID_ANY:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private blacklist mEnrollStageThresholds:[F

.field private greylist-max-o mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private blacklist mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

.field private blacklist mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private blacklist mRemoveTracker:Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;

.field private greylist-max-o mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private greylist-max-o mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEnrollment(Landroid/hardware/fingerprint/FingerprintManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->cancelEnrollment(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelFingerprintDetect(Landroid/hardware/fingerprint/FingerprintManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->cancelFingerprintDetect(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcquiredResult(Landroid/hardware/fingerprint/FingerprintManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->sendAcquiredResult(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedFailed(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedSucceeded(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendChallengeGenerated(Landroid/hardware/fingerprint/FingerprintManager;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->sendChallengeGenerated(IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendEnrollResult(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->sendEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Landroid/hardware/fingerprint/FingerprintManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->sendErrorResult(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendFingerprintDetected(Landroid/hardware/fingerprint/FingerprintManager;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->sendFingerprintDetected(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendRemovedResult(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->sendRemovedResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendUdfpsPointerDown(Landroid/hardware/fingerprint/FingerprintManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->sendUdfpsPointerDown(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendUdfpsPointerUp(Landroid/hardware/fingerprint/FingerprintManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->sendUdfpsPointerUp(I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/fingerprint/IFingerprintService;

    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    .line 1672
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$2;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1460
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1461
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 1462
    if-nez p2, :cond_0

    .line 1463
    const-string v0, "FingerprintManager"

    const-string v1, "FingerprintService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$MyHandler-IA;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 1466
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .locals 6
    .param p1, "requestId"    # J

    .line 1491
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1492
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1494
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1495
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1492
    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    goto :goto_0

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1500
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist cancelEnrollment(J)V
    .locals 2
    .param p1, "requestId"    # J

    .line 1483
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1484
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelEnrollment(Landroid/os/IBinder;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1487
    goto :goto_0

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1488
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist cancelFingerprintDetect(J)V
    .locals 3
    .param p1, "requestId"    # J

    .line 1503
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 1504
    return-void

    .line 1508
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    nop

    .line 1512
    return-void

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static blacklist createEnrollStageThresholds(Landroid/content/Context;)[F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1544
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, "enrollStageThresholdStrings":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [F

    .line 1548
    .local v1, "enrollStageThresholds":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1549
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 1548
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1551
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static blacklist getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1628
    invoke-static {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->semGetAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 1629
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 1633
    :cond_0
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1655
    :pswitch_1
    const v1, 0x104052a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1652
    :pswitch_2
    const v1, 0x1040527

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1666
    :pswitch_3
    return-object v1

    .line 1658
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1660
    .local v2, "msgArray":[Ljava/lang/String;
    array-length v3, v2

    if-ge p2, v3, :cond_1

    .line 1661
    aget-object v1, v2, p2

    return-object v1

    .line 1664
    .end local v2    # "msgArray":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1649
    :pswitch_5
    const v1, 0x104052b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1646
    :pswitch_6
    const v1, 0x104052c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1643
    :pswitch_7
    const v1, 0x1040525

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1640
    :pswitch_8
    const v1, 0x1040528

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1637
    :pswitch_9
    const v1, 0x1040529

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1635
    :pswitch_a
    return-object v1

    .line 1668
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid acquired message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    return-object v1

    .line 1630
    :cond_2
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o getCurrentUserId()I
    .locals 2

    .line 1470
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1471
    :catch_0
    move-exception v0

    .line 1472
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getErrorString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errMsg"    # I
    .param p2, "vendorCode"    # I

    .line 1559
    invoke-static {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->semGetErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 1560
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1561
    return-object v0

    .line 1564
    :cond_0
    const v1, 0x104053c

    packed-switch p1, :pswitch_data_0

    .line 1618
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const v1, 0x104053e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1596
    :pswitch_1
    const v1, 0x1040531

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1593
    :pswitch_2
    const v1, 0x104053a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1590
    :pswitch_3
    const v1, 0x1040534

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1587
    :pswitch_4
    const v1, 0x1040537

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1584
    :pswitch_5
    const v1, 0x104053d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1581
    :pswitch_6
    const v1, 0x1040536

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1600
    :pswitch_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1579
    :pswitch_8
    const v1, 0x1040535

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1577
    :pswitch_9
    const v1, 0x1040532

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1574
    :pswitch_a
    const v1, 0x1040538

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1572
    :pswitch_b
    const v1, 0x104053b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1569
    :pswitch_c
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1566
    :pswitch_d
    const v1, 0x1040533

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 2

    .line 1478
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 1479
    .local v0, "allSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    :goto_0
    return-object v1
.end method

.method private static blacklist semGetAcquiredString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 2499
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2515
    :pswitch_1
    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_0

    .line 2516
    const v1, 0x1040ce8

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2519
    :cond_0
    const/16 v1, 0x3eb

    if-ne p2, v1, :cond_1

    .line 2520
    const v1, 0x1040ce5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2523
    :cond_1
    const/16 v1, 0x3ec

    if-ne p2, v1, :cond_2

    .line 2524
    const v1, 0x1040ce9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2512
    :pswitch_2
    const v1, 0x1040ce7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2509
    :pswitch_3
    const v1, 0x1040ce3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2506
    :pswitch_4
    const v1, 0x1040ce4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2503
    :pswitch_5
    const v1, 0x1040ce6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2528
    :catch_0
    move-exception v1

    .line 2529
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semGetAcquiredString : Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2501
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_6
    return-object v0

    .line 2530
    :cond_2
    :goto_0
    nop

    .line 2531
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist semGetErrorString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errMsg"    # I
    .param p2, "vendorCode"    # I

    .line 2535
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2549
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2537
    :cond_1
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 2546
    const v0, 0x1040532

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2543
    :pswitch_0
    const v0, 0x1040ced

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x1040cea

    .line 2544
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2543
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2539
    :pswitch_1
    const v0, 0x1040ceb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2541
    :pswitch_2
    const v0, 0x1040cec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist semGetSensorPosition()I
    .locals 2

    .line 1757
    const-string v0, "google_touch_display_ultrasonic"

    const-string/jumbo v1, "touch_display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1758
    const/4 v0, 0x2

    return v0

    .line 1759
    :cond_0
    const-string/jumbo v1, "touch_rear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1760
    const/4 v0, 0x3

    return v0

    .line 1761
    :cond_1
    const-string/jumbo v1, "touch_side"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1762
    const/4 v0, 0x4

    return v0

    .line 1764
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist semGetTransitionEffectValue()I
    .locals 2

    .line 1736
    const-string v0, "google_touch_display_ultrasonic"

    const-string/jumbo v1, "transition_effect_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1737
    const/4 v0, 0x1

    return v0

    .line 1738
    :cond_0
    const-string/jumbo v1, "transition_effect_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1739
    const/4 v0, 0x0

    return v0

    .line 1741
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist semRemove(IILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "fingerId"    # I
    .param p3, "requestCallback"    # Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    .line 2468
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2472
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$7;

    invoke-direct {v0, p0, p3}, Landroid/hardware/fingerprint/FingerprintManager$7;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V

    .line 2489
    .local v0, "removalCallback":Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    if-ne p2, v1, :cond_0

    .line 2490
    invoke-virtual {p0, p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    goto :goto_0

    .line 2492
    :cond_0
    new-instance v1, Landroid/hardware/fingerprint/Fingerprint;

    const-wide/16 v2, 0x0

    const-string v4, ""

    invoke-direct {v1, v4, p2, v2, v3}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {p0, v1, p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 2494
    :goto_0
    return-void

    .line 2469
    .end local v0    # "removalCallback":Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have android.permission.MANAGE_FINGERPRINT permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist sendAcquiredResult(II)V
    .locals 4
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1381
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 1384
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 1391
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 1392
    move v1, p2

    goto :goto_0

    :cond_1
    move v1, p1

    .line 1393
    .local v1, "clientInfo":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v2, :cond_2

    .line 1394
    invoke-virtual {v2, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 1395
    :cond_2
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v2, :cond_3

    .line 1396
    const/4 v3, 0x7

    if-eq p1, v3, :cond_3

    if-eqz v0, :cond_3

    .line 1398
    invoke-virtual {v2, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 1401
    :cond_3
    :goto_1
    return-void
.end method

.method private greylist-max-o sendAuthenticatedFailed()V
    .locals 1

    .line 1375
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 1378
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 2
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1367
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 1368
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;-><init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;IZ)V

    .line 1370
    .local v0, "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 1372
    .end local v0    # "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    :cond_0
    return-void
.end method

.method private blacklist sendChallengeGenerated(IIJ)V
    .locals 2
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 1425
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    if-nez v0, :cond_0

    .line 1426
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "sendChallengeGenerated, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return-void

    .line 1429
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;->onChallengeGenerated(IIJ)V

    .line 1430
    return-void
.end method

.method private blacklist sendEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 1
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 1361
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    .line 1362
    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 1364
    :cond_0
    return-void
.end method

.method private blacklist sendErrorResult(II)V
    .locals 4
    .param p1, "errMsgId"    # I
    .param p2, "vendorCode"    # I

    .line 1405
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1406
    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    .line 1407
    .local v0, "clientErrMsgId":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1408
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1409
    invoke-static {v3, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 1408
    invoke-virtual {v1, v0, v3}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 1411
    iput-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    goto :goto_2

    .line 1413
    :cond_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v1, :cond_2

    .line 1414
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1415
    invoke-static {v2, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 1414
    invoke-virtual {v1, v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 1416
    :cond_2
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    if-eqz v1, :cond_4

    .line 1417
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemoveTracker:Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;

    if-eqz v1, :cond_3

    .line 1418
    iget-object v2, v1, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;->mSingleFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    goto :goto_1

    :cond_3
    nop

    :goto_1
    move-object v1, v2

    .line 1419
    .local v1, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1420
    invoke-static {v3, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 1419
    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    .line 1422
    .end local v1    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_4
    :goto_2
    return-void
.end method

.method private blacklist sendFingerprintDetected(IIZ)V
    .locals 2
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1433
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    if-nez v0, :cond_0

    .line 1434
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "sendFingerprintDetected, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return-void

    .line 1437
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;->onFingerprintDetected(IIZ)V

    .line 1438
    return-void
.end method

.method private blacklist sendRemovedResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 5
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 1329
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    if-nez v0, :cond_0

    .line 1330
    return-void

    .line 1333
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemoveTracker:Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;

    const-string v1, "FingerprintManager"

    if-nez v0, :cond_1

    .line 1334
    const-string v0, "Removal tracker is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    return-void

    .line 1338
    :cond_1
    iget v0, v0, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;->mRemoveRequest:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 1339
    if-nez p1, :cond_2

    .line 1340
    const-string v0, "Received MSG_REMOVED, but fingerprint is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return-void

    .line 1344
    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemoveTracker:Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;

    iget-object v0, v0, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;->mSingleFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    if-nez v0, :cond_3

    .line 1345
    const-string v0, "Missing fingerprint"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-void

    .line 1349
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    .line 1350
    .local v0, "fingerId":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemoveTracker:Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;

    iget-object v2, v2, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;->mSingleFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v2

    .line 1351
    .local v2, "reqFingerId":I
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_4

    .line 1352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finger id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    return-void

    .line 1357
    .end local v0    # "fingerId":I
    .end local v2    # "reqFingerId":I
    :cond_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 1358
    return-void
.end method

.method private blacklist sendUdfpsPointerDown(I)V
    .locals 2
    .param p1, "sensorId"    # I

    .line 1441
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_0

    .line 1442
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "sendUdfpsPointerDown, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    return-void

    .line 1445
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onUdfpsPointerDown(I)V

    .line 1446
    return-void
.end method

.method private blacklist sendUdfpsPointerUp(I)V
    .locals 2
    .param p1, "sensorId"    # I

    .line 1449
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_0

    .line 1450
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "sendUdfpsPointerUp, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-void

    .line 1453
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onUdfpsPointerUp(I)V

    .line 1454
    return-void
.end method

.method private greylist-max-o useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 629
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 630
    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 631
    :cond_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 632
    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 634
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 1208
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1210
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    goto :goto_0

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1215
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "FingerprintManager"

    const-string v1, "addProvidersAvailableCallback(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_0
    return-void
.end method

.method public greylist-max-o addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 1239
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1241
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1242
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$1;

    invoke-direct {v2, p0, v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1263
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1242
    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    goto :goto_0

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "FingerprintManager"

    const-string v1, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :goto_0
    return-void
.end method

.method public whitelist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 9
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V

    .line 664
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .locals 8
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I

    .line 673
    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V

    .line 674
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V
    .locals 21
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "sensorId"    # I
    .param p6, "userId"    # I
    .param p7, "flags"    # I

    .line 685
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 687
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v1, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 688
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 685
    const/16 v6, 0x164

    const/4 v7, 0x1

    invoke-static {v6, v7, v0, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 690
    if-eqz v4, :cond_4

    .line 694
    const-string v5, "FingerprintManager"

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    const-string v0, "authentication already canceled"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void

    .line 701
    :cond_0
    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_3

    .line 703
    move-object/from16 v6, p4

    :try_start_0
    invoke-direct {v1, v6}, Landroid/hardware/fingerprint/FingerprintManager;->useHandler(Landroid/os/Handler;)V

    .line 704
    iput-object v4, v1, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 705
    iput-object v2, v1, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 706
    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getOpId()J

    move-result-wide v8

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    :goto_0
    move-wide v12, v8

    .line 708
    .local v12, "operationId":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 709
    .local v0, "b":Landroid/os/Bundle;
    iget-object v8, v1, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 710
    iget-object v10, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v11, v1, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v8, v1, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v9, v1, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 712
    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v9, v1, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 713
    invoke-virtual {v9}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v19

    .line 710
    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, v8

    move/from16 v17, p7

    move-object/from16 v20, v0

    invoke-interface/range {v10 .. v20}, Landroid/hardware/fingerprint/IFingerprintService;->semAuthenticate(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)J

    move-result-wide v8

    .line 729
    .local v8, "authId":J
    if-eqz v3, :cond_2

    .line 730
    new-instance v10, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v10, v1, v8, v9}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;J)V

    invoke-virtual {v3, v10}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v8    # "authId":J
    .end local v12    # "operationId":J
    :cond_2
    goto :goto_1

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "Remote exception while authenticating: "

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    iget-object v5, v1, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    .line 737
    invoke-static {v5, v7, v8}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .line 736
    invoke-virtual {v4, v7, v5}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 701
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v6, p4

    .line 741
    :goto_1
    return-void

    .line 691
    :cond_4
    move-object/from16 v6, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must supply an authentication callback"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createTestSession(I)Landroid/hardware/biometrics/BiometricTestSession;
    .locals 3
    .param p1, "sensorId"    # I

    .line 277
    :try_start_0
    new-instance v0, Landroid/hardware/biometrics/BiometricTestSession;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-direct {v0, v1, p1, v2}, Landroid/hardware/biometrics/BiometricTestSession;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist detectFingerprint(Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;I)V
    .locals 5
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;
    .param p3, "userId"    # I

    .line 751
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 752
    return-void

    .line 755
    :cond_0
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const-string v1, "FingerprintManager"

    if-eqz v0, :cond_1

    .line 756
    const-string v0, "Detection already cancelled"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void

    .line 760
    :cond_1
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 764
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 763
    invoke-interface {v0, v2, p3, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService;->detectFingerprint(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)J

    move-result-wide v2

    .line 765
    .local v2, "authId":J
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnFingerprintDetectionCancelListener;

    invoke-direct {v0, p0, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$OnFingerprintDetectionCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;J)V

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v2    # "authId":J
    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception when requesting finger detect"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;I)V
    .locals 8
    .param p1, "hardwareAuthToken"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .param p5, "enrollReason"    # I

    .line 791
    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    .line 792
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result p3

    .line 794
    :cond_0
    if-eqz p4, :cond_4

    .line 798
    const-string v7, "FingerprintManager"

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    const-string v0, "enrollment already canceled"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_3

    .line 805
    :try_start_0
    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 806
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 807
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 806
    move-object v2, p1

    move v3, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J

    move-result-wide v0

    .line 808
    .local v0, "enrollId":J
    if-eqz p2, :cond_2

    .line 809
    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;JLandroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {p2, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    .end local v0    # "enrollId":J
    :cond_2
    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Remote exception in enroll: "

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 816
    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-virtual {p4, v3, v1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 820
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return-void

    .line 795
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generateChallenge(IILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V
    .locals 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    .line 836
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 837
    :try_start_0
    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    .line 838
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 839
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 838
    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    goto :goto_0

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 843
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    .line 852
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    .line 853
    .local v0, "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    if-nez v0, :cond_0

    .line 854
    const-string v1, "FingerprintManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void

    .line 857
    :cond_0
    iget v1, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(IILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    .line 858
    return-void
.end method

.method public blacklist getEnrollStageCount()I
    .locals 1

    .line 1518
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    if-nez v0, :cond_0

    .line 1519
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->createEnrollStageThresholds(Landroid/content/Context;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    .line 1521
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist getEnrollStageThreshold(I)F
    .locals 3
    .param p1, "index"    # I

    .line 1528
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    if-nez v0, :cond_0

    .line 1529
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->createEnrollStageThresholds(Landroid/content/Context;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    .line 1532
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz p1, :cond_3

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    array-length v2, v1

    if-le p1, v2, :cond_1

    goto :goto_1

    .line 1538
    :cond_1
    array-length v2, v1

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    aget v0, v1, p1

    :goto_0
    return v0

    .line 1533
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported enroll stage index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    if-gez p1, :cond_4

    const/4 v0, 0x0

    :cond_4
    return v0
.end method

.method public greylist getEnrolledFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getEnrolledFingerprints(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 970
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 971
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 972
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 971
    invoke-interface {v0, p1, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 976
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLockoutModeForUser(II)I
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 1225
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1227
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->getLockoutModeForUser(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1232
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSensorProperties()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorProperties;>;"
    nop

    .line 261
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    .line 262
    .local v1, "internalProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 263
    .local v3, "internalProp":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    invoke-static {v3}, Landroid/hardware/fingerprint/FingerprintSensorProperties;->from(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Landroid/hardware/fingerprint/FingerprintSensorProperties;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v3    # "internalProp":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    goto :goto_0

    .line 265
    :cond_0
    return-object v0
.end method

.method public blacklist getSensorPropertiesInternal()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 1175
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 1176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1178
    :cond_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasEnrolledFingerprints()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1115
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1117
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1118
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1115
    const/16 v2, 0x164

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1120
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasEnrolledFingerprints(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1130
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1131
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1132
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1131
    invoke-interface {v0, p1, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1136
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasEnrolledTemplates()Z
    .locals 1

    .line 995
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnrolledTemplates(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1002
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isHardwareDetected()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1149
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1151
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1152
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1149
    const/16 v2, 0x164

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1154
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1156
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1157
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1156
    invoke-interface {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1162
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "FingerprintManager"

    const-string v1, "isFingerprintHardwareDetected(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPowerbuttonFps()Z
    .locals 3

    .line 1190
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    .line 1191
    .local v0, "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    iget v1, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method synthetic blacklist lambda$createTestSession$0$android-hardware-fingerprint-FingerprintManager(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorId1"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, p3, v1}, Landroid/hardware/fingerprint/IFingerprintService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    .line 278
    return-object v0
.end method

.method public blacklist onPointerDown(JIIIFF)V
    .locals 8
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "minor"    # F
    .param p7, "major"    # F

    .line 1059
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 1060
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "onFingerDown: no fingerprint service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    return-void

    .line 1065
    :cond_0
    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    :try_start_0
    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->onPointerDown(JIIIFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    nop

    .line 1069
    return-void

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onPointerUp(JI)V
    .locals 2
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I

    .line 1076
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 1077
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "onFingerDown: no fingerprint service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    return-void

    .line 1082
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintService;->onPointerUp(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    nop

    .line 1086
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onUiReady(JI)V
    .locals 2
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I

    .line 1093
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 1094
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "onUiReady: no fingerprint service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1099
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintService;->onUiReady(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    nop

    .line 1103
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/biometrics/BiometricStateListener;

    .line 1047
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    nop

    .line 1051
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .locals 8
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 912
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 913
    :try_start_0
    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 914
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;-><init>(ILandroid/hardware/fingerprint/Fingerprint;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemoveTracker:Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;

    .line 915
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v4

    iget-object v6, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 916
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 915
    move v5, p2

    invoke-interface/range {v2 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 920
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 928
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 930
    :try_start_0
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 931
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;-><init>(ILandroid/hardware/fingerprint/Fingerprint;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemoveTracker:Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;

    .line 932
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 937
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o rename(IILjava/lang/String;)V
    .locals 2
    .param p1, "fpId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .line 950
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 952
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    goto :goto_0

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 957
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "rename(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_0
    return-void
.end method

.method public blacklist request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I
    .locals 8
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    .line 2397
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;I)I

    move-result v0

    return v0
.end method

.method public blacklist request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;I)I
    .locals 17
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;
    .param p6, "userId"    # I

    .line 2408
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    const/4 v0, -0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 2437
    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    const-string v14, "FingerprintManager"

    if-eqz v0, :cond_5

    .line 2439
    if-nez v2, :cond_2

    .line 2440
    :try_start_0
    new-array v0, v4, [B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2430
    :sswitch_0
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 2431
    new-instance v0, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v0, v12}, Landroid/hardware/fingerprint/FingerprintManager;->semUpdateTrustApp(Ljava/lang/String;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V

    .line 2432
    return v4

    .line 2434
    :cond_0
    return v0

    .line 2420
    :sswitch_1
    if-eqz v3, :cond_1

    array-length v5, v3

    if-lez v5, :cond_1

    .line 2421
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetTrustAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 2422
    .local v0, "taVersion":Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 2423
    .local v5, "src":[B
    array-length v6, v5

    array-length v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2424
    .local v6, "size":I
    invoke-static {v5, v4, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2425
    return v6

    .line 2427
    .end local v0    # "taVersion":Ljava/lang/String;
    .end local v5    # "src":[B
    .end local v6    # "size":I
    :cond_1
    return v0

    .line 2412
    :sswitch_2
    invoke-virtual {v1, v11}, Landroid/hardware/fingerprint/FingerprintManager;->semSetCalibrationMode(I)I

    move-result v0

    return v0

    .line 2415
    :sswitch_3
    invoke-direct {v1, v13, v11, v12}, Landroid/hardware/fingerprint/FingerprintManager;->semRemove(IILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V

    .line 2416
    return v4

    .line 2410
    :sswitch_4
    invoke-virtual {v1, v13, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->semProcessFido(I[B[B)I

    move-result v0

    return v0

    .line 2440
    :goto_0
    move-object v15, v0

    .end local p2    # "inputBuf":[B
    .local v0, "inputBuf":[B
    goto :goto_1

    .line 2457
    .end local v0    # "inputBuf":[B
    .restart local p2    # "inputBuf":[B
    :catch_0
    move-exception v0

    move-object v15, v2

    move-object/from16 v16, v3

    goto :goto_3

    .line 2439
    :cond_2
    move-object v15, v2

    .line 2442
    .end local p2    # "inputBuf":[B
    .local v15, "inputBuf":[B
    :goto_1
    if-nez v3, :cond_3

    .line 2443
    :try_start_1
    new-array v0, v4, [B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v16, v0

    .end local p3    # "outputBuf":[B
    .local v0, "outputBuf":[B
    goto :goto_2

    .line 2457
    .end local v0    # "outputBuf":[B
    .restart local p3    # "outputBuf":[B
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_3

    .line 2442
    :cond_3
    move-object/from16 v16, v3

    .line 2445
    .end local p3    # "outputBuf":[B
    .local v16, "outputBuf":[B
    :goto_2
    const/4 v0, 0x0

    .line 2446
    .local v0, "requestCallback":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    if-eqz v12, :cond_4

    .line 2447
    :try_start_2
    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$6;

    invoke-direct {v2, v1, v12}, Landroid/hardware/fingerprint/FingerprintManager$6;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V

    move-object v0, v2

    .line 2454
    :cond_4
    iget-object v2, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, v1, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v4, v1, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 2455
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2454
    move/from16 v4, p1

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, p4

    move/from16 v8, p6

    move-object v10, v0

    invoke-interface/range {v2 .. v10}, Landroid/hardware/fingerprint/IFingerprintService;->semRequest(Landroid/os/IBinder;I[B[BIILjava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I

    move-result v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return v2

    .line 2457
    .end local v0    # "requestCallback":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    :catch_2
    move-exception v0

    .line 2458
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3
    const-string v2, "Remote exception in request : "

    invoke-static {v14, v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2459
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 2461
    .end local v15    # "inputBuf":[B
    .end local v16    # "outputBuf":[B
    .restart local p2    # "inputBuf":[B
    .restart local p3    # "outputBuf":[B
    :cond_5
    const-string/jumbo v0, "request : Service not connected!"

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v2

    move-object/from16 v16, v3

    .line 2464
    .end local p2    # "inputBuf":[B
    .end local p3    # "outputBuf":[B
    .restart local v15    # "inputBuf":[B
    .restart local v16    # "outputBuf":[B
    :goto_4
    const/4 v0, -0x2

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0x3e8 -> :sswitch_3
        0x3f8 -> :sswitch_2
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist requestSessionOpen()Z
    .locals 3

    .line 1916
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1918
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semOpenSession()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1919
    :catch_0
    move-exception v0

    .line 1920
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSessionOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetLockout(II[B)V
    .locals 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "hardwareAuthToken"    # [B

    .line 891
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 893
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 894
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 893
    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 899
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist revokeChallenge(IJ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "challenge"    # J

    .line 866
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1

    .line 868
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    .line 869
    .local v0, "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    if-nez v0, :cond_0

    .line 870
    const-string v1, "FingerprintManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return-void

    .line 873
    :cond_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget v3, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 874
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 873
    move v4, p1

    move-wide v6, p2

    invoke-interface/range {v1 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    .end local v0    # "sensorProps":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 879
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist semAddMaskView()Landroid/os/IBinder;
    .locals 3

    .line 2057
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2059
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->semAddMaskView(Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2060
    :catch_0
    move-exception v0

    .line 2061
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semAddMaskView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semForceCBGE()I
    .locals 3

    .line 1822
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1824
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semForceCBGE()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1825
    const/4 v0, 0x0

    return v0

    .line 1826
    :catch_0
    move-exception v0

    .line 1827
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semForceCBGE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public blacklist semGetDaemonVersion()Ljava/lang/String;
    .locals 3

    .line 1963
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1965
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semGetDaemonVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1966
    :catch_0
    move-exception v0

    .line 1967
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetDaemonVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist semGetFingerIconRectInDisplay()Landroid/graphics/Rect;
    .locals 5

    .line 2192
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2194
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2195
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2196
    .local v1, "size":Landroid/graphics/Point;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2197
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    const/4 v3, 0x1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Landroid/hardware/fingerprint/IFingerprintService;->semGetSensorAreaInDisplay(IILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2199
    .end local v0    # "wm":Landroid/view/WindowManager;
    .end local v1    # "size":Landroid/graphics/Point;
    :catch_0
    move-exception v0

    .line 2200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semGetFingerIconRectInDisplay: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public blacklist semGetIconBottomMargin()I
    .locals 3

    .line 2213
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2215
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semGetIconBottomMargin()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2216
    :catch_0
    move-exception v0

    .line 2217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semGetIconBottomMargin: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2220
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetMaxEnrollmentNumber()I
    .locals 3

    .line 1777
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1779
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semGetMaxEnrollmentNumber()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1780
    :catch_0
    move-exception v0

    .line 1781
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetMaxEnrollmentNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist semGetRemainingLockoutTime(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 2380
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2382
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->semGetRemainingLockoutTime(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2383
    :catch_0
    move-exception v0

    .line 2384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semGetRemainingLockoutTime: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetSecurityLevel()I
    .locals 3

    .line 2257
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2259
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semGetSecurityLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2260
    :catch_0
    move-exception v0

    .line 2261
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semGetSecurityLevel: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2264
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetSensorAreaInDisplay()Landroid/graphics/Rect;
    .locals 3

    .line 2173
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2175
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2, v2, v1}, Landroid/hardware/fingerprint/IFingerprintService;->semGetSensorAreaInDisplay(IILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2176
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semGetSensorAreaInDisplay: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2180
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public blacklist semGetSensorInfo()Ljava/lang/String;
    .locals 3

    .line 1932
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1934
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semGetSensorInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetSensorInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist semGetSensorStatus()I
    .locals 3

    .line 1869
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1871
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semGetSensorStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1872
    :catch_0
    move-exception v0

    .line 1873
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetSensorStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetSensorTestResult([B)I
    .locals 3
    .param p1, "outBuffer"    # [B

    .line 2006
    if-nez p1, :cond_0

    .line 2007
    const/4 v0, -0x1

    return v0

    .line 2009
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1

    .line 2011
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->semGetSensorTestResult([B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2012
    :catch_0
    move-exception v0

    .line 2013
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetSensorTestResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v0, -0x2

    return v0
.end method

.method public blacklist semGetService()Landroid/hardware/fingerprint/IFingerprintService;
    .locals 1

    .line 1811
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    return-object v0
.end method

.method public blacklist semGetTrustAppVersion()Ljava/lang/String;
    .locals 3

    .line 2289
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2291
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semGetTrustAppVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semGetTrustAppVersion: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2296
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist semGetUserIdList()[Ljava/lang/String;
    .locals 3

    .line 1948
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1950
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semGetUserIdList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1951
    :catch_0
    move-exception v0

    .line 1952
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetUserIdList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist semHasFeature(I)Z
    .locals 3
    .param p1, "feature"    # I

    .line 1795
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1797
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->semHasFeature(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1798
    :catch_0
    move-exception v0

    .line 1799
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semHasFeature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semHasNewMatcher(I)Z
    .locals 1
    .param p1, "param"    # I

    .line 2272
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsEnrollSession()Z
    .locals 3

    .line 1836
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1838
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semIsEnrollSession()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1839
    :catch_0
    move-exception v0

    .line 1840
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsEnrollSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsTemplateDbCorrupted()Z
    .locals 3

    .line 1852
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1854
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semIsTemplateDbCorrupted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1855
    :catch_0
    move-exception v0

    .line 1856
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsTemplateDbCorrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semMoveSensorIconInDisplay(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2228
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2230
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->semMoveSensorIconInDisplay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2233
    goto :goto_0

    .line 2231
    :catch_0
    move-exception v0

    .line 2232
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semMoveSensorIconInDisplay: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2235
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semPauseEnroll()Z
    .locals 3

    .line 1885
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1887
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semPauseEnroll()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1888
    :catch_0
    move-exception v0

    .line 1889
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semPauseEnroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semProcessFido(I[B[B)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "in"    # [B
    .param p3, "out"    # [B

    .line 2358
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2360
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 2361
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2360
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/hardware/fingerprint/IFingerprintService;->semProcessFido(I[B[BLjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2362
    :catch_0
    move-exception v0

    .line 2363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semProcessFido: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2366
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist semRegisterFingerprintViewListener(Landroid/hardware/fingerprint/SemFingerprintViewListener;)Landroid/os/IBinder;
    .locals 4
    .param p1, "listener"    # Landroid/hardware/fingerprint/SemFingerprintViewListener;

    .line 2089
    if-eqz p1, :cond_1

    .line 2092
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    const-string v1, "FingerprintManager"

    if-eqz v0, :cond_0

    .line 2094
    :try_start_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$4;

    invoke-direct {v0, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$4;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/SemFingerprintViewListener;)V

    .line 2136
    .local v0, "aodController":Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v0}, Landroid/hardware/fingerprint/IFingerprintService;->semRegisterAodController(Landroid/os/IBinder;Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V

    .line 2137
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2138
    .end local v0    # "aodController":Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;
    :catch_0
    move-exception v0

    .line 2139
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "semRegisterAodController : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2140
    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 2142
    :cond_0
    const-string/jumbo v0, "semRegisterFingerprintViewListener : Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    return-object v0

    .line 2090
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist semRemoveMaskView(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2073
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2075
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/fingerprint/IFingerprintService;->semRemoveMaskView(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2076
    :catch_0
    move-exception v0

    .line 2077
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semRemoveMaskView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public blacklist semResumeEnroll()Z
    .locals 3

    .line 1901
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1903
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->semResumeEnroll()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semResumeEnroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semRunSensorTest(IILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "param"    # I
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    .line 1979
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1

    .line 1980
    if-eqz p3, :cond_0

    .line 1984
    :try_start_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/fingerprint/FingerprintManager$3;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V

    .line 1992
    .local v0, "requestCallback":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/hardware/fingerprint/IFingerprintService;->semRunSensorTest(Landroid/os/IBinder;IILcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1993
    .end local v0    # "requestCallback":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    :catch_0
    move-exception v0

    .line 1994
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semRunSensorTest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1981
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an Request callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1997
    :cond_1
    :goto_0
    const/4 v0, -0x2

    return v0
.end method

.method public blacklist semSetCalibrationMode(I)I
    .locals 3
    .param p1, "param"    # I

    .line 2343
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2345
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->semSetCalibrationMode(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2348
    goto :goto_0

    .line 2346
    :catch_0
    move-exception v0

    .line 2347
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semSetCalibrationMode: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2350
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist semSetFlagForIFAA(ILjava/lang/String;)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "targetAppPackageName"    # Ljava/lang/String;

    .line 2243
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2245
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->semSetFlagForIFAA(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    goto :goto_0

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semSetFlagForIFAA: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2250
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semSetFodStrictMode(Z)V
    .locals 3
    .param p1, "isStrictMode"    # Z

    .line 2329
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2331
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->semSetFodStrictMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2334
    goto :goto_0

    .line 2332
    :catch_0
    move-exception v0

    .line 2333
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semSetFodStrictMode: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2336
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semSetScreenStatus(I)I
    .locals 3
    .param p1, "screenStatus"    # I

    .line 2025
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2027
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->semSetScreenStatus(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2028
    :catch_0
    move-exception v0

    .line 2029
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetScreenStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semShowBouncerScreen(I)I
    .locals 3
    .param p1, "showStatus"    # I

    .line 2041
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 2043
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->semShowBouncerScreen(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2044
    :catch_0
    move-exception v0

    .line 2045
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semShowBouncerScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semUnregisterFingerprintViewListener(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2153
    if-eqz p1, :cond_1

    .line 2156
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    const-string v1, "FingerprintManager"

    if-eqz v0, :cond_0

    .line 2158
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->semUnregisterAodController(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2159
    :catch_0
    move-exception v0

    .line 2160
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "semUnregisterAodController : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2161
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 2163
    :cond_0
    const-string/jumbo v0, "semUnregisterFingerprintViewListener : Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :goto_1
    return-void

    .line 2154
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist semUpdateMatcher(I)Z
    .locals 1
    .param p1, "param"    # I

    .line 2280
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semUpdateTrustApp(Ljava/lang/String;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    .line 2304
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1

    .line 2305
    if-eqz p2, :cond_0

    .line 2309
    :try_start_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$5;

    invoke-direct {v0, p0, p2}, Landroid/hardware/fingerprint/FingerprintManager$5;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V

    .line 2316
    .local v0, "requestCallback":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Landroid/hardware/fingerprint/IFingerprintService;->semUpdateTrustApp(Ljava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2319
    .end local v0    # "requestCallback":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    goto :goto_0

    .line 2317
    :catch_0
    move-exception v0

    .line 2318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "semUpdateTrustApp: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2306
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an Request callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2321
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
    .locals 2
    .param p1, "controller"    # Landroid/hardware/fingerprint/ISidefpsController;

    .line 1027
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 1028
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "setSidefpsController: no fingerprint service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return-void

    .line 1033
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    nop

    .line 1037
    return-void

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .locals 2
    .param p1, "controller"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 1010
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 1011
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "setUdfpsOverlayController: no fingerprint service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return-void

    .line 1016
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    nop

    .line 1020
    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
