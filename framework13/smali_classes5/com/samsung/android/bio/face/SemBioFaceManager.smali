.class public Lcom/samsung/android/bio/face/SemBioFaceManager;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    }
.end annotation


# static fields
.field public static final blacklist BUNDLE_AUTH_COORDINATE_H:Ljava/lang/String; = "auth_coordinate_h"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_TOKEN:Ljava/lang/String; = "auth_coordinate_token"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_W:Ljava/lang/String; = "auth_coordinate_w"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_X:Ljava/lang/String; = "auth_coordinate_x"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_Y:Ljava/lang/String; = "auth_coordinate_y"

.field public static final blacklist BUNDLE_PREVIEW_ON_TOP:Ljava/lang/String; = "preview_on_top"

.field public static final blacklist BUNDLE_SET_SECURITY_LEVEL:Ljava/lang/String; = "security_level"

.field public static final blacklist BUNDLE_SET_TIMEOUT:Ljava/lang/String; = "set_timeout"

.field public static final blacklist BUNDLE_SKIP_WAKELOCK:Ljava/lang/String; = "skip_wakelock"

.field public static final blacklist BUNDLE_SUPPORT_AUTH_COORDINATE:Ljava/lang/String; = "support_auth_coordinate"

.field private static final blacklist DEBUG:Z

.field public static final blacklist EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field public static final whitelist FACE_ACQUIRED_FAKE:I = 0x4

.field public static final whitelist FACE_ACQUIRED_GOOD:I = 0x0

.field public static final whitelist FACE_ACQUIRED_INVALID:I = 0x2

.field public static final whitelist FACE_ACQUIRED_LOW_QUALITY:I = 0x3

.field public static final whitelist FACE_ACQUIRED_MISALIGNED:I = 0x7

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM:I = 0x3f5

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM_LEFT:I = 0x3f4

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM_RIGHT:I = 0x3f6

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_LEFT:I = 0x3f1

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_MIDDLE:I = 0x3f2

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_RIGHT:I = 0x3f3

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP:I = 0x3ef

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP_LEFT:I = 0x3ee

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP_RIGHT:I = 0x3f0

.field public static final blacklist FACE_ACQUIRED_ON_MASK:I = 0x3f9

.field public static final blacklist FACE_ACQUIRED_PROCESS_FAIL:I = 0x1

.field public static final blacklist FACE_ACQUIRED_PROXIMITY_ALERT:I = 0x3e9

.field public static final blacklist FACE_ACQUIRED_REVERSE_ORIENTATION:I = 0x3ea

.field public static final blacklist FACE_ACQUIRED_SURFACE_UPDATED:I = 0x7d1

.field public static final whitelist FACE_ACQUIRED_TOO_BIG:I = 0x5

.field public static final blacklist FACE_ACQUIRED_TOO_DARK:I = 0x3f7

.field public static final whitelist FACE_ACQUIRED_TOO_SMALL:I = 0x6

.field public static final blacklist FACE_ACQUIRED_WITH_GLASSES:I = 0x3f8

.field public static final blacklist FACE_ERROR_CAMERA_ACCESS_SETTING_OFF:I = 0x186a3

.field public static final whitelist FACE_ERROR_CAMERA_FAILURE:I = 0x2713

.field public static final whitelist FACE_ERROR_CAMERA_UNAVAILABLE:I = 0x2715

.field public static final whitelist FACE_ERROR_CANCELED:I = 0x5

.field public static final blacklist FACE_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final blacklist FACE_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final whitelist FACE_ERROR_LOCKOUT:I = 0x2711

.field public static final whitelist FACE_ERROR_LOCKOUT_PERMANENT:I = 0x2712

.field public static final whitelist FACE_ERROR_NO_SPACE:I = 0x4

.field public static final blacklist FACE_ERROR_ON_MASK:I = 0x3ee

.field public static final blacklist FACE_ERROR_PPP_TIMEOUT:I = 0x3ed

.field public static final blacklist FACE_ERROR_TEMPLATE_CORRUPTED:I = 0x3ec

.field public static final whitelist FACE_ERROR_TIMEOUT:I = 0x3

.field public static final blacklist FACE_ERROR_TOO_DARK:I = 0x186a1

.field public static final blacklist FACE_ERROR_TOO_DARK_TO_ENROLL:I = 0x186a2

.field public static final whitelist FACE_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final blacklist FACE_ERROR_USER_CANCELED:I = 0xa

.field public static final blacklist FACE_OK:I = 0x0

.field public static final blacklist FLAG_ENROLL_WITHOUT_TOKEN:I = 0x1

.field public static final blacklist IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

.field private static final blacklist MSG_ACQUIRED:I = 0x65

.field private static final blacklist MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final blacklist MSG_ERROR:I = 0x68

.field private static final blacklist PKG_NAME_DESKTOP_KEYGUARD:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static final blacklist PKG_NAME_KEYGUARD:Ljava/lang/String; = "com.android.systemui"

.field public static final blacklist PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final blacklist PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field public static final blacklist PRIVILEGED_FLAG_USE_SETTING_FOR_SECURITY_LEVEL:I = 0x2

.field public static final blacklist SECURITY_LEVEL_CONVENIENCE:I = 0x3

.field public static final blacklist SECURITY_LEVEL_NONE:I = 0x0

.field public static final blacklist SECURITY_LEVEL_STRONG:I = 0x1

.field public static final blacklist SECURITY_LEVEL_WEAK:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SemBioFaceManager"


# instance fields
.field private blacklist mAuthRequestId:J

.field private blacklist mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private blacklist mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthRequestId(Lcom/samsung/android/bio/face/SemBioFaceManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAuthRequestId(Lcom/samsung/android/bio/face/SemBioFaceManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAuthenticationCallback(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAcquiredResult(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendErrorResult(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$museHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->useHandler(Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSepMappedError(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedError(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSepMappedHelp(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedHelp(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 77
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    .line 367
    nop

    .line 368
    const-string v0, "in_house"

    const-string v1, "jdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

    .line 367
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    .line 374
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    .line 1415
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1416
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 1417
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    .line 1418
    return-void
.end method

.method private blacklist authenticateForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "b"    # Landroid/os/Bundle;

    .line 1443
    if-eqz p4, :cond_1

    .line 1446
    if-eqz p2, :cond_0

    .line 1447
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    const-string v0, "SemBioFaceManager"

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    return-void

    .line 1452
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->biometricPromptForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 1453
    return-void

    .line 1444
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist biometricPromptForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 14
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .param p6, "attr"    # Landroid/os/Bundle;

    .line 1471
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SemBioFaceManager"

    const-string v3, "biometricPromptForDex"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const v3, 0x104061d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1474
    .local v2, "strTitle":Ljava/lang/String;
    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const v4, 0x104061b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1476
    .local v3, "strCancel":Ljava/lang/String;
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 1477
    iput-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 1479
    new-instance v5, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v6, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 1480
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    .line 1481
    invoke-virtual {v5, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1482
    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v5, v3, v6, v7}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    .line 1488
    .local v5, "builder":Landroid/hardware/biometrics/BiometricPrompt$Builder;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 1489
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 1491
    invoke-virtual {v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v6

    .line 1493
    .local v6, "bp":Landroid/hardware/biometrics/BiometricPrompt;
    new-instance v7, Landroid/os/CancellationSignal;

    invoke-direct {v7}, Landroid/os/CancellationSignal;-><init>()V

    move-object v13, v7

    .line 1494
    .local v13, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v7, Lcom/samsung/android/bio/face/SemBioFaceManager$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$2;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v13, v7}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1503
    new-instance v11, Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    invoke-direct {v11, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$3;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    .line 1539
    .local v11, "authenticationCallback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v8

    move-object v12, v8

    goto :goto_0

    :cond_0
    move-object v12, v7

    .line 1541
    .local v12, "fidoRequestData":[B
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v7

    :goto_1
    move-object v8, v7

    .line 1543
    .local v8, "cryptoForBp":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    iget-object v7, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    move-object v7, v6

    move-object v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/hardware/biometrics/BiometricPrompt;->semAuthenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;[B)V

    .line 1545
    return-void
.end method

.method public static whitelist createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1408
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1395
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSepMappedAcquiredInfo(II)I
    .locals 3
    .param p0, "acquireInfo"    # I
    .param p1, "vendorCode"    # I

    .line 1065
    move v0, p0

    .line 1067
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_0

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedAcquiredInfo: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1160
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1198
    :pswitch_2
    const/16 v0, 0x3f9

    goto :goto_0

    .line 1195
    :pswitch_3
    const/16 v0, 0x3f8

    .line 1196
    goto :goto_0

    .line 1192
    :pswitch_4
    const/16 v0, 0x3f7

    .line 1193
    goto :goto_0

    .line 1183
    :pswitch_5
    const/16 v0, 0x3f6

    .line 1184
    goto :goto_0

    .line 1180
    :pswitch_6
    const/16 v0, 0x3f5

    .line 1181
    goto :goto_0

    .line 1177
    :pswitch_7
    const/16 v0, 0x3f4

    .line 1178
    goto :goto_0

    .line 1174
    :pswitch_8
    const/16 v0, 0x3f3

    .line 1175
    goto :goto_0

    .line 1171
    :pswitch_9
    const/16 v0, 0x3f1

    .line 1172
    goto :goto_0

    .line 1168
    :pswitch_a
    const/16 v0, 0x3f0

    .line 1169
    goto :goto_0

    .line 1165
    :pswitch_b
    const/16 v0, 0x3ef

    .line 1166
    goto :goto_0

    .line 1162
    :pswitch_c
    const/16 v0, 0x3ee

    .line 1163
    goto :goto_0

    .line 1189
    :pswitch_d
    const/4 v0, 0x4

    .line 1190
    goto :goto_0

    .line 1186
    :pswitch_e
    const/16 v0, 0x3e9

    .line 1187
    nop

    .line 1201
    :goto_0
    goto :goto_1

    .line 1156
    :pswitch_f
    const/4 v0, 0x3

    .line 1157
    goto :goto_1

    .line 1153
    :pswitch_10
    goto :goto_1

    .line 1149
    :pswitch_11
    const/4 v0, 0x2

    .line 1150
    goto :goto_1

    .line 1145
    :pswitch_12
    const/4 v0, 0x7

    .line 1146
    goto :goto_1

    .line 1141
    :pswitch_13
    const/4 v0, 0x7

    .line 1142
    goto :goto_1

    .line 1137
    :pswitch_14
    const/4 v0, 0x7

    .line 1138
    goto :goto_1

    .line 1133
    :pswitch_15
    move v0, p1

    .line 1134
    goto :goto_1

    .line 1127
    :pswitch_16
    move v0, p1

    .line 1128
    goto :goto_1

    .line 1121
    :pswitch_17
    const/4 v0, 0x1

    .line 1122
    goto :goto_1

    .line 1117
    :pswitch_18
    const/4 v0, 0x7

    .line 1118
    goto :goto_1

    .line 1113
    :pswitch_19
    const/4 v0, 0x2

    .line 1114
    goto :goto_1

    .line 1109
    :pswitch_1a
    const/4 v0, 0x2

    .line 1110
    goto :goto_1

    .line 1105
    :pswitch_1b
    const/16 v0, 0x3f1

    .line 1106
    goto :goto_1

    .line 1101
    :pswitch_1c
    const/16 v0, 0x3f3

    .line 1102
    goto :goto_1

    .line 1097
    :pswitch_1d
    const/16 v0, 0x3f5

    .line 1098
    goto :goto_1

    .line 1093
    :pswitch_1e
    const/16 v0, 0x3ef

    .line 1094
    goto :goto_1

    .line 1089
    :pswitch_1f
    const/4 v0, 0x6

    .line 1090
    goto :goto_1

    .line 1085
    :pswitch_20
    const/4 v0, 0x5

    .line 1086
    goto :goto_1

    .line 1081
    :pswitch_21
    const/16 v0, 0x3f7

    .line 1082
    goto :goto_1

    .line 1077
    :pswitch_22
    const/4 v0, 0x3

    .line 1078
    goto :goto_1

    .line 1073
    :pswitch_23
    const/4 v0, 0x3

    .line 1074
    goto :goto_1

    .line 1069
    :pswitch_24
    const/4 v0, 0x0

    .line 1070
    nop

    .line 1208
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static blacklist getSepMappedError(I)I
    .locals 3
    .param p0, "errCode"    # I

    .line 1548
    const/4 v0, 0x2

    .line 1549
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_0

    .line 1573
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1564
    :pswitch_1
    const/16 v0, 0xa

    .line 1565
    goto :goto_0

    .line 1569
    :pswitch_2
    const/16 v0, 0x2711

    .line 1570
    goto :goto_0

    .line 1559
    :pswitch_3
    const/4 v0, 0x5

    .line 1560
    goto :goto_0

    .line 1555
    :pswitch_4
    const/4 v0, 0x3

    .line 1556
    goto :goto_0

    .line 1551
    :pswitch_5
    const/4 v0, 0x1

    .line 1552
    nop

    .line 1576
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist getSepMappedError(II)I
    .locals 3
    .param p0, "errCode"    # I
    .param p1, "vendorCode"    # I

    .line 1216
    move v0, p0

    .line 1218
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_0

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1300
    :pswitch_0
    const/4 v0, 0x2

    .line 1301
    goto :goto_1

    .line 1296
    :pswitch_1
    const/16 v0, 0xa

    .line 1297
    goto :goto_1

    .line 1292
    :pswitch_2
    const/4 v0, 0x1

    .line 1293
    goto :goto_1

    .line 1288
    :pswitch_3
    const/4 v0, 0x2

    .line 1289
    goto :goto_1

    .line 1284
    :pswitch_4
    const/16 v0, 0xa

    .line 1285
    goto :goto_1

    .line 1280
    :pswitch_5
    const/16 v0, 0x2712

    .line 1281
    goto :goto_1

    .line 1248
    :pswitch_6
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1274
    :sswitch_0
    const v0, 0x186a3

    goto :goto_0

    .line 1271
    :sswitch_1
    const v0, 0x186a2

    .line 1272
    goto :goto_0

    .line 1268
    :sswitch_2
    const v0, 0x186a1

    .line 1269
    goto :goto_0

    .line 1265
    :sswitch_3
    const/16 v0, 0x3ee

    .line 1266
    goto :goto_0

    .line 1262
    :sswitch_4
    const/16 v0, 0x3ed

    .line 1263
    goto :goto_0

    .line 1259
    :sswitch_5
    const/16 v0, 0x2715

    .line 1260
    goto :goto_0

    .line 1256
    :sswitch_6
    const/16 v0, 0x2713

    .line 1257
    goto :goto_0

    .line 1253
    :sswitch_7
    const/4 v0, 0x2

    .line 1254
    goto :goto_0

    .line 1250
    :sswitch_8
    const/16 v0, 0x3ec

    .line 1251
    nop

    .line 1277
    :goto_0
    goto :goto_1

    .line 1244
    :pswitch_7
    const/16 v0, 0x2711

    .line 1245
    goto :goto_1

    .line 1240
    :pswitch_8
    const/4 v0, 0x2

    .line 1241
    goto :goto_1

    .line 1236
    :pswitch_9
    const/4 v0, 0x5

    .line 1237
    goto :goto_1

    .line 1232
    :pswitch_a
    const/4 v0, 0x4

    .line 1233
    goto :goto_1

    .line 1228
    :pswitch_b
    const/4 v0, 0x3

    .line 1229
    goto :goto_1

    .line 1224
    :pswitch_c
    const/4 v0, 0x2

    .line 1225
    goto :goto_1

    .line 1220
    :pswitch_d
    const/4 v0, 0x1

    .line 1221
    nop

    .line 1308
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_3
        0x186a1 -> :sswitch_2
        0x186a2 -> :sswitch_1
        0x186a3 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getSepMappedHelp(I)I
    .locals 3
    .param p0, "errCode"    # I

    .line 1580
    const/4 v0, 0x0

    .line 1581
    .local v0, "ret":I
    nop

    .line 1583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    return v0
.end method

.method private blacklist isDexMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1456
    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 1457
    .local v0, "desktopModeManaer":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1458
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1460
    :cond_1
    return v1
.end method

.method private blacklist isKeyguard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 1465
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.desktopsystemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist sendAcquiredResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "acquireInfo"    # I
    .param p2, "helpMsg"    # Ljava/lang/String;

    .line 1376
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 1378
    if-eqz p2, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 1382
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 1371
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 1373
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 1
    .param p1, "result"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    .line 1364
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 1365
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    .line 1367
    :cond_0
    return-void
.end method

.method private blacklist sendErrorResult(ILjava/lang/String;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 1357
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 1358
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 1360
    :cond_0
    return-void
.end method

.method public static blacklist setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 1425
    if-nez p1, :cond_0

    .line 1426
    return-void

    .line 1429
    :cond_0
    :try_start_0
    const-string v0, "DISPLAY_TYPE"

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    goto :goto_0

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExtraInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 711
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 712
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 714
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 716
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 10
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "faceView"    # Landroid/view/View;

    .line 763
    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticateForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 765
    return-void

    .line 768
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hAuthenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 771
    return-void

    .line 773
    :cond_1
    return-void
.end method

.method public whitelist authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 11
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "faceView"    # Landroid/view/View;

    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p6, :cond_0

    .line 746
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 747
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 748
    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    .line 751
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_0
    move-object v10, p0

    iget-object v1, v10, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object v8, v0

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 752
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 2
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .line 802
    const-string v0, "SemBioFaceManager"

    const-string v1, "enroll() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 2
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p5, "faceView"    # Landroid/view/View;

    .line 793
    const-string v0, "SemBioFaceManager"

    const-string v1, "enroll() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void
.end method

.method public blacklist getEnrolledFaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEnrolledFaces(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 902
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSecurityLevel()I
    .locals 1

    .line 1045
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSecurityLevel(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public blacklist getSecurityLevel(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1053
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    .line 1054
    .local v1, "isKeyguard":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetSecurityLevel(Z)I

    move-result v0

    return v0

    .line 1057
    :cond_1
    return v0
.end method

.method public blacklist hasDisabledFaces()Z
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    .line 936
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasEnrolledFaces()Z
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hasEnrolledTemplates()Z

    move-result v0

    return v0

    .line 927
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasEnrolledFaces(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 953
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0

    .line 956
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHardwareDetected()Z
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->isHardwareDetected()Z

    move-result v0

    return v0

    .line 970
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist postEnroll()I
    .locals 2

    .line 843
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "postEnroll() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preEnroll()J
    .locals 2

    .line 814
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "preEnroll() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;

    .line 831
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "preEnroll() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 2
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 868
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "remove() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method public blacklist remove(Lcom/samsung/android/bio/face/SemBioFace;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 2
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 874
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "remove() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method public blacklist rename(IILjava/lang/String;)V
    .locals 2
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .line 887
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "rename() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void
.end method

.method public blacklist resetAuthenticationTimeout()Z
    .locals 2

    .line 1036
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "resetAuthenticationTimeout() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setActiveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 855
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "setActiveUser() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void
.end method
