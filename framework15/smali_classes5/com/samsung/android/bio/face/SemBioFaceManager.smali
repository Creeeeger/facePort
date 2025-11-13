.class public Lcom/samsung/android/bio/face/SemBioFaceManager;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;
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

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED_FIDO_RESULT_DATA:I = 0x6b

.field private static final blacklist MSG_CHALLENGE_READY:I = 0x6d

.field private static final blacklist MSG_ENROLL_RESULT:I = 0x64

.field private static final blacklist MSG_ERROR:I = 0x68

.field private static final blacklist MSG_REMOVED:I = 0x69

.field private static final blacklist MSG_UPDATE_STATUS:I = 0x6c

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
.field private blacklist mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private blacklist mChallege:J

.field private blacklist mChallengeCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private blacklist mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field private blacklist mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private blacklist mRemovalFace:Lcom/samsung/android/bio/face/SemBioFace;

.field private blacklist mService:Lcom/samsung/android/bio/face/IFaceService;

.field private blacklist mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

.field private blacklist mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mUpdateStatusListener:Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;

.field private blacklist mUserIdForRemoval:I


# direct methods
.method public static synthetic blacklist $r8$lambda$1Nz37aWjsBefHCtPKtSh5_xLJhc(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelAuthentication()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 93
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    .line 388
    nop

    .line 389
    const-string v0, "in_house"

    const-string v1, "jdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

    .line 388
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 2356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    .line 393
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    .line 404
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    .line 2276
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$3;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    .line 2357
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 2358
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 2359
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    .line 2360
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    return-object v0
.end method

.method static synthetic blacklist access$1000(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAcquiredResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$102(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/IFaceService;)Lcom/samsung/android/bio/face/IFaceService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # Lcom/samsung/android/bio/face/IFaceService;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    return-object p1
.end method

.method static synthetic blacklist access$1100(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    return-void
.end method

.method static synthetic blacklist access$1200(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static synthetic blacklist access$1300(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendErrorResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1400(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendUpdateStatus(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1500(Lcom/samsung/android/bio/face/SemBioFaceManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mChallege:J

    return-wide v0
.end method

.method static synthetic blacklist access$1502(Lcom/samsung/android/bio/face/SemBioFaceManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # J

    .line 91
    iput-wide p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mChallege:J

    return-wide p1
.end method

.method static synthetic blacklist access$1600(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mChallengeCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;

    return-object v0
.end method

.method static synthetic blacklist access$1700(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic blacklist access$1702(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object p1
.end method

.method static synthetic blacklist access$1800(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/SemBioFace;

    return-object v0
.end method

.method static synthetic blacklist access$1802(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFace;)Lcom/samsung/android/bio/face/SemBioFace;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # Lcom/samsung/android/bio/face/SemBioFace;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/SemBioFace;

    return-object p1
.end method

.method static synthetic blacklist access$1900(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic blacklist access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic blacklist access$2002(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    return-object p1
.end method

.method static synthetic blacklist access$202(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-object p1
.end method

.method static synthetic blacklist access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic blacklist access$2200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    return-object v0
.end method

.method static synthetic blacklist access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$2400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object v0
.end method

.method static synthetic blacklist access$2402(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object p1
.end method

.method static synthetic blacklist access$2800(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 91
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedError(I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$2900(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 91
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedHelp(I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic blacklist access$3000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$3100(Lcom/samsung/android/bio/face/SemBioFaceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$3200(Lcom/samsung/android/bio/face/SemBioFaceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mUserIdForRemoval:I

    return v0
.end method

.method static synthetic blacklist access$3202(Lcom/samsung/android/bio/face/SemBioFaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mUserIdForRemoval:I

    return p1
.end method

.method static synthetic blacklist access$3300(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->useHandler(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist access$3402(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;)Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p1, "x1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mUpdateStatusListener:Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;

    return-object p1
.end method

.method static synthetic blacklist access$400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelEnrollment()V

    return-void
.end method

.method static synthetic blacklist access$700()Z
    .locals 1

    .line 91
    sget-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    return v0
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

    .line 2467
    if-eqz p4, :cond_2

    .line 2470
    if-eqz p2, :cond_1

    .line 2471
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2472
    const-string v0, "SemBioFaceManager"

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    return-void

    .line 2475
    :cond_0
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 2478
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->biometricPromptForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 2479
    return-void

    .line 2468
    :cond_2
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

    .line 2497
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SemBioFaceManager"

    const-string v3, "biometricPromptForDex"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const v3, 0x10405ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2500
    .local v2, "strTitle":Ljava/lang/String;
    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const v4, 0x10405b8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2502
    .local v3, "strCancel":Ljava/lang/String;
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 2503
    iput-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 2505
    new-instance v5, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v6, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 2506
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    .line 2507
    invoke-virtual {v5, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 2508
    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/bio/face/SemBioFaceManager$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$4;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v5, v3, v6, v7}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    .line 2514
    .local v5, "builder":Landroid/hardware/biometrics/BiometricPrompt$Builder;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 2515
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 2517
    invoke-virtual {v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v6

    .line 2519
    .local v6, "bp":Landroid/hardware/biometrics/BiometricPrompt;
    new-instance v7, Landroid/os/CancellationSignal;

    invoke-direct {v7}, Landroid/os/CancellationSignal;-><init>()V

    move-object v13, v7

    .line 2520
    .local v13, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v7, Lcom/samsung/android/bio/face/SemBioFaceManager$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$5;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v13, v7}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 2529
    new-instance v11, Lcom/samsung/android/bio/face/SemBioFaceManager$6;

    invoke-direct {v11, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$6;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    .line 2565
    .local v11, "authenticationCallback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v8

    move-object v12, v8

    goto :goto_0

    :cond_0
    move-object v12, v7

    .line 2567
    .local v12, "fidoRequestData":[B
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v7

    :goto_1
    move-object v8, v7

    .line 2569
    .local v8, "cryptoForBp":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    iget-object v7, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    move-object v7, v6

    move-object v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/hardware/biometrics/BiometricPrompt;->semAuthenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;[B)V

    .line 2571
    return-void
.end method

.method private blacklist cancelAuthentication()V
    .locals 3

    .line 2198
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2199
    return-void

    .line 2201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    .line 2203
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2206
    goto :goto_0

    .line 2204
    :catch_0
    move-exception v0

    .line 2205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist cancelEnrollment()V
    .locals 3

    .line 2185
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2186
    return-void

    .line 2188
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    .line 2190
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/bio/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2193
    goto :goto_0

    .line 2191
    :catch_0
    move-exception v0

    .line 2192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception while canceling enrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public static whitelist createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 2350
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist ensureServiceConnected()Z
    .locals 5

    .line 2363
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2366
    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/samsung/android/bio/face/IFaceService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2367
    return v1

    .line 2368
    :catch_0
    move-exception v0

    .line 2369
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureServiceConnected : failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemBioFaceManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    instance-of v2, v0, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 2371
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    .line 2375
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "samsung.face"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    .line 2376
    if-nez v0, :cond_1

    .line 2378
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isAllowedService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2380
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->startFaceService()V

    .line 2381
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->waitForService()V

    .line 2384
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    if-eqz v0, :cond_2

    .line 2385
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-static {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$2702(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;Lcom/samsung/android/bio/face/IFaceService;)Lcom/samsung/android/bio/face/IFaceService;

    .line 2387
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist getCurrentUserId()I
    .locals 3

    .line 2177
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2178
    :catch_0
    move-exception v0

    .line 2179
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemBioFaceManager"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    const/16 v1, -0x2710

    return v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 2338
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSepMappedAcquiredInfo(II)I
    .locals 3
    .param p0, "acquireInfo"    # I
    .param p1, "vendorCode"    # I

    .line 1797
    move v0, p0

    .line 1799
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_0

    .line 1936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedAcquiredInfo: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1892
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1930
    :pswitch_2
    const/16 v0, 0x3f9

    goto :goto_0

    .line 1927
    :pswitch_3
    const/16 v0, 0x3f8

    .line 1928
    goto :goto_0

    .line 1924
    :pswitch_4
    const/16 v0, 0x3f7

    .line 1925
    goto :goto_0

    .line 1915
    :pswitch_5
    const/16 v0, 0x3f6

    .line 1916
    goto :goto_0

    .line 1912
    :pswitch_6
    const/16 v0, 0x3f5

    .line 1913
    goto :goto_0

    .line 1909
    :pswitch_7
    const/16 v0, 0x3f4

    .line 1910
    goto :goto_0

    .line 1906
    :pswitch_8
    const/16 v0, 0x3f3

    .line 1907
    goto :goto_0

    .line 1903
    :pswitch_9
    const/16 v0, 0x3f1

    .line 1904
    goto :goto_0

    .line 1900
    :pswitch_a
    const/16 v0, 0x3f0

    .line 1901
    goto :goto_0

    .line 1897
    :pswitch_b
    const/16 v0, 0x3ef

    .line 1898
    goto :goto_0

    .line 1894
    :pswitch_c
    const/16 v0, 0x3ee

    .line 1895
    goto :goto_0

    .line 1921
    :pswitch_d
    const/4 v0, 0x4

    .line 1922
    goto :goto_0

    .line 1918
    :pswitch_e
    const/16 v0, 0x3e9

    .line 1919
    nop

    .line 1933
    :goto_0
    goto :goto_1

    .line 1888
    :pswitch_f
    const/4 v0, 0x3

    .line 1889
    goto :goto_1

    .line 1885
    :pswitch_10
    goto :goto_1

    .line 1881
    :pswitch_11
    const/16 v0, 0x3f9

    .line 1882
    goto :goto_1

    .line 1877
    :pswitch_12
    const/4 v0, 0x7

    .line 1878
    goto :goto_1

    .line 1873
    :pswitch_13
    const/4 v0, 0x7

    .line 1874
    goto :goto_1

    .line 1869
    :pswitch_14
    const/4 v0, 0x7

    .line 1870
    goto :goto_1

    .line 1865
    :pswitch_15
    move v0, p1

    .line 1866
    goto :goto_1

    .line 1859
    :pswitch_16
    move v0, p1

    .line 1860
    goto :goto_1

    .line 1853
    :pswitch_17
    const/4 v0, 0x1

    .line 1854
    goto :goto_1

    .line 1849
    :pswitch_18
    const/4 v0, 0x7

    .line 1850
    goto :goto_1

    .line 1845
    :pswitch_19
    const/4 v0, 0x2

    .line 1846
    goto :goto_1

    .line 1841
    :pswitch_1a
    const/4 v0, 0x2

    .line 1842
    goto :goto_1

    .line 1837
    :pswitch_1b
    const/16 v0, 0x3f1

    .line 1838
    goto :goto_1

    .line 1833
    :pswitch_1c
    const/16 v0, 0x3f3

    .line 1834
    goto :goto_1

    .line 1829
    :pswitch_1d
    const/16 v0, 0x3f5

    .line 1830
    goto :goto_1

    .line 1825
    :pswitch_1e
    const/16 v0, 0x3ef

    .line 1826
    goto :goto_1

    .line 1821
    :pswitch_1f
    const/4 v0, 0x6

    .line 1822
    goto :goto_1

    .line 1817
    :pswitch_20
    const/4 v0, 0x5

    .line 1818
    goto :goto_1

    .line 1813
    :pswitch_21
    const/16 v0, 0x3f7

    .line 1814
    goto :goto_1

    .line 1809
    :pswitch_22
    const/4 v0, 0x3

    .line 1810
    goto :goto_1

    .line 1805
    :pswitch_23
    const/4 v0, 0x3

    .line 1806
    goto :goto_1

    .line 1801
    :pswitch_24
    const/4 v0, 0x0

    .line 1802
    nop

    .line 1940
    :goto_1
    return v0

    nop

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

    .line 2574
    const/4 v0, 0x2

    .line 2575
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_0

    .line 2599
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2590
    :pswitch_1
    const/16 v0, 0xa

    .line 2591
    goto :goto_0

    .line 2595
    :pswitch_2
    const/16 v0, 0x2711

    .line 2596
    goto :goto_0

    .line 2585
    :pswitch_3
    const/4 v0, 0x5

    .line 2586
    goto :goto_0

    .line 2581
    :pswitch_4
    const/4 v0, 0x3

    .line 2582
    goto :goto_0

    .line 2577
    :pswitch_5
    const/4 v0, 0x1

    .line 2578
    nop

    .line 2602
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

    .line 1948
    move v0, p0

    .line 1950
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_0

    .line 2036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2032
    :pswitch_0
    const/4 v0, 0x2

    .line 2033
    goto :goto_1

    .line 2028
    :pswitch_1
    const/16 v0, 0xa

    .line 2029
    goto :goto_1

    .line 2024
    :pswitch_2
    const/4 v0, 0x1

    .line 2025
    goto :goto_1

    .line 2020
    :pswitch_3
    const/4 v0, 0x2

    .line 2021
    goto :goto_1

    .line 2016
    :pswitch_4
    const/16 v0, 0xa

    .line 2017
    goto :goto_1

    .line 2012
    :pswitch_5
    const/16 v0, 0x2712

    .line 2013
    goto :goto_1

    .line 1980
    :pswitch_6
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2006
    :sswitch_0
    const v0, 0x186a3

    goto :goto_0

    .line 2003
    :sswitch_1
    const v0, 0x186a2

    .line 2004
    goto :goto_0

    .line 2000
    :sswitch_2
    const v0, 0x186a1

    .line 2001
    goto :goto_0

    .line 1997
    :sswitch_3
    const/16 v0, 0x3ee

    .line 1998
    goto :goto_0

    .line 1994
    :sswitch_4
    const/16 v0, 0x3ed

    .line 1995
    goto :goto_0

    .line 1991
    :sswitch_5
    const/16 v0, 0x2715

    .line 1992
    goto :goto_0

    .line 1988
    :sswitch_6
    const/16 v0, 0x2713

    .line 1989
    goto :goto_0

    .line 1985
    :sswitch_7
    const/4 v0, 0x2

    .line 1986
    goto :goto_0

    .line 1982
    :sswitch_8
    const/16 v0, 0x3ec

    .line 1983
    nop

    .line 2009
    :goto_0
    goto :goto_1

    .line 1976
    :pswitch_7
    const/16 v0, 0x2711

    .line 1977
    goto :goto_1

    .line 1972
    :pswitch_8
    const/4 v0, 0x2

    .line 1973
    goto :goto_1

    .line 1968
    :pswitch_9
    const/4 v0, 0x5

    .line 1969
    goto :goto_1

    .line 1964
    :pswitch_a
    const/4 v0, 0x4

    .line 1965
    goto :goto_1

    .line 1960
    :pswitch_b
    const/4 v0, 0x3

    .line 1961
    goto :goto_1

    .line 1956
    :pswitch_c
    const/4 v0, 0x2

    .line 1957
    goto :goto_1

    .line 1952
    :pswitch_d
    const/4 v0, 0x1

    .line 1953
    nop

    .line 2040
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

    .line 2606
    const/4 v0, 0x0

    .line 2607
    .local v0, "ret":I
    nop

    .line 2609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    return v0
.end method

.method private blacklist isAllowedService(Landroid/content/Context;)Z
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .line 2418
    const-string v0, "isAllowedService : "

    const-string v1, "SemBioFaceManager"

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 2419
    return v2

    .line 2421
    :cond_0
    const-string v3, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2422
    .local v3, "uri":Landroid/net/Uri;
    const-string v10, "getApplicationStateEnabled"

    .line 2423
    .local v10, "projectArgs":Ljava/lang/String;
    const-string v4, "com.samsung.android.bio.face.service"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    .line 2424
    .local v8, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2425
    .local v4, "cr":Landroid/database/Cursor;
    if-eqz v4, :cond_2

    .line 2427
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2428
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2430
    .local v5, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    if-eqz v5, :cond_1

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2432
    const/4 v0, 0x0

    .line 2437
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2432
    return v0

    .line 2437
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2434
    :catch_0
    move-exception v5

    .line 2435
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2437
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2438
    goto :goto_2

    .line 2437
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2438
    throw v0

    .line 2441
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "cr":Landroid/database/Cursor;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "projectArgs":Ljava/lang/String;
    :cond_2
    :goto_2
    return v2
.end method

.method private blacklist isDexMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 2482
    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 2483
    .local v0, "desktopModeManaer":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2484
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2486
    :cond_1
    return v1
.end method

.method private blacklist isKeyguard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 2491
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

    .line 2157
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    .line 2158
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 2159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    .line 2160
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 2161
    if-eqz p2, :cond_1

    .line 2162
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 2165
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .locals 2

    .line 2148
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 2149
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    if-eqz v0, :cond_1

    .line 2152
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    .line 2154
    :cond_1
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    .line 2138
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 2139
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    .line 2140
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    .line 2142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    if-eqz v0, :cond_1

    .line 2143
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    .line 2145
    :cond_1
    return-void
.end method

.method private blacklist sendErrorResult(ILjava/lang/String;)V
    .locals 2
    .param p1, "errMsgId"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 2123
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    .line 2125
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 2126
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    .line 2127
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    .line 2128
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 2129
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    if-eqz v0, :cond_2

    .line 2130
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    .line 2131
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/SemBioFace;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/bio/face/SemBioFace;ILjava/lang/CharSequence;)V

    .line 2132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 2134
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist sendUpdateStatus(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 2168
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mUpdateStatusListener:Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;

    if-nez v0, :cond_0

    .line 2169
    const-string v0, "SemBioFaceManager"

    const-string v1, "sendUpdateStatus : Listener is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    return-void

    .line 2172
    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;->onStatusUpdate(I)V

    .line 2173
    return-void
.end method

.method public static blacklist setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 2449
    if-nez p1, :cond_0

    .line 2450
    return-void

    .line 2453
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

    .line 2456
    goto :goto_0

    .line 2454
    :catch_0
    move-exception v0

    .line 2455
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExtraInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist startFaceService()V
    .locals 4

    .line 2392
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2393
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bio.face.service"

    const-string v3, "com.samsung.android.bio.face.service.FaceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2394
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2397
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 2395
    :catch_0
    move-exception v0

    .line 2396
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting startFaceService failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 798
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 799
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 800
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 801
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 803
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist waitForService()V
    .locals 3

    .line 2402
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    .line 2403
    const-string v1, "samsung.face"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    .line 2404
    if-eqz v1, :cond_0

    .line 2405
    const-string v1, "SemBioFaceManager"

    const-string v2, "Service connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    return-void

    .line 2409
    :cond_0
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2412
    goto :goto_1

    .line 2410
    :catch_0
    move-exception v1

    .line 2402
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2414
    .end local v0    # "count":I
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 48
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "faceView"    # Landroid/view/View;

    .line 850
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p8

    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticateForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 852
    return-void

    .line 855
    :cond_0
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hAuthenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 858
    return-void

    .line 861
    :cond_1
    if-eqz v14, :cond_c

    .line 864
    move-object/from16 v10, p5

    invoke-direct {v11, v10}, Lcom/samsung/android/bio/face/SemBioFaceManager;->useHandler(Landroid/os/Handler;)V

    .line 865
    const-string v9, "SemBioFaceManager"

    if-eqz v13, :cond_3

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    const-string v0, "authentication already canceled"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-void

    .line 870
    :cond_2
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, v11}, Lcom/samsung/android/bio/face/SemBioFaceManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v13, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 873
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 874
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    invoke-direct {v1, v11, v14}, Lcom/samsung/android/bio/face/SemBioFaceManager$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    return-void

    .line 883
    :cond_4
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_b

    .line 885
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    .line 886
    iput-object v14, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 887
    iput-object v12, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    .line 888
    if-nez p7, :cond_5

    .line 889
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v1

    .end local p7    # "attr":Landroid/os/Bundle;
    .local v1, "attr":Landroid/os/Bundle;
    goto :goto_0

    .line 919
    .end local v1    # "attr":Landroid/os/Bundle;
    .restart local p7    # "attr":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object/from16 v7, p7

    move-object/from16 v47, v9

    goto/16 :goto_4

    .line 888
    :cond_5
    move-object/from16 v7, p7

    .line 891
    .end local p7    # "attr":Landroid/os/Bundle;
    .local v7, "attr":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    .line 892
    if-eqz v12, :cond_6

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getOpId()J

    move-result-wide v1

    goto :goto_1

    .line 919
    :catch_1
    move-exception v0

    move-object/from16 v47, v9

    goto/16 :goto_4

    .line 892
    :cond_6
    const-wide/16 v1, 0x0

    :goto_1
    move-wide/from16 v23, v1

    .line 893
    .local v23, "sessionId":J
    if-eqz v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    move-object/from16 v30, v0

    .line 894
    .local v30, "fidoRequestData":[B
    :try_start_4
    const-string/jumbo v0, "support_auth_coordinate"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v0, :cond_8

    .line 895
    :try_start_5
    const-string v0, "auth_coordinate_token"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 896
    .local v0, "token":Landroid/os/IBinder;
    const-string v2, "auth_coordinate_x"

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 897
    .local v2, "x":I
    const-string v3, "auth_coordinate_y"

    invoke-virtual {v7, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 898
    .local v3, "y":I
    const-string v4, "auth_coordinate_w"

    invoke-virtual {v7, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 899
    .local v4, "w":I
    const-string v5, "auth_coordinate_h"

    invoke-virtual {v7, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 900
    .local v1, "h":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v5, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v6, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v8, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v46, v9

    :try_start_6
    iget-object v9, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 902
    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v28

    .line 901
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v1

    move/from16 v25, p6

    move-object/from16 v26, v8

    move/from16 v27, p3

    move-object/from16 v29, v7

    invoke-interface/range {v16 .. v30}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 903
    iget-object v5, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v5}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V

    .line 904
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "h":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "w":I
    move-object/from16 v16, v7

    goto/16 :goto_2

    .line 905
    :cond_8
    move-object/from16 v46, v9

    if-nez v15, :cond_9

    .line 906
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    iget-object v2, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iget-object v3, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v31, v0

    move-object/from16 v32, v1

    move-wide/from16 v38, v23

    move/from16 v40, p6

    move-object/from16 v41, v2

    move/from16 v42, p3

    move-object/from16 v44, v7

    move-object/from16 v45, v30

    invoke-interface/range {v31 .. v45}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 907
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v16, v7

    goto :goto_2

    .line 919
    .end local v23    # "sessionId":J
    .end local v30    # "fidoRequestData":[B
    :catch_2
    move-exception v0

    move-object/from16 v47, v46

    goto :goto_4

    .line 909
    .restart local v23    # "sessionId":J
    .restart local v30    # "fidoRequestData":[B
    :cond_9
    :try_start_7
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v3, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p3

    move/from16 v6, p6

    move-object/from16 v16, v7

    .end local v7    # "attr":Landroid/os/Bundle;
    .local v16, "attr":Landroid/os/Bundle;
    move-wide/from16 v7, v23

    move-object/from16 v47, v46

    move-object/from16 v9, v30

    move-object/from16 v10, v16

    :try_start_8
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;ILandroid/view/View;IIJ[BLandroid/os/Bundle;)V

    .line 912
    .local v0, "listener":Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 913
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->runCommand()V

    goto :goto_2

    .line 915
    :cond_a
    invoke-virtual {v15, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 927
    .end local v0    # "listener":Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
    .end local v23    # "sessionId":J
    .end local v30    # "fidoRequestData":[B
    :goto_2
    move-object/from16 v7, v16

    goto :goto_5

    .line 919
    :catch_3
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_4

    .end local v16    # "attr":Landroid/os/Bundle;
    .restart local v7    # "attr":Landroid/os/Bundle;
    :catch_4
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v47, v46

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v47, v9

    .end local v7    # "attr":Landroid/os/Bundle;
    .restart local v16    # "attr":Landroid/os/Bundle;
    :goto_3
    goto :goto_4

    .end local v16    # "attr":Landroid/os/Bundle;
    .restart local p7    # "attr":Landroid/os/Bundle;
    :catch_6
    move-exception v0

    move-object/from16 v47, v9

    move-object/from16 v7, p7

    .line 920
    .end local p7    # "attr":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v7    # "attr":Landroid/os/Bundle;
    :goto_4
    const-string v1, "Remote exception while authenticating"

    move-object/from16 v2, v47

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/bio/face/SemBioFaceManager$2;

    invoke-direct {v2, v11, v14}, Lcom/samsung/android/bio/face/SemBioFaceManager$2;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 883
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "attr":Landroid/os/Bundle;
    .restart local p7    # "attr":Landroid/os/Bundle;
    :cond_b
    move-object/from16 v7, p7

    .line 929
    .end local p7    # "attr":Landroid/os/Bundle;
    .restart local v7    # "attr":Landroid/os/Bundle;
    :goto_5
    return-void

    .line 862
    .end local v7    # "attr":Landroid/os/Bundle;
    .restart local p7    # "attr":Landroid/os/Bundle;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 11
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "faceView"    # Landroid/view/View;

    .line 831
    const/4 v0, 0x0

    .line 832
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p6, :cond_0

    .line 833
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 834
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 835
    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    .line 838
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

    .line 839
    return-void
.end method

.method public blacklist cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "fromClient"    # Z

    .line 1672
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1673
    return-void

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_1

    .line 1677
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceService;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in cancelAuthenticationFromService()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1682
    :cond_1
    const-string v0, "cancelAuthenticationFromService(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :goto_1
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 29
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .line 959
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p7

    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hEnroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    .line 961
    return-void

    .line 964
    :cond_0
    if-eqz v13, :cond_9

    .line 968
    const/4 v0, -0x2

    move/from16 v1, p4

    if-ne v1, v0, :cond_1

    .line 969
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v0

    move/from16 v28, v0

    .end local p4    # "userId":I
    .local v0, "userId":I
    goto :goto_0

    .line 968
    .end local v0    # "userId":I
    .restart local p4    # "userId":I
    :cond_1
    move/from16 v28, v1

    .line 972
    .end local p4    # "userId":I
    .local v28, "userId":I
    :goto_0
    const-string v10, "SemBioFaceManager"

    const/4 v9, 0x0

    if-eqz v12, :cond_3

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    const-string v0, "enrollment already canceled"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void

    .line 977
    :cond_2
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;

    invoke-direct {v0, v11, v9}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V

    invoke-virtual {v12, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 981
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v6, 0x68

    if-nez v0, :cond_4

    .line 982
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 983
    return-void

    .line 986
    :cond_4
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_8

    .line 988
    :try_start_0
    iput-object v9, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 989
    iput-object v13, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 990
    if-nez p6, :cond_5

    .line 991
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v0

    .end local p6    # "attr":Landroid/os/Bundle;
    .local v0, "attr":Landroid/os/Bundle;
    goto :goto_1

    .line 1007
    .end local v0    # "attr":Landroid/os/Bundle;
    .restart local p6    # "attr":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object/from16 v5, p6

    move-object v15, v10

    goto/16 :goto_3

    .line 990
    :cond_5
    move-object/from16 v5, p6

    .line 993
    .end local p6    # "attr":Landroid/os/Bundle;
    .local v5, "attr":Landroid/os/Bundle;
    :goto_1
    :try_start_2
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 994
    if-nez v14, :cond_6

    .line 995
    :try_start_3
    iget-object v15, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iget-object v2, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v16, v0

    move-object/from16 v22, p1

    move/from16 v23, v28

    move-object/from16 v24, v1

    move/from16 v25, p3

    move-object/from16 v27, v5

    invoke-interface/range {v15 .. v27}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 996
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v17, v5

    goto :goto_2

    .line 1007
    :catch_1
    move-exception v0

    move-object v15, v10

    goto :goto_3

    .line 998
    :cond_6
    :try_start_4
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v3, 0x2

    const-wide/16 v15, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p7

    move-object/from16 v17, v5

    .end local v5    # "attr":Landroid/os/Bundle;
    .local v17, "attr":Landroid/os/Bundle;
    move/from16 v5, p3

    move/from16 v6, v28

    move-wide v7, v15

    move-object v15, v9

    move-object/from16 v9, p1

    move-object v15, v10

    move-object/from16 v10, v17

    :try_start_5
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;ILandroid/view/View;IIJ[BLandroid/os/Bundle;)V

    .line 1001
    .local v0, "listener":Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1002
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->runCommand()V

    goto :goto_2

    .line 1004
    :cond_7
    invoke-virtual {v14, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1010
    .end local v0    # "listener":Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
    :goto_2
    goto :goto_4

    .line 1007
    :catch_2
    move-exception v0

    move-object/from16 v5, v17

    goto :goto_3

    .end local v17    # "attr":Landroid/os/Bundle;
    .restart local v5    # "attr":Landroid/os/Bundle;
    :catch_3
    move-exception v0

    move-object/from16 v17, v5

    move-object v15, v10

    .end local v5    # "attr":Landroid/os/Bundle;
    .restart local v17    # "attr":Landroid/os/Bundle;
    goto :goto_3

    .end local v17    # "attr":Landroid/os/Bundle;
    .restart local p6    # "attr":Landroid/os/Bundle;
    :catch_4
    move-exception v0

    move-object v15, v10

    move-object/from16 v5, p6

    .line 1008
    .end local p6    # "attr":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "attr":Landroid/os/Bundle;
    :goto_3
    const-string v1, "Remote exception in enroll"

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x68

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v3, v2, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v17, v5

    goto :goto_4

    .line 986
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "attr":Landroid/os/Bundle;
    .restart local p6    # "attr":Landroid/os/Bundle;
    :cond_8
    move-object/from16 v17, p6

    .line 1012
    .end local p6    # "attr":Landroid/os/Bundle;
    .restart local v17    # "attr":Landroid/os/Bundle;
    :goto_4
    return-void

    .line 965
    .end local v17    # "attr":Landroid/os/Bundle;
    .end local v28    # "userId":I
    .restart local p4    # "userId":I
    .restart local p6    # "attr":Landroid/os/Bundle;
    :cond_9
    move/from16 v1, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply an enrollment callback"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 8
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p5, "faceView"    # Landroid/view/View;

    .line 949
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    .line 950
    return-void
.end method

.method public blacklist getAuthenticatorId()J
    .locals 5

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetAuthenticatorId()J

    move-result-wide v0

    return-wide v0

    .line 1366
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 1367
    return-wide v1

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v3, "SemBioFaceManager"

    if-eqz v0, :cond_2

    .line 1371
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/samsung/android/bio/face/IFaceService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1372
    :catch_0
    move-exception v0

    .line 1373
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Remote exception in getAuthenticatorId()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1376
    :cond_2
    const-string v0, "getAuthenticatorId(): Service not connected!"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :goto_0
    return-wide v1
.end method

.method public blacklist getBiometricAuthenticator()Landroid/hardware/biometrics/BiometricAuthenticator;
    .locals 1

    .line 1789
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    return-object v0
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

    .line 1241
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEnrolledFaces(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    .line 1217
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1220
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1221
    return-object v1

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_2

    .line 1225
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/bio/face/IFaceService;->getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in getEnrolledFaces"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public blacklist getLockoutModeForUser(II)I
    .locals 4
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 1412
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->getLockoutModeForUser(II)I

    move-result v0

    return v0

    .line 1415
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 1416
    return v1

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v2, "SemBioFaceManager"

    if-eqz v0, :cond_2

    .line 1420
    :try_start_0
    invoke-interface {v0, p2}, Lcom/samsung/android/bio/face/IFaceService;->getLockoutModeForUser(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1421
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in getLockoutModeForUser()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1425
    :cond_2
    const-string v0, "getLockoutModeForUser(): Service not connected!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :goto_0
    return v1
.end method

.method public blacklist getRemainingLockoutTime(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 1763
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetRemainingLockoutTime(I)I

    move-result v0

    return v0

    .line 1766
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_1

    .line 1768
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/IFaceService;->getRemainingLockoutTime(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in getRemainingLockoutTime()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1773
    :cond_1
    const-string v0, "getRemainingLockoutTime(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSecurityLevel()I
    .locals 1

    .line 1734
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSecurityLevel(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public blacklist getSecurityLevel(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1742
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    .line 1743
    .local v1, "isKeyguard":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1744
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetSecurityLevel(Z)I

    move-result v0

    return v0

    .line 1746
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v2

    const-string v3, "SemBioFaceManager"

    if-eqz v2, :cond_2

    .line 1748
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v2, v1}, Lcom/samsung/android/bio/face/IFaceService;->getSecurityLevel(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1749
    :catch_0
    move-exception v2

    .line 1750
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "Remote exception in getSecurityLevel()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1753
    :cond_2
    const-string v2, "getSecurityLevel(): Service not connected!"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :goto_1
    return v0
.end method

.method public blacklist getTrustAppVersion()Ljava/lang/String;
    .locals 3

    .line 1691
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetTrustAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1694
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_1

    .line 1696
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->getTrustAppVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1697
    :catch_0
    move-exception v0

    .line 1698
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in getTrustAppVersion()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1701
    :cond_1
    const-string v0, "getTrustAppVersion(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist hasDisabledFaces()Z
    .locals 4

    .line 1273
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1274
    return v1

    .line 1276
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    return v1

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_2

    .line 1281
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->hasDisabledFaces(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in getEnrolledFaces"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public whitelist hasEnrolledFaces()Z
    .locals 4

    .line 1252
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hasEnrolledTemplates()Z

    move-result v0

    return v0

    .line 1255
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1256
    return v1

    .line 1258
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_2

    .line 1260
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in getEnrolledFaces"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public whitelist hasEnrolledFaces(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1301
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0

    .line 1304
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1305
    return v1

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_2

    .line 1309
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in getEnrolledFaces, userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemBioFaceManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public blacklist isEnrollSession()Z
    .locals 4

    .line 1340
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hIsEnrollSession()Z

    move-result v0

    return v0

    .line 1343
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1344
    return v1

    .line 1346
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_2

    .line 1348
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->isEnrollSession()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in isEnrollSession()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public blacklist isHardwareDetected()Z
    .locals 1

    .line 1325
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->isHardwareDetected()Z

    move-result v0

    return v0

    .line 1328
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isSessionClosed()Z
    .locals 4

    .line 1611
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hIsSessionClosed()Z

    move-result v0

    return v0

    .line 1614
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1615
    return v1

    .line 1617
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v2, "SemBioFaceManager"

    if-eqz v0, :cond_2

    .line 1619
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->isSessionClosed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in isSessionClosed()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1624
    :cond_2
    const-string v0, "isSessionClosed(): Service not connected!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :goto_0
    return v1
.end method

.method public synthetic blacklist lambda$authenticateForDex$0$SemBioFaceManager()V
    .locals 0

    .line 2475
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelAuthentication()V

    return-void
.end method

.method public blacklist postEnroll()I
    .locals 4

    .line 1098
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hPostEnroll()I

    move-result v0

    return v0

    .line 1101
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1102
    return v1

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_2

    .line 1106
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Lcom/samsung/android/bio/face/IFaceService;->postEnroll(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in post enroll"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public blacklist preEnroll()J
    .locals 2

    .line 1023
    const-string v0, "SemBioFaceManager"

    const-string v1, "preEnroll() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J
    .locals 6
    .param p1, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;

    .line 1060
    const-string v0, "SemBioFaceManager"

    if-eqz p1, :cond_3

    .line 1063
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mChallengeCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;

    .line 1065
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hPreEnroll()V

    .line 1067
    return-wide v2

    .line 1069
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1070
    return-wide v2

    .line 1072
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_2

    .line 1074
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Lcom/samsung/android/bio/face/IFaceService;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mChallege:J

    .line 1075
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6d

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    return-wide v2

    .line 1081
    :catch_0
    move-exception v1

    .line 1082
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "Remote exception in preEnroll"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1077
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1078
    .local v1, "de":Landroid/os/DeadObjectException;
    const-string v2, "DeadObject exception in preEnroll, try again"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    .line 1080
    invoke-virtual {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J

    move-result-wide v2

    return-wide v2

    .line 1087
    .end local v1    # "de":Landroid/os/DeadObjectException;
    :cond_2
    :goto_0
    return-wide v2

    .line 1061
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an challenge callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZLandroid/os/Bundle;)V
    .locals 13
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "sessionId"    # J
    .param p5, "userId"    # I
    .param p6, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "cookie"    # I
    .param p9, "allowBackgroundAuthentication"    # Z
    .param p10, "bundle"    # Landroid/os/Bundle;

    .line 1635
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1636
    return-void

    .line 1638
    :cond_0
    move-object v1, p0

    iget-object v2, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v12, "SemBioFaceManager"

    if-eqz v2, :cond_1

    .line 1640
    const/4 v11, 0x0

    move v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    :try_start_0
    invoke-interface/range {v2 .. v11}, Lcom/samsung/android/bio/face/IFaceService;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1642
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1643
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in prepareForAuthentication()"

    invoke-static {v12, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1646
    :cond_1
    const-string v0, "prepareForAuthentication(): Service not connected!"

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :goto_1
    return-void
.end method

.method public whitelist remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 11
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hRemove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    .line 1152
    return-void

    .line 1154
    :cond_0
    if-eqz p3, :cond_3

    .line 1157
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x68

    if-nez v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1159
    return-void

    .line 1161
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v5, :cond_2

    .line 1163
    :try_start_0
    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 1164
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/SemBioFace;

    .line 1165
    iget-object v6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFace;->getFaceId()I

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFace;->getGroupId()I

    move-result v8

    iget-object v10, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move v9, p2

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/bio/face/IFaceService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V

    .line 1166
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    goto :goto_0

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "SemBioFaceManager"

    const-string v6, "Remote exception in remove"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1172
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void

    .line 1155
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an Removal callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist remove(Lcom/samsung/android/bio/face/SemBioFace;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 1
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 1177
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    .line 1178
    return-void
.end method

.method public blacklist rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hRename(IILjava/lang/String;)V

    .line 1192
    return-void

    .line 1195
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1196
    return-void

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_2

    .line 1200
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in rename()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1205
    :cond_2
    const-string v0, "rename(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :goto_1
    return-void
.end method

.method public blacklist requestAuthPause()V
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hRequestAuthPause()V

    .line 1592
    return-void

    .line 1594
    :cond_0
    return-void
.end method

.method public blacklist requestAuthResume()V
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hRequestAuthResume()V

    .line 1602
    return-void

    .line 1604
    :cond_0
    return-void
.end method

.method public blacklist requestEnrollPause()V
    .locals 3

    .line 1546
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hRequestEnrollPause()V

    .line 1548
    return-void

    .line 1550
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1551
    return-void

    .line 1553
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_2

    .line 1555
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->requestEnrollPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in requestEnrollPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1560
    :cond_2
    const-string v0, "requestEnrollPause(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :goto_1
    return-void
.end method

.method public blacklist requestEnrollResume()V
    .locals 3

    .line 1568
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hRequestEnrollResume()V

    .line 1570
    return-void

    .line 1572
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1573
    return-void

    .line 1575
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_2

    .line 1577
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->requestEnrollResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1578
    :catch_0
    move-exception v0

    .line 1579
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in requestEnrollResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1582
    :cond_2
    const-string v0, "requestEnrollResume(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :goto_1
    return-void
.end method

.method public blacklist requestSessionClose()V
    .locals 3

    .line 1456
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hRequestSessionClose()V

    .line 1458
    return-void

    .line 1460
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1461
    return-void

    .line 1463
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_2

    .line 1465
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->requestSessionClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in requestSessionClose()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1470
    :cond_2
    const-string v0, "requestSessionClose(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :goto_1
    return-void
.end method

.method public blacklist requestSessionOpen()V
    .locals 3

    .line 1434
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hRequestSessionOpen()V

    .line 1436
    return-void

    .line 1438
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1439
    return-void

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_2

    .line 1443
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->requestSessionOpen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in requestSessionOpen()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1448
    :cond_2
    const-string v0, "requestSessionOpen(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :goto_1
    return-void
.end method

.method public blacklist resetAuthenticationTimeout()Z
    .locals 4

    .line 1524
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hResetAuthenticationTimeout()Z

    move-result v0

    return v0

    .line 1527
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1528
    return v1

    .line 1530
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v2, "SemBioFaceManager"

    if-eqz v0, :cond_2

    .line 1532
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->resetAuthenticationTimeout()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in resetAuthenticationTimeout()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1537
    :cond_2
    const-string v0, "resetAuthenticationTimeout(): Service not connected!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :goto_0
    return v1
.end method

.method public blacklist resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .line 1390
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hResetTimeout([B)V

    .line 1392
    return-void

    .line 1394
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1395
    return-void

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_2

    .line 1399
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/IFaceService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1400
    :catch_0
    move-exception v0

    .line 1401
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1404
    :cond_2
    const-string v0, "resetTimeout(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :goto_1
    return-void
.end method

.method public blacklist setActiveUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1124
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->setActiveUser(I)V

    goto :goto_0

    .line 1127
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1128
    return-void

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_2

    .line 1132
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/IFaceService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    goto :goto_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in setActiveUser"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist startPreparedClient(I)V
    .locals 3
    .param p1, "cookie"    # I

    .line 1654
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1655
    return-void

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_1

    .line 1659
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/IFaceService;->startPreparedClient(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in startPreparedClient()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1664
    :cond_1
    const-string/jumbo v0, "startPreparedClient(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :goto_1
    return-void
.end method

.method public blacklist updateSecureID([B)Z
    .locals 4
    .param p1, "token"    # [B

    .line 1501
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemBioFaceManager"

    if-eqz v0, :cond_0

    .line 1502
    const-string/jumbo v0, "updateSecureID(): not support from face Hal!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    return v1

    .line 1505
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1506
    return v1

    .line 1508
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_2

    .line 1510
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/IFaceService;->updateSecureID([B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1511
    :catch_0
    move-exception v0

    .line 1512
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in updateSecureID()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1515
    :cond_2
    const-string/jumbo v0, "updateSecureID(): Service not connected!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :goto_0
    return v1
.end method

.method public blacklist updateSecureUserID([B)Z
    .locals 4
    .param p1, "token"    # [B

    .line 1478
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemBioFaceManager"

    if-eqz v0, :cond_0

    .line 1479
    const-string/jumbo v0, "updateSecureUserID(): not support from face Hal!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    return v1

    .line 1482
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1483
    return v1

    .line 1485
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_2

    .line 1487
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/IFaceService;->updateSecureUserID([B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1488
    :catch_0
    move-exception v0

    .line 1489
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in updateSecureUserID()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1492
    :cond_2
    const-string/jumbo v0, "updateSecureUserID(): Service not connected!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :goto_0
    return v1
.end method

.method public blacklist updateTrustApp(Ljava/lang/String;Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;

    .line 1711
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1713
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1712
    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hUpdateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;Ljava/lang/String;)V

    .line 1714
    return-void

    .line 1716
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const-string v1, "SemBioFaceManager"

    if-eqz v0, :cond_1

    .line 1718
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mUpdateStatusListener:Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;

    .line 1719
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1720
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1719
    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/bio/face/IFaceService;->updateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILcom/samsung/android/bio/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1721
    :catch_0
    move-exception v0

    .line 1722
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in updateTrustApp()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1725
    :cond_1
    const-string/jumbo v0, "updateTrustApp(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :goto_1
    return-void
.end method
