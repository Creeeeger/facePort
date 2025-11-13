.class public Lcom/samsung/android/camera/iris/SemIrisManager;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;,
        Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;,
        Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;,
        Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;,
        Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;,
        Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;
    }
.end annotation


# static fields
.field public static final blacklist CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final blacklist CLIENTSPEC_KEY_USE_MANUAL_TIMEOUT:Ljava/lang/String; = "useManualTimeout"

.field public static final blacklist CLIENT_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field public static final blacklist ENABLE_IMAGE_CALLBACK:I = 0xc350

.field public static final blacklist FRONT_SENSOR_ORIENTATION:I = 0xc352

.field public static final blacklist IRIS_ACQUIRED_CHANGE_YOUR_POSITION:I = 0xc

.field public static final blacklist IRIS_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final blacklist IRIS_ACQUIRED_EYE_NOT_PRESENT:I = 0xa

.field public static final blacklist IRIS_ACQUIRED_GOOD:I = 0x0

.field public static final blacklist IRIS_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final blacklist IRIS_ACQUIRED_MOVE_CLOSER:I = 0x3

.field public static final blacklist IRIS_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final blacklist IRIS_ACQUIRED_MOVE_FARTHER:I = 0x4

.field public static final blacklist IRIS_ACQUIRED_MOVE_LEFT:I = 0x5

.field public static final blacklist IRIS_ACQUIRED_MOVE_RIGHT:I = 0x6

.field public static final blacklist IRIS_ACQUIRED_MOVE_SOMEWHERE_DARKER:I = 0xb

.field public static final blacklist IRIS_ACQUIRED_MOVE_UP:I = 0x7

.field public static final blacklist IRIS_ACQUIRED_OPEN_EYES_WIDER:I = 0x9

.field public static final blacklist IRIS_ACQUIRED_PARTIAL:I = 0x1

.field public static final blacklist IRIS_AUTH_TYPE_NONE:I = 0x0

.field public static final blacklist IRIS_AUTH_TYPE_PREVIEW_CALLBACK:I = 0x1

.field public static final blacklist IRIS_AUTH_TYPE_UI_NO_PREVIEW:I = 0x3

.field public static final blacklist IRIS_AUTH_TYPE_UI_WITH_PREVIEW:I = 0x2

.field public static final blacklist IRIS_DISABLE_PREVIEW_CALLBACK:I = 0x7

.field public static final blacklist IRIS_ENABLE_PREVIEW_CALLBACK:I = 0x6

.field public static final blacklist IRIS_ERROR_AUTH_VIEW_SIZE:I = 0xa

.field public static final blacklist IRIS_ERROR_AUTH_WINDOW_TOKEN:I = 0xb

.field public static final blacklist IRIS_ERROR_CANCELED:I = 0x4

.field public static final blacklist IRIS_ERROR_EVICTED:I = 0xd

.field public static final blacklist IRIS_ERROR_EVICTED_CAMERA_IN_USE:I = 0x13

.field public static final blacklist IRIS_ERROR_EVICTED_DUE_TO_VIDEO_CALL:I = 0xe

.field public static final blacklist IRIS_ERROR_EYE_SAFETY_TIMEOUT:I = 0x9

.field public static final blacklist IRIS_ERROR_FLIP_OFF:I = 0x11

.field public static final blacklist IRIS_ERROR_HW_UNAVAILABLE:I = 0x0

.field public static final blacklist IRIS_ERROR_LOCKOUT:I = 0x6

.field public static final blacklist IRIS_ERROR_LOCKOUT_PERMANENT:I = 0x10

.field public static final blacklist IRIS_ERROR_NEED_SET_LOCK_TYPE:I = 0x12

.field public static final blacklist IRIS_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final blacklist IRIS_ERROR_NO_EYE_DETECTED:I = 0xf

.field public static final blacklist IRIS_ERROR_NO_SPACE:I = 0x3

.field public static final blacklist IRIS_ERROR_OPEN_IR_CAMERA_FAIL:I = 0x8

.field public static final blacklist IRIS_ERROR_PROXIMITY_ALERT:I = 0x7b

.field public static final blacklist IRIS_ERROR_PROXIMITY_TIMEOUT:I = 0xc

.field public static final blacklist IRIS_ERROR_START_IR_CAMERA_PREVIEW_FAIL:I = 0x7

.field public static final blacklist IRIS_ERROR_TIMEOUT:I = 0x2

.field public static final blacklist IRIS_ERROR_UNABLE_TO_PROCESS:I = 0x1

.field public static final blacklist IRIS_ERROR_UNABLE_TO_REMOVE:I = 0x5

.field public static final blacklist IRIS_ERROR_UNSUPPORTED_ORIENTATION:I = 0x14

.field public static final blacklist IRIS_ERROR_USER_CANCELED:I = 0x15

.field public static final blacklist IRIS_INVISIBLE_PREVIEW:I = 0x4

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

.field public static final blacklist IRIS_VISIBLE_PREVIEW:I = 0x5

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

.field private static final blacklist TAG:Ljava/lang/String; = "SemIrisManager"

.field private static final blacklist USE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.USE_IRIS"

.field private static blacklist mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;


# instance fields
.field private blacklist mAuthBegin:J

.field private blacklist mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

.field private blacklist mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

.field private blacklist mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

.field private blacklist mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

.field private blacklist mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

.field private blacklist mService:Lcom/samsung/android/camera/iris/IIrisService;

.field private blacklist mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCryptoObject(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnrollmentCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemovalCallback(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemovalIris(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->cancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEnrollment(Lcom/samsung/android/camera/iris/SemIrisManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->cancelEnrollment()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckEnrollViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAcquiredString(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetErrorString(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 501
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 2033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 513
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    .line 1979
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$4;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 2034
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 2036
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 2037
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 2039
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/camera/iris/IIrisService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/camera/iris/IIrisService;

    .line 1820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 513
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    .line 1979
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$4;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 1821
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 1822
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 1823
    if-nez p2, :cond_0

    .line 1824
    const-string v0, "SemIrisManager"

    const-string v1, "SemIrisManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_0
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 1827
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 1828
    return-void
.end method

.method private static blacklist byteArrayToHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "byteArray"    # [B

    .line 2095
    if-nez p0, :cond_0

    .line 2096
    const/4 v0, 0x0

    return-object v0

    .line 2099
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2100
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    .line 2101
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

    .line 2100
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2103
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist bytesToString([BI)Ljava/lang/String;
    .locals 5
    .param p0, "a"    # [B
    .param p1, "len"    # I

    .line 2107
    array-length v0, p0

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    .line 2110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2111
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 2112
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

    .line 2111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2114
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2108
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist cancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .line 1854
    const-string v0, "SemIrisManager"

    const-string v1, "cancelAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1856
    return-void

    .line 1858
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1860
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    goto :goto_0

    .line 1861
    :catch_0
    move-exception v1

    .line 1862
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception while canceling authentication"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist cancelEnrollment()V
    .locals 3

    .line 1840
    const-string v0, "SemIrisManager"

    const-string v1, "cancelEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1842
    return-void

    .line 1844
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1846
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1849
    goto :goto_0

    .line 1847
    :catch_0
    move-exception v1

    .line 1848
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception while canceling enrollment"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 30
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;
    .param p9, "sessionId"    # J
    .param p11, "fidoRequestData"    # [B

    .line 971
    move-object/from16 v14, p0

    move-object/from16 v15, p4

    const-string/jumbo v0, "x"

    iget-object v1, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    if-nez v1, :cond_0

    .line 972
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler-IA;)V

    iput-object v1, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 974
    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "SemIrisManager"

    if-nez v1, :cond_3

    .line 975
    const-string v0, "checking AuthViewWindowToken"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    .line 977
    const-string v0, "checkAuthViewWindowToken is null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v0, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 979
    if-eqz v15, :cond_1

    .line 980
    invoke-direct {v14, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v2, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 982
    :cond_1
    return-void

    .line 984
    :cond_2
    iget-object v0, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    new-instance v13, Lcom/samsung/android/camera/iris/SemIrisManager$1;

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

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/camera/iris/SemIrisManager$1;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    invoke-virtual {v0, v15}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 989
    return-void

    .line 991
    :cond_3
    iget-object v1, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 993
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v17

    .line 995
    .local v17, "mWindowToken":Landroid/os/IBinder;
    const/4 v1, 0x2

    new-array v1, v1, [I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 996
    .local v1, "position":[I
    move-object/from16 v4, p8

    :try_start_1
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 997
    iget-object v5, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    if-nez v5, :cond_4

    .line 998
    const-string v5, "mToken null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getMinimumIrisViewSize()Landroid/util/Size;

    move-result-object v5

    .line 1002
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

    .line 1003
    :cond_6
    :goto_0
    move-object/from16 v6, p4

    if-eqz v6, :cond_7

    .line 1004
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

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_7
    :goto_1
    iget-object v15, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v0, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    aget v18, v1, v7

    aget v19, v1, v2

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v21

    iget-object v7, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v8, v14, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 1010
    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v27

    .line 1009
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

    .line 1018
    .end local v1    # "position":[I
    .end local v5    # "mAuthViewSize":Landroid/util/Size;
    .end local v17    # "mWindowToken":Landroid/os/IBinder;
    goto :goto_3

    .line 1011
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

    .line 1012
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v1, "Remote exception while authenticating"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    if-eqz v6, :cond_8

    .line 1016
    invoke-direct {v14, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 1020
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    :goto_3
    return-void
.end method

.method private blacklist checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 25
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "irisView"    # Landroid/view/View;

    .line 1127
    move-object/from16 v10, p0

    move-object/from16 v11, p5

    const-string v1, "SemIrisManager"

    const-string v0, "checkEnrollViewWindowToken"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, v10, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    if-nez v0, :cond_0

    .line 1132
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler-IA;)V

    iput-object v0, v10, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 1134
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1135
    const-string v0, "check, irisView.getWindowToken() is null"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, v10, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    new-instance v12, Lcom/samsung/android/camera/iris/SemIrisManager$2;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/camera/iris/SemIrisManager$2;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    invoke-virtual {v0, v12}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 1141
    return-void

    .line 1143
    :cond_1
    iget-object v0, v10, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 1145
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    .line 1147
    .local v14, "mWindowToken":Landroid/os/IBinder;
    const/4 v0, 0x2

    new-array v0, v0, [I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1148
    .local v0, "position":[I
    move-object/from16 v3, p7

    :try_start_1
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1149
    iget-object v4, v10, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    if-nez v4, :cond_2

    .line 1150
    const-string v4, "mToken null"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check, irisView.Width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "irisView.Height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v12, v10, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v13, v10, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    aget v15, v0, v4

    aget v16, v0, v2

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v18

    iget-object v4, v10, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v5, v10, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

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

    .line 1160
    .end local v0    # "position":[I
    .end local v14    # "mWindowToken":Landroid/os/IBinder;
    goto :goto_1

    .line 1153
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v3, p7

    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    const-string v4, "Remote exception in enroll"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    if-eqz v11, :cond_3

    .line 1158
    invoke-direct {v10, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v2, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 1162
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method private declared-synchronized blacklist ensureServiceConnected()Z
    .locals 4

    monitor-enter p0

    .line 2048
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2051
    const-wide/16 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2056
    goto :goto_0

    .line 2052
    .end local p0    # "this":Lcom/samsung/android/camera/iris/SemIrisManager;
    :catch_0
    move-exception v0

    .line 2053
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 2054
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 2059
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez v0, :cond_1

    .line 2060
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->startIrisService()V

    .line 2061
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->waitForService()V

    .line 2064
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
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

    .line 2047
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getAcquiredString(I)Ljava/lang/String;
    .locals 7
    .param p1, "acquireInfo"    # I

    .line 1935
    const-string v0, "SemIrisManager"

    const-string v1, "com.samsung.android.server.iris"

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1936
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1939
    .local v3, "mRes":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 1943
    goto :goto_0

    .line 1940
    :catch_0
    move-exception v4

    .line 1941
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

    .line 1942
    const/4 v3, 0x0

    .line 1945
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1946
    const-string v1, "mRes is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    return-object v4

    .line 1951
    :cond_0
    const-string/jumbo v5, "string"

    sparse-switch p1, :sswitch_data_0

    .line 1971
    return-object v4

    .line 1961
    :sswitch_0
    :try_start_1
    const-string v6, "iris_acquired_change_your_position"

    invoke-virtual {v3, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1959
    :sswitch_1
    const-string v6, "iris_acquired_move_somewhere_darker"

    invoke-virtual {v3, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1957
    :sswitch_2
    const-string v6, "iris_acquired_open_wider"

    invoke-virtual {v3, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1955
    :sswitch_3
    const-string v6, "iris_acquired_move_farther"

    invoke-virtual {v3, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1953
    :sswitch_4
    const-string v6, "iris_acquired_move_closer"

    invoke-virtual {v3, v6, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 1973
    :catch_1
    move-exception v1

    .line 1974
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

    .line 1975
    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x9 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getCurrentUserId()I
    .locals 3

    .line 1832
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1833
    :catch_0
    move-exception v0

    .line 1834
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/16 v1, -0x2710

    return v1
.end method

.method private blacklist getErrorString(I)Ljava/lang/String;
    .locals 8
    .param p1, "errMsg"    # I

    .line 1867
    const-string v0, "SemIrisManager"

    const-string v1, "com.samsung.android.server.iris"

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1868
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1870
    .local v3, "mRes":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 1874
    goto :goto_0

    .line 1871
    :catch_0
    move-exception v4

    .line 1872
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

    .line 1873
    const/4 v3, 0x0

    .line 1875
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1876
    const-string v1, "mRes is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    return-object v4

    .line 1881
    :cond_0
    const-string v5, ""

    const-string v6, "iris_error_unable_to_process"

    const-string/jumbo v7, "string"

    sparse-switch p1, :sswitch_data_0

    .line 1925
    goto/16 :goto_1

    .line 1907
    :sswitch_0
    :try_start_1
    const-string v5, "iris_error_proximity_alert"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1923
    :sswitch_1
    return-object v4

    .line 1921
    :sswitch_2
    const-string v5, "iris_error_unsupported_orientation"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1913
    :sswitch_3
    const-string v5, "iris_error_while_camera_in_use"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1919
    :sswitch_4
    const-string v5, "iris_error_need_set_lock_type"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1917
    :sswitch_5
    const-string v5, "iris_error_flip_off"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1915
    :sswitch_6
    const-string v5, "iris_error_no_eye_detected"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1911
    :sswitch_7
    const-string v5, "iris_error_video_call_interrupt"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1909
    :sswitch_8
    const-string v5, "iris_error_evicted"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1905
    :sswitch_9
    const-string v5, "iris_error_proximity_timeout"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1903
    :sswitch_a
    const-string v5, "iris_error_auth_view_size"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1901
    :sswitch_b
    const-string v5, "iris_error_eye_safety_timeout"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1899
    :sswitch_c
    return-object v5

    .line 1897
    :sswitch_d
    return-object v5

    .line 1893
    :sswitch_e
    const-string v5, "iris_error_lockout"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1895
    :sswitch_f
    const-string v5, "iris_error_unable_to_remove"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1891
    :sswitch_10
    const-string v5, "iris_error_canceled"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1887
    :sswitch_11
    const-string v5, "iris_error_no_space"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1889
    :sswitch_12
    const-string v5, "iris_error_timeout"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1883
    :sswitch_13
    invoke-virtual {v3, v6, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1885
    :sswitch_14
    const-string v5, "iris_error_sensor_no_response"

    invoke-virtual {v3, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1927
    :catch_1
    move-exception v1

    goto :goto_2

    .line 1925
    :goto_1
    invoke-virtual {v3, v6, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 1928
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

    .line 1929
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

.method public static declared-synchronized blacklist getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/camera/iris/SemIrisManager;

    monitor-enter v0

    .line 2022
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.camera.iris"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2023
    sget-object v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v1, :cond_0

    .line 2024
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/SemIrisManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 2026
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 2028
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2021
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

    .line 1535
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1536
    return-object v1

    .line 1538
    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 1539
    .local v0, "outBuf":[B
    const/4 v10, 0x0

    .line 1541
    .local v10, "size":I
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 1543
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object v6, v0

    move v7, p1

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v2

    .line 1546
    goto :goto_0

    .line 1544
    :catch_0
    move-exception v2

    .line 1545
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SemIrisManager"

    const-string v4, "Remote exception in request()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-gtz v10, :cond_2

    .line 1549
    return-object v1

    .line 1551
    :cond_2
    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1
.end method

.method private blacklist startIrisService()V
    .locals 4

    .line 2069
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2070
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.server.iris"

    const-string v3, "com.samsung.android.server.iris.IrisService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2071
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2074
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 2072
    :catch_0
    move-exception v0

    .line 2073
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

    const-string v2, "SemIrisManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 902
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 903
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 905
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 907
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist waitForService()V
    .locals 3

    .line 2079
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    .line 2080
    const-string/jumbo v1, "samsung.iris"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 2082
    if-eqz v1, :cond_0

    .line 2083
    const-string v1, "SemIrisManager"

    const-string v2, "Service connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    return-void

    .line 2087
    :cond_0
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    goto :goto_1

    .line 2089
    :catch_0
    move-exception v1

    .line 2079
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2092
    .end local v0    # "count":I
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist addLockoutResetCallback(Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;

    .line 1660
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1661
    return-void

    .line 1663
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-string v1, "SemIrisManager"

    if-eqz v0, :cond_1

    .line 1665
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1666
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    new-instance v3, Lcom/samsung/android/camera/iris/SemIrisManager$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$3;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/PowerManager;Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->addLockoutResetCallback(Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "powerManager":Landroid/os/PowerManager;
    goto :goto_0

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in addLockoutResetCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1688
    :cond_1
    const-string v0, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :goto_1
    return-void
.end method

.method public blacklist authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 31
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;

    .line 925
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p4

    if-eqz v12, :cond_7

    .line 929
    const-string v10, "SemIrisManager"

    if-eqz v15, :cond_1

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    const-string v0, "authentication already canceled"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return-void

    .line 934
    :cond_0
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;

    invoke-direct {v0, v13, v14}, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    invoke-virtual {v15, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 938
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 939
    return-void

    .line 941
    :cond_2
    iget-object v0, v13, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_6

    .line 943
    move-object/from16 v11, p5

    :try_start_0
    invoke-direct {v13, v11}, Lcom/samsung/android/camera/iris/SemIrisManager;->useHandler(Landroid/os/Handler;)V

    .line 944
    const/4 v0, 0x0

    iput-object v0, v13, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    .line 945
    iput-object v12, v13, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    .line 946
    iput-object v14, v13, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .line 947
    if-eqz v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->getOpId()J

    move-result-wide v1

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x0

    :goto_0
    move-wide/from16 v23, v1

    .line 948
    .local v23, "sessionId":J
    if-eqz v14, :cond_4

    iget-object v0, v13, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v0

    :cond_4
    move-object/from16 v30, v0

    .line 949
    .local v30, "fidoRequestData":[B
    if-nez p8, :cond_5

    .line 950
    iget-object v0, v13, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, v13, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v2, v13, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v3, v13, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

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

    .line 952
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v13, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 953
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
    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 962
    .end local v23    # "sessionId":J
    .end local v30    # "fidoRequestData":[B
    :goto_1
    goto :goto_3

    .line 955
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v14, v10

    move-object v15, v12

    .line 956
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v1, "Remote exception while authenticating"

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v1, 0x1

    invoke-direct {v13, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 941
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    move-object v15, v12

    .line 963
    :goto_3
    return-void

    .line 926
    :cond_7
    move-object v15, v12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 8
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "irisView"    # Landroid/view/View;

    .line 894
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V

    .line 895
    return-void
.end method

.method public blacklist authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V
    .locals 9
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "irisView"    # Landroid/view/View;
    .param p7, "userId"    # I

    .line 916
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 917
    return-void
.end method

.method public blacklist enableIRImageCallback(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1439
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    return-void

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_2

    .line 1443
    if-eqz p1, :cond_1

    .line 1444
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V

    goto :goto_0

    .line 1446
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    :goto_0
    goto :goto_1

    .line 1447
    :catch_0
    move-exception v0

    .line 1448
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in enableIRImageCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 26
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "irisView"    # Landroid/view/View;

    .line 1084
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    const/4 v0, -0x2

    move/from16 v1, p4

    if-ne v1, v0, :cond_0

    .line 1085
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v0

    move/from16 v25, v0

    .end local p4    # "userId":I
    .local v0, "userId":I
    goto :goto_0

    .line 1084
    .end local v0    # "userId":I
    .restart local p4    # "userId":I
    :cond_0
    move/from16 v25, v1

    .line 1088
    .end local p4    # "userId":I
    .local v25, "userId":I
    :goto_0
    if-eqz v11, :cond_6

    .line 1092
    const/4 v0, 0x0

    const-string v8, "SemIrisManager"

    if-eqz v10, :cond_2

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1094
    const-string v0, "enrollment already canceled"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1097
    :cond_1
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;

    invoke-direct {v1, v9, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {v10, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1101
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1102
    return-void

    .line 1104
    :cond_3
    iget-object v1, v9, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_5

    .line 1106
    :try_start_0
    iput-object v0, v9, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    .line 1107
    iput-object v11, v9, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    .line 1108
    if-nez p7, :cond_4

    .line 1109
    const-string v0, "irisView null"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v12, v9, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v13, v9, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v0, v9, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v1, v9, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v19, p1

    move/from16 v20, v25

    move-object/from16 v21, v0

    move/from16 v22, p3

    move-object/from16 v24, p6

    invoke-interface/range {v12 .. v24}, Lcom/samsung/android/camera/iris/IIrisService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1112
    :cond_4
    const-string v0, "irisView not null"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1113
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
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1122
    :goto_1
    goto :goto_3

    .line 1115
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v12, v8

    .line 1116
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v1, "Remote exception in enroll"

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/4 v1, 0x1

    invoke-direct {v9, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 1123
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    return-void

    .line 1089
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 8
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "irisView"    # Landroid/view/View;

    .line 1078
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    .line 1079
    return-void
.end method

.method public blacklist getAuthenticatorId()J
    .locals 5

    .line 1619
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 1620
    return-wide v1

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-string v3, "SemIrisManager"

    if-eqz v0, :cond_1

    .line 1624
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/samsung/android/camera/iris/IIrisService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Remote exception in getAuthenticatorId()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1629
    :cond_1
    const-string v0, "getAuthenticatorId(): Service not connected!"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :goto_0
    return-wide v1
.end method

.method public blacklist getEnrolledIrisUniqueID()Landroid/util/SparseArray;
    .locals 7

    .line 1458
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    const/4 v0, 0x0

    return-object v0

    .line 1461
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1462
    .local v0, "localSparseArray":Landroid/util/SparseArray;
    const/4 v1, 0x0

    .line 1463
    .local v1, "irisList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    const/4 v2, 0x1

    .line 1465
    .local v2, "index":I
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v3, :cond_1

    .line 1467
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 1470
    goto :goto_0

    .line 1468
    :catch_0
    move-exception v3

    .line 1469
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SemIrisManager"

    const-string v5, "Remote exception in getEnrolledIrises"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    goto :goto_2

    .line 1476
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

    .line 1477
    .local v4, "ir":Lcom/samsung/android/camera/iris/Iris;
    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->requestGetUniqueID(ILjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1478
    nop

    .end local v4    # "ir":Lcom/samsung/android/camera/iris/Iris;
    add-int/lit8 v2, v2, 0x1

    .line 1479
    goto :goto_1

    .line 1474
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 1481
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

    .line 1310
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

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

    .line 1291
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1292
    return-object v1

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 1295
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in getEnrolledIrises"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public blacklist getMinimumIrisViewSize()Landroid/util/Size;
    .locals 8

    .line 1393
    const/4 v0, 0x0

    .line 1394
    .local v0, "width":I
    const/4 v1, 0x0

    .line 1395
    .local v1, "height":I
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1396
    .local v2, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1397
    const v3, 0x3fe38e39

    .line 1398
    .local v3, "scale":F
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1400
    .local v4, "roundDensity":I
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_0

    .line 1401
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v5, v4

    .line 1402
    .end local v0    # "width":I
    .local v5, "width":I
    int-to-float v0, v5

    div-float/2addr v0, v3

    float-to-int v0, v0

    .end local v1    # "height":I
    .local v0, "height":I
    goto :goto_0

    .line 1404
    .end local v5    # "width":I
    .local v0, "width":I
    .restart local v1    # "height":I
    :cond_0
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v5, v4

    .line 1405
    .end local v0    # "width":I
    .restart local v5    # "width":I
    int-to-float v0, v5

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 1408
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

    .line 2043
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    .line 2044
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    return-object v0
.end method

.method public blacklist hasDisabledIris()Z
    .locals 4

    .line 1343
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1344
    return v1

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 1348
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->hasDisabledIris(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in getEnrolledFaces"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public blacklist hasEnrolledIrises()Z
    .locals 4

    .line 1320
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1321
    return v1

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 1324
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in getEnrolledIrises"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public blacklist hasEnrolledIrises(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1361
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1362
    return v1

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 1364
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
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

    const-string v3, "SemIrisManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public blacklist isEnrollSession()Z
    .locals 6

    .line 1512
    const/16 v1, 0x3ea

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    .line 1513
    .local v0, "ret":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isHardwareDetected()Z
    .locals 2

    .line 1378
    const-string v0, "SemIrisManager"

    const-string v1, "isIrisHardwareDetected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1380
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.camera.iris"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1382
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist postEnroll()I
    .locals 4

    .line 1190
    const/4 v0, 0x0

    .line 1191
    .local v0, "result":I
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1192
    const/4 v1, 0x0

    return v1

    .line 1194
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1196
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->postEnroll(Landroid/os/IBinder;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1199
    goto :goto_0

    .line 1197
    :catch_0
    move-exception v1

    .line 1198
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in post enroll"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v0
.end method

.method public blacklist preEnroll()J
    .locals 5

    .line 1171
    const-wide/16 v0, 0x0

    .line 1172
    .local v0, "result":J
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1173
    const-wide/16 v2, 0x0

    return-wide v2

    .line 1175
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 1177
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 1180
    goto :goto_0

    .line 1178
    :catch_0
    move-exception v2

    .line 1179
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SemIrisManager"

    const-string v4, "Remote exception in enroll"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public blacklist remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    .locals 7
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .line 1228
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    return-void

    .line 1230
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1232
    :try_start_0
    iput-object p3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .line 1233
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    .line 1234
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/camera/iris/IIrisService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    goto :goto_0

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in remove"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    if-eqz p3, :cond_1

    .line 1238
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p1, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    .line 1241
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist remove(Lcom/samsung/android/camera/iris/Iris;Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    .locals 7
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .line 1245
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1246
    return-void

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1249
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .line 1250
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    .line 1251
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/camera/iris/IIrisService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in remove"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    if-eqz p2, :cond_1

    .line 1255
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    .line 1258
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

    .line 1270
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1271
    return-void

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-string v1, "SemIrisManager"

    if-eqz v0, :cond_1

    .line 1274
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/camera/iris/IIrisService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in rename()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1279
    :cond_1
    const-string/jumbo v0, "rename(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :goto_1
    return-void
.end method

.method public blacklist request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I
    .locals 10
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    .line 1487
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1488
    return v1

    .line 1490
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-string v0, "SemIrisManager"

    if-eqz v2, :cond_3

    .line 1492
    if-nez p2, :cond_1

    .line 1493
    :try_start_0
    new-array v3, v1, [B

    move-object p2, v3

    goto :goto_0

    .line 1500
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1495
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    .line 1496
    new-array v1, v1, [B

    move-object p3, v1

    .line 1498
    :cond_2
    iput-object p5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    .line 1499
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1501
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1
    const-string v2, "Remote exception in request()"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 1504
    :cond_3
    const-string/jumbo v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :goto_2
    const/4 v0, -0x2

    return v0
.end method

.method public blacklist requestCameraVersion()Z
    .locals 6

    .line 1606
    const/16 v1, 0x7d4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1607
    const/4 v0, 0x0

    return v0

    .line 1609
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestCapture()Z
    .locals 6

    .line 1598
    const/16 v1, 0x7d2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1599
    const/4 v0, 0x0

    return v0

    .line 1601
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestFullPreview()Z
    .locals 6

    .line 1582
    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1583
    const/4 v0, 0x0

    return v0

    .line 1585
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestGetVersion()[B
    .locals 7

    .line 1526
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 1527
    .local v0, "outBuf":[B
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v1

    .line 1528
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 1529
    const/4 v2, 0x0

    return-object v2

    .line 1531
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist requestLedOn()Z
    .locals 6

    .line 1574
    const/16 v1, 0x7d1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1575
    const/4 v0, 0x0

    return v0

    .line 1577
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestPreviewMode()Z
    .locals 6

    .line 1590
    const/16 v1, 0x7d3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1591
    const/4 v0, 0x0

    return v0

    .line 1593
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestProcessFIDO([B)[B
    .locals 7
    .param p1, "inBuf"    # [B

    .line 1556
    const/16 v0, 0x2800

    new-array v0, v0, [B

    .line 1557
    .local v0, "outBuf":[B
    const/16 v2, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v1

    .line 1558
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 1559
    const/4 v2, 0x0

    return-object v2

    .line 1561
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist requestSessionOpen()Z
    .locals 6

    .line 1518
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1519
    const/4 v0, 0x0

    return v0

    .line 1521
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestUpdateSID([B)Z
    .locals 6
    .param p1, "sId"    # [B

    .line 1566
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1567
    const/4 v0, 0x0

    return v0

    .line 1569
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .line 1642
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1643
    return-void

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-string v1, "SemIrisManager"

    if-eqz v0, :cond_1

    .line 1647
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/camera/iris/IIrisService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1648
    :catch_0
    move-exception v0

    .line 1649
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1652
    :cond_1
    const-string/jumbo v0, "resetTimeout(): Service not connected!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :goto_1
    return-void
.end method

.method public blacklist setActiveUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1211
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_0

    .line 1212
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/camera/iris/IIrisService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    goto :goto_0

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in setActiveUser"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setIrisViewType(I)V
    .locals 3
    .param p1, "irisViewType"    # I

    .line 1422
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    return-void

    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 1426
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/camera/iris/IIrisService;->setIrisViewType(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    goto :goto_0

    .line 1427
    :catch_0
    move-exception v0

    .line 1428
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in setIrisViewType"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method
