.class public Lcom/samsung/android/bio/iris/SemIrisManager;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;,
        Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;,
        Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;,
        Lcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;,
        Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;,
        Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;,
        Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;,
        Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;,
        Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;,
        Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;,
        Lcom/samsung/android/bio/iris/SemIrisManager$OnAuthenticationCancelListener;,
        Lcom/samsung/android/bio/iris/SemIrisManager$OnEnrollCancelListener;
    }
.end annotation


# static fields
.field public static final blacklist CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final blacklist CLIENT_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field public static final blacklist ENABLE_IMAGE_CALLBACK:I = 0xc350

.field public static final blacklist FRONT_SENSOR_ORIENTATION:I = 0xc352

.field public static final blacklist IRIS_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final whitelist IRIS_ACQUIRED_EYES_CLOSED:I = 0x9

.field public static final blacklist IRIS_ACQUIRED_EYE_NOT_PRESENT:I = 0xa

.field public static final blacklist IRIS_ACQUIRED_GOOD:I = 0x0

.field public static final whitelist IRIS_ACQUIRED_INCORRECT_POSITION:I = 0xc

.field public static final blacklist IRIS_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final blacklist IRIS_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final blacklist IRIS_ACQUIRED_MOVE_LEFT:I = 0x5

.field public static final blacklist IRIS_ACQUIRED_MOVE_RIGHT:I = 0x6

.field public static final blacklist IRIS_ACQUIRED_MOVE_UP:I = 0x7

.field public static final blacklist IRIS_ACQUIRED_PARTIAL:I = 0x1

.field public static final whitelist IRIS_ACQUIRED_TOO_BRIGHT:I = 0xb

.field public static final whitelist IRIS_ACQUIRED_TOO_CLOSE:I = 0x4

.field public static final whitelist IRIS_ACQUIRED_TOO_FAR:I = 0x3

.field public static final blacklist IRIS_AUTH_TYPE_NONE:I = 0x0

.field public static final blacklist IRIS_AUTH_TYPE_PREVIEW_CALLBACK:I = 0x1

.field public static final blacklist IRIS_AUTH_TYPE_UI_NO_PREVIEW:I = 0x3

.field public static final blacklist IRIS_AUTH_TYPE_UI_WITH_PREVIEW:I = 0x2

.field public static final blacklist IRIS_DISABLE_PREVIEW_CALLBACK:I = 0x7

.field public static final blacklist IRIS_ENABLE_PREVIEW_CALLBACK:I = 0x6

.field public static final blacklist IRIS_ERROR_AUTH_VIEW_SIZE:I = 0xa

.field public static final blacklist IRIS_ERROR_AUTH_WINDOW_TOKEN:I = 0xb

.field public static final blacklist IRIS_ERROR_CANCELED:I = 0x4

.field public static final whitelist IRIS_ERROR_EVICTED:I = 0xd

.field public static final blacklist IRIS_ERROR_EVICTED_CAMERA_IN_USE:I = 0x13

.field public static final blacklist IRIS_ERROR_EVICTED_DUE_TO_VIDEO_CALL:I = 0xe

.field public static final whitelist IRIS_ERROR_EYE_SAFETY_TIMEOUT:I = 0x9

.field public static final whitelist IRIS_ERROR_FEATURE_OFF:I = 0x12

.field public static final blacklist IRIS_ERROR_FLIP_OFF:I = 0x11

.field public static final whitelist IRIS_ERROR_HW_UNAVAILABLE:I = 0x0

.field public static final blacklist IRIS_ERROR_LOCKOUT:I = 0x6

.field public static final blacklist IRIS_ERROR_LOCKOUT_PERMANENT:I = 0x10

.field public static final blacklist IRIS_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final blacklist IRIS_ERROR_NO_EYE_DETECTED:I = 0xf

.field public static final blacklist IRIS_ERROR_NO_SPACE:I = 0x3

.field public static final blacklist IRIS_ERROR_OPEN_IR_CAMERA_FAIL:I = 0x8

.field public static final whitelist IRIS_ERROR_PROXIMITY_ALERT:I = 0x7b

.field public static final blacklist IRIS_ERROR_PROXIMITY_TIMEOUT:I = 0xc

.field public static final blacklist IRIS_ERROR_START_IR_CAMERA_PREVIEW_FAIL:I = 0x7

.field public static final blacklist IRIS_ERROR_TIMEOUT:I = 0x2

.field public static final whitelist IRIS_ERROR_UNABLE_TO_PROCESS:I = 0x1

.field public static final blacklist IRIS_ERROR_UNABLE_TO_REMOVE:I = 0x5

.field public static final blacklist IRIS_ERROR_UNSUPPORTED_ORIENTATION:I = 0x14

.field public static final blacklist IRIS_ERROR_USER_CANCELED:I = 0x15

.field public static final blacklist IRIS_ONE_EYE:I = 0x9c40

.field public static final blacklist IRIS_REQUEST_DVFS_FREQUENCY:I = 0x3ec

.field public static final blacklist IRIS_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final blacklist IRIS_REQUEST_ENUMERATE:I = 0xb

.field public static final blacklist IRIS_REQUEST_FACTORY_TEST_ALWAYS_LED_ON:I = 0x7d1

.field public static final blacklist IRIS_REQUEST_FACTORY_TEST_CAMERA_VERSION:I = 0x7d4

.field public static final blacklist IRIS_REQUEST_FACTORY_TEST_CAPTURE:I = 0x7d2

.field public static final blacklist IRIS_REQUEST_FACTORY_TEST_FULL_PREVIEW:I = 0x7d0

.field public static final blacklist IRIS_REQUEST_FACTORY_TEST_PREVIEW_MODE:I = 0x7d3

.field public static final blacklist IRIS_REQUEST_GET_IR_IDS:I = 0x3eb

.field public static final blacklist IRIS_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final blacklist IRIS_REQUEST_GET_VERSION:I = 0x4

.field public static final blacklist IRIS_REQUEST_IR_PREVIEW_ENABLE:I = 0x7d5

.field public static final blacklist IRIS_REQUEST_LOCKOUT:I = 0x3e9

.field public static final blacklist IRIS_REQUEST_PROCESS_FIDO:I = 0x9

.field public static final blacklist IRIS_REQUEST_REMOVE_IRIS:I = 0x3e8

.field public static final blacklist IRIS_REQUEST_SESSION_OPEN:I = 0x2

.field public static final blacklist IRIS_REQUEST_UPDATE_SID:I = 0xa

.field public static final blacklist IRIS_TWO_EYES:I = 0x9c41

.field public static final whitelist IRIS_VIEW_TYPE_PREVIEW_INVISIBLE:I = 0x4

.field public static final whitelist IRIS_VIEW_TYPE_PREVIEW_VISIBLE:I = 0x5

.field public static final blacklist IR_SENSOR_ORIENTATION:I = 0xc351

.field private static final blacklist MANAGE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.MANAGE_IRIS"

.field private static final blacklist MSG_ACQUIRED:I = 0x65

.field private static final blacklist MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED_FIDO_RESULT_DATA:I = 0x6b

.field private static final blacklist MSG_ENROLL_RESULT:I = 0x64

.field private static final blacklist MSG_ERROR:I = 0x68

.field private static final blacklist MSG_IR_IMAGE:I = 0x6a

.field private static final blacklist MSG_REMOVED:I = 0x69

.field public static final blacklist PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final blacklist PRIVILEGED_ATTR_EXTRA_EVENT:I = 0x10

.field public static final blacklist PRIVILEGED_ATTR_IRIS_DETECTION:I = 0x8

.field public static final blacklist PRIVILEGED_ATTR_NO_LOCKOUT:I = 0x2

.field public static final blacklist PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final blacklist PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final blacklist SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final blacklist SENSOR_STATUS_LED_OFF:I = 0x7531

.field public static final blacklist SENSOR_STATUS_LED_ON:I = 0x7530

.field public static final blacklist SENSOR_STATUS_OK:I = 0x186c8

.field public static final blacklist SENSOR_STATUS_SECURE_DISABLE:I = 0x4e21

.field public static final blacklist SENSOR_STATUS_SECURE_ENALBE:I = 0x4e20

.field public static final blacklist SENSOR_STATUS_WORKING:I = 0x186c9

.field private static final blacklist SYSTEM_FEATURE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris"

.field private static final blacklist TAG:Ljava/lang/String; = "Bio.SemIrisManager"

.field private static final blacklist USE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.USE_IRIS"

.field private static blacklist mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;


# instance fields
.field private blacklist mAuthBegin:J

.field private blacklist mAuthenticationCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

.field private blacklist mCryptoObjectNew:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;

.field private blacklist mEnrollmentCallback:Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mListener:Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;

.field private blacklist mRemovalCallback:Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

.field private blacklist mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

.field private blacklist mRequestCallback:Lcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;

.field private blacklist mService:Lcom/samsung/android/camera/iris/IIrisService;

.field private blacklist mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mListener:Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemovalCallback(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemovalIris(Lcom/samsung/android/bio/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExecutor(Lcom/samsung/android/bio/iris/SemIrisManager;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Lcom/samsung/android/bio/iris/SemIrisManager;Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager;->cancelAuthentication(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEnrollment(Lcom/samsung/android/bio/iris/SemIrisManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->cancelEnrollment()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAuthViewWindowToken(Lcom/samsung/android/bio/iris/SemIrisManager;Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/bio/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckEnrollViewWindowToken(Lcom/samsung/android/bio/iris/SemIrisManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/bio/iris/SemIrisManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/iris/SemIrisManager;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/bio/iris/SemIrisManager;->sendAcquiredResult(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/iris/SemIrisManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedSucceeded(Lcom/samsung/android/bio/iris/SemIrisManager;Lcom/samsung/android/camera/iris/Iris;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/iris/SemIrisManager;->sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Lcom/samsung/android/bio/iris/SemIrisManager;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/bio/iris/SemIrisManager;->sendErrorResult(JI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1029
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/bio/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 4463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 1061
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthBegin:J

    .line 4280
    new-instance v0, Lcom/samsung/android/bio/iris/SemIrisManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/iris/SemIrisManager$4;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 4465
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 4469
    new-instance v0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 4471
    new-instance v0, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    .line 4475
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/camera/iris/IIrisService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/camera/iris/IIrisService;

    .line 3963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 1061
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthBegin:J

    .line 4280
    new-instance v0, Lcom/samsung/android/bio/iris/SemIrisManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/iris/SemIrisManager$4;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 3965
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 3967
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 3969
    if-nez p2, :cond_0

    .line 3971
    const-string v0, "Bio.SemIrisManager"

    const-string v1, "SemIrisManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3975
    :cond_0
    new-instance v0, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 3977
    new-instance v0, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    .line 3979
    return-void
.end method

.method private static blacklist byteArrayToHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "byteArray"    # [B

    .line 4575
    if-nez p0, :cond_0

    .line 4577
    const/4 v0, 0x0

    return-object v0

    .line 4583
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4585
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    .line 4587
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v6, v4, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4585
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4591
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist bytesToString([BI)Ljava/lang/String;
    .locals 5
    .param p0, "a"    # [B
    .param p1, "len"    # I

    .line 4599
    array-length v0, p0

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    .line 4605
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4607
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4609
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%c"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4607
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4613
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4601
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist cancelAuthentication()V
    .locals 3

    .line 2019
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2020
    return-void

    .line 2022
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 2024
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2027
    goto :goto_0

    .line 2025
    :catch_0
    move-exception v0

    .line 2026
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Bio.SemIrisManager"

    const-string v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist cancelAuthentication(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    .line 4031
    const-string v0, "Bio.SemIrisManager"

    const-string v1, "cancelAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4035
    return-void

    .line 4039
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 4043
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4049
    goto :goto_0

    .line 4045
    :catch_0
    move-exception v1

    .line 4047
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception while canceling authentication"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist cancelEnrollment()V
    .locals 3

    .line 4003
    const-string v0, "Bio.SemIrisManager"

    const-string v1, "cancelEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4007
    return-void

    .line 4011
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 4015
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4021
    goto :goto_0

    .line 4017
    :catch_0
    move-exception v1

    .line 4019
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception while canceling enrollment"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkAuthViewWindowToken(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 30
    .param p1, "crypto"    # Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;
    .param p9, "sessionId"    # J
    .param p11, "fidoRequestData"    # [B

    .line 2188
    move-object/from16 v14, p0

    move-object/from16 v15, p4

    const-string/jumbo v0, "x"

    iget-object v1, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    if-nez v1, :cond_0

    .line 2190
    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler-IA;)V

    iput-object v1, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    .line 2194
    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "Bio.SemIrisManager"

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 2196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthBegin:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    .line 2198
    const-string v0, "checkAuthViewWindowToken is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v0, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v0}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 2202
    if-eqz v15, :cond_1

    .line 2204
    invoke-direct {v14, v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v3, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 2208
    :cond_1
    return-void

    .line 2212
    :cond_2
    iget-object v0, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    new-instance v13, Lcom/samsung/android/bio/iris/SemIrisManager$1;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-wide/from16 v11, p9

    move-object v15, v13

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/bio/iris/SemIrisManager$1;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    invoke-virtual {v0, v15}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 2222
    return-void

    .line 2226
    :cond_3
    iget-object v1, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v1}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 2230
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    .line 2234
    .local v17, "mWindowToken":Landroid/os/IBinder;
    const/4 v1, 0x2

    new-array v1, v1, [I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2236
    .local v1, "position":[I
    move-object/from16 v4, p8

    :try_start_1
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2238
    iget-object v5, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    if-nez v5, :cond_4

    .line 2240
    const-string v5, "mToken null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->getMinimumIrisViewSize()Landroid/util/Size;

    move-result-object v5

    .line 2248
    .local v5, "mAuthViewSize":Landroid/util/Size;
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_6

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-ge v6, v7, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v6, p4

    goto :goto_1

    .line 2250
    :cond_6
    :goto_0
    move-object/from16 v6, p4

    if-eqz v6, :cond_7

    .line 2252
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid irisView size. IrisView\'s proper size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but app\'s size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_7
    :goto_1
    iget-object v15, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v0, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    aget v18, v1, v7

    aget v19, v1, v3

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v21

    iget-object v7, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v8, v14, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 2264
    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v27

    .line 2262
    move-object/from16 v16, v0

    move-wide/from16 v22, p9

    move/from16 v24, p6

    move-object/from16 v25, v7

    move/from16 v26, p3

    move-object/from16 v28, p7

    move-object/from16 v29, p11

    invoke-interface/range {v15 .. v29}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2280
    .end local v1    # "position":[I
    .end local v5    # "mAuthViewSize":Landroid/util/Size;
    .end local v17    # "mWindowToken":Landroid/os/IBinder;
    goto :goto_3

    .line 2266
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v6, p4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v6, p4

    move-object/from16 v4, p8

    .line 2268
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v1, "Remote exception while authenticating"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    if-eqz v6, :cond_8

    .line 2276
    invoke-direct {v14, v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 2284
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    :goto_3
    return-void
.end method

.method private blacklist checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 25
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "irisView"    # Landroid/view/View;

    .line 2502
    move-object/from16 v10, p0

    move-object/from16 v11, p5

    const-string v1, "Bio.SemIrisManager"

    iget-object v0, v10, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    if-nez v0, :cond_0

    .line 2504
    new-instance v0, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler-IA;)V

    iput-object v0, v10, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    .line 2508
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2510
    iget-object v0, v10, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    new-instance v12, Lcom/samsung/android/bio/iris/SemIrisManager$2;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/bio/iris/SemIrisManager$2;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    invoke-virtual {v0, v12}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 2520
    return-void

    .line 2524
    :cond_1
    iget-object v0, v10, Lcom/samsung/android/bio/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v0}, Lcom/samsung/android/bio/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 2528
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    .line 2532
    .local v14, "mWindowToken":Landroid/os/IBinder;
    const/4 v0, 0x2

    new-array v0, v0, [I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2534
    .local v0, "position":[I
    move-object/from16 v3, p7

    :try_start_1
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2536
    iget-object v4, v10, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    if-nez v4, :cond_2

    .line 2538
    const-string v4, "mToken null"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_2
    iget-object v12, v10, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v13, v10, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    aget v15, v0, v4

    aget v16, v0, v2

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v18

    iget-object v4, v10, Lcom/samsung/android/bio/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v5, v10, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v19, p1

    move/from16 v20, p4

    move-object/from16 v21, v4

    move/from16 v22, p3

    move-object/from16 v24, p6

    invoke-interface/range {v12 .. v24}, Lcom/samsung/android/camera/iris/IIrisService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2556
    .end local v0    # "position":[I
    .end local v14    # "mWindowToken":Landroid/os/IBinder;
    goto :goto_1

    .line 2542
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v3, p7

    .line 2544
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    const-string v4, "Remote exception in enroll"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    if-eqz v11, :cond_3

    .line 2552
    invoke-direct {v10, v2}, Lcom/samsung/android/bio/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v2, v1}, Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 2560
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method private declared-synchronized blacklist ensureServiceConnected()Z
    .locals 4

    monitor-enter p0

    .line 4481
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4487
    const-wide/16 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4497
    goto :goto_0

    .line 4489
    .end local p0    # "this":Lcom/samsung/android/bio/iris/SemIrisManager;
    :catch_0
    move-exception v0

    .line 4491
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 4493
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 4503
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez v0, :cond_1

    .line 4505
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->startIrisService()V

    .line 4507
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->waitForService()V

    .line 4513
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    .line 4480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getAcquiredString(I)Ljava/lang/String;
    .locals 7
    .param p1, "acquireInfo"    # I

    .line 4192
    const-string v0, "Bio.SemIrisManager"

    const-string v1, "com.samsung.android.server.iris"

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4194
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 4200
    .local v3, "mRes":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 4208
    goto :goto_0

    .line 4202
    :catch_0
    move-exception v4

    .line 4204
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAcquiredString, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    const/4 v3, 0x0

    .line 4212
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 4214
    const-string v1, "mRes is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    return-object v4

    .line 4224
    :cond_0
    const-string/jumbo v5, "string"

    sparse-switch p1, :sswitch_data_0

    .line 4264
    return-object v4

    .line 4240
    :sswitch_0
    :try_start_1
    const-string v6, "iris_acquired_move_somewhere_darker"

    invoke-virtual {v3, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4236
    :sswitch_1
    const-string v6, "iris_acquired_open_wider"

    invoke-virtual {v3, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4232
    :sswitch_2
    const-string v6, "iris_acquired_move_farther"

    invoke-virtual {v3, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4228
    :sswitch_3
    const-string v6, "iris_acquired_move_closer"

    invoke-virtual {v3, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4244
    :sswitch_4
    const-string v6, "iris_acquired_change_your_position"

    invoke-virtual {v3, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 4268
    :catch_1
    move-exception v1

    .line 4270
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAcquiredString, NotFoundException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getCurrentUserId()I
    .locals 3

    .line 3987
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3989
    :catch_0
    move-exception v0

    .line 3991
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Bio.SemIrisManager"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3993
    const/16 v1, -0x2710

    return v1
.end method

.method private blacklist getErrorString(I)Ljava/lang/String;
    .locals 8
    .param p1, "errMsg"    # I

    .line 4057
    const-string v0, "Bio.SemIrisManager"

    const-string v1, "com.samsung.android.server.iris"

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4059
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 4063
    .local v3, "mRes":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 4071
    goto :goto_0

    .line 4065
    :catch_0
    move-exception v4

    .line 4067
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getErrorString, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    const/4 v3, 0x0

    .line 4073
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 4075
    const-string v1, "mRes is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    return-object v4

    .line 4085
    :cond_0
    const-string v5, ""

    const-string v6, "iris_error_unable_to_process"

    const-string/jumbo v7, "string"

    sparse-switch p1, :sswitch_data_0

    .line 4172
    goto/16 :goto_1

    .line 4137
    :sswitch_0
    :try_start_1
    const-string v5, "iris_error_proximity_alert"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4168
    :sswitch_1
    return-object v4

    .line 4165
    :sswitch_2
    const-string v5, "iris_error_unsupported_orientation"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4149
    :sswitch_3
    const-string v5, "iris_error_while_camera_in_use"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4161
    :sswitch_4
    const-string v5, "iris_error_need_set_lock_type"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4157
    :sswitch_5
    const-string v5, "iris_error_flip_off"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4153
    :sswitch_6
    const-string v5, "iris_error_no_eye_detected"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4145
    :sswitch_7
    const-string v5, "iris_error_video_call_interrupt"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4141
    :sswitch_8
    const-string v5, "iris_error_evicted"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4133
    :sswitch_9
    const-string v5, "iris_error_proximity_timeout"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4129
    :sswitch_a
    const-string v5, "iris_error_auth_view_size"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4125
    :sswitch_b
    const-string v5, "iris_error_eye_safety_timeout"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4121
    :sswitch_c
    return-object v5

    .line 4117
    :sswitch_d
    return-object v5

    .line 4109
    :sswitch_e
    const-string v5, "iris_error_lockout"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4113
    :sswitch_f
    const-string v5, "iris_error_unable_to_remove"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4105
    :sswitch_10
    const-string v5, "iris_error_canceled"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4097
    :sswitch_11
    const-string v5, "iris_error_no_space"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4101
    :sswitch_12
    const-string v5, "iris_error_timeout"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4089
    :sswitch_13
    invoke-virtual {v3, v6, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4093
    :sswitch_14
    const-string v5, "iris_error_sensor_no_response"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4176
    :catch_1
    move-exception v1

    goto :goto_2

    .line 4172
    :goto_1
    invoke-virtual {v3, v6, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 4178
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getErrorString, NotFoundException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_14
        0x1 -> :sswitch_13
        0x2 -> :sswitch_12
        0x3 -> :sswitch_11
        0x4 -> :sswitch_10
        0x5 -> :sswitch_f
        0x6 -> :sswitch_e
        0x7 -> :sswitch_d
        0x8 -> :sswitch_c
        0x9 -> :sswitch_b
        0xa -> :sswitch_a
        0xc -> :sswitch_9
        0xd -> :sswitch_8
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x19 -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/iris/SemIrisManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/bio/iris/SemIrisManager;

    monitor-enter v0

    .line 4431
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.camera.iris"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4433
    sget-object v1, Lcom/samsung/android/bio/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    if-nez v1, :cond_0

    .line 4435
    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/iris/SemIrisManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/bio/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    .line 4439
    :cond_0
    sget-object v1, Lcom/samsung/android/bio/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 4443
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 4430
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/bio/iris/SemIrisManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/bio/iris/SemIrisManager;

    monitor-enter v0

    .line 4451
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.camera.iris"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4452
    sget-object v1, Lcom/samsung/android/bio/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    if-nez v1, :cond_0

    .line 4453
    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/iris/SemIrisManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/bio/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    .line 4455
    :cond_0
    sget-object v1, Lcom/samsung/android/bio/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 4457
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 4450
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist requestGetUniqueID(ILjava/lang/String;)[B
    .locals 11
    .param p1, "irisId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3422
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3424
    return-object v1

    .line 3428
    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 3430
    .local v0, "outBuf":[B
    const/4 v10, 0x0

    .line 3434
    .local v10, "size":I
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 3438
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object v6, v0

    move v7, p1

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v2

    .line 3444
    goto :goto_0

    .line 3440
    :catch_0
    move-exception v2

    .line 3442
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Bio.SemIrisManager"

    const-string v4, "Remote exception in request()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-gtz v10, :cond_2

    .line 3450
    return-object v1

    .line 3454
    :cond_2
    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1
.end method

.method private blacklist sendAcquiredResult(JI)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .line 3915
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 3916
    invoke-virtual {v0, p3}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 3918
    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/bio/iris/SemIrisManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    .line 3919
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3920
    return-void

    .line 3923
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;

    if-eqz v1, :cond_2

    .line 3924
    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 3925
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    if-eqz v1, :cond_4

    .line 3926
    if-nez v0, :cond_3

    .line 3927
    return-void

    .line 3929
    :cond_3
    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 3931
    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .locals 1

    .line 3952
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 3953
    invoke-virtual {v0}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 3955
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;)V
    .locals 1
    .param p1, "result"    # Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;

    .line 3934
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 3935
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;)V

    .line 3937
    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;[B)V
    .locals 0
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "fidoResultData"    # [B

    .line 3949
    return-void
.end method

.method private blacklist sendErrorResult(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "errMsgId"    # I

    .line 3901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendErrorResult, errMsgId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bio.SemIrisManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 3903
    return-void

    .line 3905
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    .line 3906
    invoke-direct {p0, p3}, Lcom/samsung/android/bio/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 3907
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    if-eqz v0, :cond_2

    .line 3908
    invoke-direct {p0, p3}, Lcom/samsung/android/bio/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 3909
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

    if-eqz v0, :cond_3

    .line 3910
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    invoke-direct {p0, p3}, Lcom/samsung/android/bio/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    .line 3912
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist startIrisService()V
    .locals 4

    .line 4523
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4525
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.server.iris"

    const-string v3, "com.samsung.android.server.iris.IrisService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4527
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4533
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 4529
    :catch_0
    move-exception v0

    .line 4531
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting startIrisService failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bio.SemIrisManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4535
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 2050
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2052
    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 2054
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 2056
    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/bio/iris/SemIrisManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 2060
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist waitForService()V
    .locals 3

    .line 4543
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    .line 4545
    const-string/jumbo v1, "samsung.iris"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 4549
    if-eqz v1, :cond_0

    .line 4551
    const-string v1, "Bio.SemIrisManager"

    const-string v2, "Service connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4553
    return-void

    .line 4559
    :cond_0
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4565
    goto :goto_1

    .line 4563
    :catch_0
    move-exception v1

    .line 4543
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4569
    .end local v0    # "count":I
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist addLockoutResetCallback(Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;

    .line 3672
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3674
    return-void

    .line 3678
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-string v1, "Bio.SemIrisManager"

    if-eqz v0, :cond_1

    .line 3682
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3684
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    new-instance v3, Lcom/samsung/android/bio/iris/SemIrisManager$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$3;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/PowerManager;Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->addLockoutResetCallback(Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "powerManager":Landroid/os/PowerManager;
    goto :goto_0

    .line 3720
    :catch_0
    move-exception v0

    .line 3722
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in addLockoutResetCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 3728
    :cond_1
    const-string v0, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :goto_1
    return-void
.end method

.method public blacklist authenticate(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 31
    .param p1, "crypto"    # Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;

    .line 2096
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p4

    if-eqz v12, :cond_7

    .line 2104
    const-string v10, "Bio.SemIrisManager"

    if-eqz v15, :cond_1

    .line 2106
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    const-string v0, "authentication already canceled"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    return-void

    .line 2114
    :cond_0
    new-instance v0, Lcom/samsung/android/bio/iris/SemIrisManager$OnAuthenticationCancelListener;

    invoke-direct {v0, v13, v14}, Lcom/samsung/android/bio/iris/SemIrisManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;)V

    invoke-virtual {v15, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 2122
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2124
    return-void

    .line 2128
    :cond_2
    iget-object v0, v13, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_6

    .line 2132
    move-object/from16 v11, p5

    :try_start_0
    invoke-direct {v13, v11}, Lcom/samsung/android/bio/iris/SemIrisManager;->useHandler(Landroid/os/Handler;)V

    .line 2134
    const/4 v0, 0x0

    iput-object v0, v13, Lcom/samsung/android/bio/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;

    .line 2136
    iput-object v12, v13, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    .line 2138
    iput-object v14, v13, Lcom/samsung/android/bio/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    .line 2140
    if-eqz v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->getOpId()J

    move-result-wide v1

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x0

    :goto_0
    move-wide/from16 v23, v1

    .line 2142
    .local v23, "sessionId":J
    if-eqz v14, :cond_4

    iget-object v0, v13, Lcom/samsung/android/bio/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    invoke-virtual {v0}, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v0

    :cond_4
    move-object/from16 v30, v0

    .line 2144
    .local v30, "fidoRequestData":[B
    if-nez p8, :cond_5

    .line 2146
    iget-object v0, v13, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, v13, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v2, v13, Lcom/samsung/android/bio/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v3, v13, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v25, p6

    move-object/from16 v26, v2

    move/from16 v27, p3

    move-object/from16 v29, p7

    invoke-interface/range {v16 .. v30}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    move-object v15, v12

    goto :goto_1

    .line 2150
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v13, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthBegin:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2152
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v14, v10

    move-wide/from16 v10, v23

    move-object v15, v12

    move-object/from16 v12, v30

    :try_start_1
    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/bio/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2170
    .end local v23    # "sessionId":J
    .end local v30    # "fidoRequestData":[B
    :goto_1
    goto :goto_3

    .line 2156
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v14, v10

    move-object v15, v12

    .line 2158
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v1, "Remote exception while authenticating"

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    const/4 v1, 0x1

    invoke-direct {v13, v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 2128
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    move-object v15, v12

    .line 2172
    :goto_3
    return-void

    .line 2098
    :cond_7
    move-object v15, v12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist authenticate(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V
    .locals 9
    .param p1, "crypto"    # Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "irisView"    # Landroid/view/View;
    .param p7, "userId"    # I

    .line 2078
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/bio/iris/SemIrisManager;->authenticate(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 2080
    return-void
.end method

.method public whitelist authenticate(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 8
    .param p1, "crypto"    # Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "irisView"    # Landroid/view/View;

    .line 2003
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/bio/iris/SemIrisManager;->authenticate(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V

    .line 2005
    return-void
.end method

.method public whitelist authenticate(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;[B)V
    .locals 8
    .param p1, "crypto"    # Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "irisView"    # Landroid/view/View;
    .param p6, "requestData"    # [B

    .line 2011
    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    invoke-virtual {p1, p6}, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->setFidoRequestData([B)V

    .line 2013
    :cond_0
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/bio/iris/SemIrisManager;->authenticate(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V

    .line 2015
    return-void
.end method

.method public blacklist enableIRImageCallback(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 3165
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3167
    return-void

    .line 3169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_2

    .line 3173
    if-eqz p1, :cond_1

    .line 3175
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V

    goto :goto_0

    .line 3179
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3185
    :goto_0
    goto :goto_1

    .line 3181
    :catch_0
    move-exception v0

    .line 3183
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Bio.SemIrisManager"

    const-string v2, "Remote exception in enableIRImageCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 26
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "irisView"    # Landroid/view/View;

    .line 2412
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    const/4 v0, -0x2

    move/from16 v1, p4

    if-ne v1, v0, :cond_0

    .line 2414
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->getCurrentUserId()I

    move-result v0

    move/from16 v25, v0

    .end local p4    # "userId":I
    .local v0, "userId":I
    goto :goto_0

    .line 2412
    .end local v0    # "userId":I
    .restart local p4    # "userId":I
    :cond_0
    move/from16 v25, v1

    .line 2420
    .end local p4    # "userId":I
    .local v25, "userId":I
    :goto_0
    if-eqz v11, :cond_6

    .line 2428
    const-string v8, "Bio.SemIrisManager"

    const/4 v0, 0x0

    if-eqz v10, :cond_2

    .line 2430
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2432
    const-string v0, "enrollment already canceled"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    return-void

    .line 2438
    :cond_1
    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$OnEnrollCancelListener;

    invoke-direct {v1, v9, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager;Lcom/samsung/android/bio/iris/SemIrisManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {v10, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 2446
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2448
    return-void

    .line 2452
    :cond_3
    iget-object v12, v9, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v12, :cond_5

    .line 2456
    :try_start_0
    iput-object v0, v9, Lcom/samsung/android/bio/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    .line 2458
    iput-object v11, v9, Lcom/samsung/android/bio/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;

    .line 2460
    if-nez p7, :cond_4

    .line 2462
    iget-object v13, v9, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v0, v9, Lcom/samsung/android/bio/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v1, v9, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v19, p1

    move/from16 v20, v25

    move-object/from16 v21, v0

    move/from16 v22, p3

    move-object/from16 v24, p6

    invoke-interface/range {v12 .. v24}, Lcom/samsung/android/camera/iris/IIrisService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2466
    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, v25

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v12, v8

    move-object/from16 v8, p7

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/bio/iris/SemIrisManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2484
    :goto_1
    goto :goto_3

    .line 2470
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v12, v8

    .line 2472
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v1, "Remote exception in enroll"

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const/4 v1, 0x1

    invoke-direct {v9, v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 2486
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    return-void

    .line 2422
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 8
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "irisView"    # Landroid/view/View;

    .line 2400
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/bio/iris/SemIrisManager;->enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    .line 2402
    return-void
.end method

.method public blacklist getAuthenticatorId()J
    .locals 5

    .line 3590
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 3592
    return-wide v1

    .line 3596
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-string v3, "Bio.SemIrisManager"

    if-eqz v0, :cond_1

    .line 3600
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/samsung/android/camera/iris/IIrisService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 3602
    :catch_0
    move-exception v0

    .line 3604
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Remote exception in getAuthenticatorId()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 3610
    :cond_1
    const-string v0, "getAuthenticatorId(): Service not connected!"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    :goto_0
    return-wide v1
.end method

.method public whitelist getEnrolledIrisId()Ljava/lang/String;
    .locals 5

    .line 3263
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3265
    return-object v1

    .line 3267
    :cond_0
    const/4 v0, 0x0

    .line 3270
    .local v0, "irisList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 3274
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 3280
    goto :goto_0

    .line 3276
    :catch_0
    move-exception v2

    .line 3278
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Bio.SemIrisManager"

    const-string v4, "Remote exception in getEnrolledIrises"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    goto :goto_1

    .line 3292
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/iris/Iris;

    .line 3294
    .local v1, "ir":Lcom/samsung/android/camera/iris/Iris;
    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->requestGetUniqueID(ILjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/iris/SemIrisManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3299
    .end local v1    # "ir":Lcom/samsung/android/camera/iris/Iris;
    :cond_3
    return-object v1

    .line 3288
    :cond_4
    :goto_1
    return-object v1
.end method

.method public blacklist getEnrolledIrisUniqueID()Landroid/util/SparseArray;
    .locals 7

    .line 3203
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3205
    const/4 v0, 0x0

    return-object v0

    .line 3209
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3211
    .local v0, "localSparseArray":Landroid/util/SparseArray;
    const/4 v1, 0x0

    .line 3213
    .local v1, "irisList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    const/4 v2, 0x1

    .line 3217
    .local v2, "index":I
    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v3, :cond_1

    .line 3221
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 3227
    goto :goto_0

    .line 3223
    :catch_0
    move-exception v3

    .line 3225
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Bio.SemIrisManager"

    const-string v5, "Remote exception in getEnrolledIrises"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    goto :goto_2

    .line 3239
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/iris/Iris;

    .line 3241
    .local v4, "ir":Lcom/samsung/android/camera/iris/Iris;
    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/bio/iris/SemIrisManager;->requestGetUniqueID(ILjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/bio/iris/SemIrisManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3243
    nop

    .end local v4    # "ir":Lcom/samsung/android/camera/iris/Iris;
    add-int/lit8 v2, v2, 0x1

    .line 3245
    goto :goto_1

    .line 3235
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 3249
    :cond_4
    return-object v0
.end method

.method public blacklist getEnrolledIrises()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .line 2872
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnrolledIrises(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .line 2834
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2836
    return-object v1

    .line 2838
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 2842
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2844
    :catch_0
    move-exception v0

    .line 2846
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Bio.SemIrisManager"

    const-string v3, "Remote exception in getEnrolledIrises"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public blacklist getMinimumIrisViewSize()Landroid/util/Size;
    .locals 8

    .line 3075
    const/4 v0, 0x0

    .line 3077
    .local v0, "width":I
    const/4 v1, 0x0

    .line 3079
    .local v1, "height":I
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3081
    .local v2, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3083
    const v3, 0x3fe38e39

    .line 3085
    .local v3, "scale":F
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3089
    .local v4, "roundDensity":I
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_0

    .line 3091
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v5, v4

    .line 3093
    .end local v0    # "width":I
    .local v5, "width":I
    int-to-float v0, v5

    div-float/2addr v0, v3

    float-to-int v0, v0

    .end local v1    # "height":I
    .local v0, "height":I
    goto :goto_0

    .line 3097
    .end local v5    # "width":I
    .local v0, "width":I
    .restart local v1    # "height":I
    :cond_0
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v5, v4

    .line 3099
    .end local v0    # "width":I
    .restart local v5    # "width":I
    int-to-float v0, v5

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 3105
    .end local v1    # "height":I
    .local v0, "height":I
    :goto_0
    new-instance v1, Landroid/util/Size;

    mul-int v6, v5, v4

    mul-int v7, v0, v4

    invoke-direct {v1, v6, v7}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public blacklist getService()Lcom/samsung/android/camera/iris/IIrisService;
    .locals 1

    .line 2034
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    return-object v0

    .line 2037
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasDisabledIris()Z
    .locals 4

    .line 2973
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2975
    return v1

    .line 2979
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 2983
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->hasDisabledIris(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2985
    :catch_0
    move-exception v0

    .line 2987
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Bio.SemIrisManager"

    const-string v3, "Remote exception in getEnrolledFaces"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public whitelist hasEnrolledIris()Z
    .locals 4

    .line 2928
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2930
    return v1

    .line 2932
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 2936
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2938
    :catch_0
    move-exception v0

    .line 2940
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Bio.SemIrisManager"

    const-string v3, "Remote exception in getEnrolledIrises"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public blacklist hasEnrolledIrises()Z
    .locals 4

    .line 2894
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2896
    return v1

    .line 2898
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 2902
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2904
    :catch_0
    move-exception v0

    .line 2906
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Bio.SemIrisManager"

    const-string v3, "Remote exception in getEnrolledIrises"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public blacklist hasEnrolledIrises(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 3009
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3011
    return v1

    .line 3013
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 3015
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3017
    :catch_0
    move-exception v0

    .line 3019
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in getEnrolledIrises, userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bio.SemIrisManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public blacklist isEnrollSession()Z
    .locals 6

    .line 3376
    const/16 v1, 0x3ea

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    .line 3378
    .local v0, "ret":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isHardwareDetected()Z
    .locals 2

    .line 3043
    const-string v0, "Bio.SemIrisManager"

    const-string v1, "isIrisHardwareDetected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3047
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.camera.iris"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 3051
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist postEnroll()I
    .locals 4

    .line 2616
    const/4 v0, 0x0

    .line 2618
    .local v0, "result":I
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2620
    const/4 v1, 0x0

    return v1

    .line 2624
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 2628
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->postEnroll(Landroid/os/IBinder;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2634
    goto :goto_0

    .line 2630
    :catch_0
    move-exception v1

    .line 2632
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Bio.SemIrisManager"

    const-string v3, "Remote exception in post enroll"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v0
.end method

.method public blacklist preEnroll()J
    .locals 5

    .line 2578
    const-wide/16 v0, 0x0

    .line 2580
    .local v0, "result":J
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2582
    const-wide/16 v2, 0x0

    return-wide v2

    .line 2586
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 2590
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 2596
    goto :goto_0

    .line 2592
    :catch_0
    move-exception v2

    .line 2594
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Bio.SemIrisManager"

    const-string v4, "Remote exception in enroll"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public blacklist remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;)V
    .locals 7
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

    .line 2692
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2694
    return-void

    .line 2696
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 2700
    :try_start_0
    iput-object p3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

    .line 2702
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    .line 2704
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/camera/iris/IIrisService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2716
    goto :goto_0

    .line 2706
    :catch_0
    move-exception v0

    .line 2708
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Bio.SemIrisManager"

    const-string v2, "Remote exception in remove"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    if-eqz p3, :cond_1

    .line 2712
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p1, v1, v2}, Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    .line 2718
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist remove(Lcom/samsung/android/camera/iris/Iris;Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;)V
    .locals 7
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

    .line 2742
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2744
    return-void

    .line 2746
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 2750
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;

    .line 2752
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    .line 2754
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->getCurrentUserId()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/camera/iris/IIrisService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2766
    goto :goto_0

    .line 2756
    :catch_0
    move-exception v0

    .line 2758
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Bio.SemIrisManager"

    const-string v2, "Remote exception in remove"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    if-eqz p2, :cond_1

    .line 2762
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    .line 2768
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "irId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .line 2792
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2794
    return-void

    .line 2796
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-string v1, "Bio.SemIrisManager"

    if-eqz v0, :cond_1

    .line 2800
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/camera/iris/IIrisService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2802
    :catch_0
    move-exception v0

    .line 2804
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in rename()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 2810
    :cond_1
    const-string/jumbo v0, "rename(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    :goto_1
    return-void
.end method

.method public blacklist request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I
    .locals 10
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;

    .line 3326
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3328
    return v1

    .line 3332
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-string v0, "Bio.SemIrisManager"

    if-eqz v2, :cond_3

    .line 3336
    if-nez p2, :cond_1

    .line 3338
    :try_start_0
    new-array v3, v1, [B

    move-object p2, v3

    goto :goto_0

    .line 3352
    :catch_0
    move-exception v1

    goto :goto_1

    .line 3342
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    .line 3344
    new-array v1, v1, [B

    move-object p3, v1

    .line 3348
    :cond_2
    iput-object p5, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;

    .line 3350
    iget-object v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->getCurrentUserId()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3354
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1
    const-string v2, "Remote exception in request()"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 3360
    :cond_3
    const-string/jumbo v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    :goto_2
    const/4 v0, -0x2

    return v0
.end method

.method public blacklist requestCameraVersion()Z
    .locals 6

    .line 3564
    const/16 v1, 0x7d4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 3566
    const/4 v0, 0x0

    return v0

    .line 3570
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestCapture()Z
    .locals 6

    .line 3548
    const/16 v1, 0x7d2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 3550
    const/4 v0, 0x0

    return v0

    .line 3554
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestFullPreview()Z
    .locals 6

    .line 3516
    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 3518
    const/4 v0, 0x0

    return v0

    .line 3522
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestGetVersion()[B
    .locals 7

    .line 3404
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 3406
    .local v0, "outBuf":[B
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/bio/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I

    move-result v1

    .line 3408
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 3410
    const/4 v2, 0x0

    return-object v2

    .line 3414
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist requestLedOn()Z
    .locals 6

    .line 3500
    const/16 v1, 0x7d1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 3502
    const/4 v0, 0x0

    return v0

    .line 3506
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestPreviewMode()Z
    .locals 6

    .line 3532
    const/16 v1, 0x7d3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 3534
    const/4 v0, 0x0

    return v0

    .line 3538
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestProcessFIDO([B)[B
    .locals 7
    .param p1, "inBuf"    # [B

    .line 3464
    const/16 v0, 0x2800

    new-array v0, v0, [B

    .line 3466
    .local v0, "outBuf":[B
    const/16 v2, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/bio/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I

    move-result v1

    .line 3468
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 3470
    const/4 v2, 0x0

    return-object v2

    .line 3474
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist requestSessionOpen()Z
    .locals 6

    .line 3388
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 3390
    const/4 v0, 0x0

    return v0

    .line 3394
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestUpdateSID([B)Z
    .locals 6
    .param p1, "sId"    # [B

    .line 3484
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/bio/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 3486
    const/4 v0, 0x0

    return v0

    .line 3490
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .line 3636
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3638
    return-void

    .line 3642
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-string v1, "Bio.SemIrisManager"

    if-eqz v0, :cond_1

    .line 3646
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/camera/iris/IIrisService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3648
    :catch_0
    move-exception v0

    .line 3650
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 3656
    :cond_1
    const-string/jumbo v0, "resetTimeout(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    :goto_1
    return-void
.end method

.method public blacklist setActiveUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2658
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_0

    .line 2660
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/camera/iris/IIrisService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2666
    goto :goto_0

    .line 2662
    :catch_0
    move-exception v0

    .line 2664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Bio.SemIrisManager"

    const-string v2, "Remote exception in setActiveUser"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setIrisViewType(I)V
    .locals 3
    .param p1, "irisViewType"    # I

    .line 3131
    invoke-direct {p0}, Lcom/samsung/android/bio/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3133
    return-void

    .line 3135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 3139
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/camera/iris/IIrisService;->setIrisViewType(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3145
    goto :goto_0

    .line 3141
    :catch_0
    move-exception v0

    .line 3143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Bio.SemIrisManager"

    const-string v2, "Remote exception in setIrisViewType"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setOnIrImageReadyListener(Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;

    .line 1123
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager;->mListener:Lcom/samsung/android/bio/iris/SemIrisManager$OnIrImageReadyListener;

    .line 1125
    if-eqz p1, :cond_0

    .line 1127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->enableIRImageCallback(Z)V

    goto :goto_0

    .line 1131
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->enableIRImageCallback(Z)V

    .line 1135
    :goto_0
    return-void
.end method
