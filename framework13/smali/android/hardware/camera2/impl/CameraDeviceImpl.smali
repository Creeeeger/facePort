.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    }
.end annotation


# static fields
.field private static final greylist-max-o NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final greylist-max-o REQUEST_ID_NONE:I = -0x1


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o TAG:Ljava/lang/String;

.field private final greylist-max-o mAppTargetSdkVersion:I

.field private blacklist mBatchOutputMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCallOnActive:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnBusy:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnClosed:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnDisconnected:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnIdle:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnOpened:Ljava/lang/Runnable;

.field private final greylist-max-o mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final greylist-max-o mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field private final greylist-max-o mCameraId:Ljava/lang/String;

.field private greylist-max-o mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final greylist-max-o mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

.field private blacklist mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

.field private greylist-max-o mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

.field private final greylist-max-o mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final greylist-max-o mDeviceExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mFailedRepeatingRequestId:I

.field private blacklist mFailedRepeatingRequestTypes:[I

.field private blacklist mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

.field private greylist-max-o mIdle:Z

.field private greylist-max-o mInError:Z

.field final greylist-max-o mInterfaceLock:Ljava/lang/Object;

.field private greylist-max-o mNextSessionId:I

.field private blacklist mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

.field private final blacklist mOfflineSupport:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mPhysicalIdsToChars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

.field private greylist-max-o mRepeatingRequestId:I

.field private blacklist mRepeatingRequestTypes:[I

.field private final greylist-max-o mRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

.field private final greylist-max-o mTotalPartialCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$KBQCqQRdhVVn7uHI9Xdha6OqnsU(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->notifyError(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfiguredOutputs(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalPartialCount(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckEarlyTriggerSequenceCompleteLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCharacteristics(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->removeCompletedCallbackHolderLocked(JJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->updateTracker(IJILandroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;ILandroid/content/Context;)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p6, "appTargetSdkVersion"    # I
    .param p7, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraDevice$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 277
    .local p5, "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    .line 92
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 93
    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    .line 99
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 104
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 108
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    .line 110
    const/4 v2, -0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 115
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 119
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 121
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 125
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    .line 146
    new-instance v2, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 151
    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 161
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    .line 177
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    .line 192
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    .line 207
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    .line 222
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    .line 242
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    .line 257
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    .line 278
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 281
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    .line 282
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 283
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 284
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 285
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mPhysicalIdsToChars:Ljava/util/Map;

    .line 286
    iput p6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    .line 287
    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    .line 289
    const/16 v2, 0x17

    .line 290
    .local v2, "MAX_TAG_LEN":I
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string v4, "CameraDevice-JV-%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x17

    if-le v4, v5, :cond_0

    .line 292
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 294
    :cond_0
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 296
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 297
    invoke-virtual {p4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 298
    .local v0, "partialCount":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 300
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    .line 304
    :goto_0
    return-void

    .line 279
    .end local v0    # "partialCount":Ljava/lang/Integer;
    .end local v2    # "MAX_TAG_LEN":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkAndFireSequenceComplete()V
    .locals 23

    .line 1639
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v2

    .line 1640
    .local v2, "completedFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v4

    .line 1641
    .local v4, "completedReprocessFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedZslStillFrameNumber()J

    move-result-wide v6

    .line 1643
    .local v6, "completedZslStillFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1644
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1645
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 1646
    .local v9, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v10

    .line 1648
    .local v10, "requestId":I
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_0

    .line 1649
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v11, "Camera closed while checking sequences"

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    return-void

    .line 1652
    :cond_0
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1653
    nop

    .line 1654
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v11

    .line 1655
    .local v11, "lastRegularFrameNumber":J
    nop

    .line 1656
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v13

    .line 1657
    .local v13, "lastReprocessFrameNumber":J
    nop

    .line 1658
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v15

    .line 1659
    .local v15, "lastZslStillFrameNumber":J
    cmp-long v0, v11, v2

    if-gtz v0, :cond_1

    cmp-long v0, v13, v4

    if-gtz v0, :cond_1

    cmp-long v0, v15, v6

    if-gtz v0, :cond_1

    .line 1671
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->markSequenceCompleted()V

    .line 1675
    :cond_1
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-wide/from16 v17, v2

    .end local v2    # "completedFrameNumber":J
    .local v17, "completedFrameNumber":J
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 1676
    .local v2, "index":I
    if-ltz v2, :cond_2

    .line 1677
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move-object v3, v0

    .line 1678
    .local v3, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    if-eqz v3, :cond_3

    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1679
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;

    invoke-direct {v0, v1, v10, v3, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;)V

    move-object/from16 v19, v0

    .line 1696
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1698
    .local v20, "ident":J
    :try_start_0
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v22, v2

    move-object/from16 v2, v19

    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    .local v22, "index":I
    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1700
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1701
    goto :goto_3

    .line 1700
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v22    # "index":I
    .local v2, "index":I
    .restart local v19    # "resultDispatch":Ljava/lang/Runnable;
    :catchall_1
    move-exception v0

    move/from16 v22, v2

    move-object/from16 v2, v19

    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    .restart local v22    # "index":I
    :goto_2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1701
    throw v0

    .line 1678
    .end local v20    # "ident":J
    .end local v22    # "index":I
    .local v2, "index":I
    :cond_3
    move/from16 v22, v2

    .end local v2    # "index":I
    .restart local v22    # "index":I
    goto :goto_3

    .line 1652
    .end local v3    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v11    # "lastRegularFrameNumber":J
    .end local v13    # "lastReprocessFrameNumber":J
    .end local v15    # "lastZslStillFrameNumber":J
    .end local v17    # "completedFrameNumber":J
    .end local v22    # "index":I
    .local v2, "completedFrameNumber":J
    :cond_4
    move-wide/from16 v17, v2

    .line 1705
    .end local v2    # "completedFrameNumber":J
    .restart local v17    # "completedFrameNumber":J
    :goto_3
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1706
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isInflightCompleted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1707
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1708
    .local v0, "index":I
    if-ltz v0, :cond_5

    .line 1709
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1715
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 1717
    .end local v0    # "index":I
    .end local v9    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v10    # "requestId":I
    :cond_6
    move-wide/from16 v2, v17

    goto/16 :goto_0

    .line 1718
    .end local v17    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_7
    return-void
.end method

.method public static greylist-max-o checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;

    .line 2419
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraHandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method private blacklist checkEarlyTriggerSequenceCompleteLocked(IJ[I)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J
    .param p4, "repeatingRequestTypes"    # [I

    .line 1155
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    .line 1157
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1158
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1159
    .local v1, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_0
    if-eqz v1, :cond_1

    .line 1160
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1169
    :cond_1
    if-eqz v1, :cond_2

    .line 1175
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    invoke-direct {v2, p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CaptureCallbackHolder;)V

    .line 1190
    .local v2, "resultDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1192
    .local v3, "ident":J
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1195
    nop

    .line 1196
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    goto :goto_1

    .line 1194
    .restart local v2    # "resultDispatch":Ljava/lang/Runnable;
    .restart local v3    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1195
    throw v5

    .line 1197
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1197
    const-string v4, "did not register callback to request %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    .end local v0    # "index":I
    .end local v1    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_1
    goto :goto_2

    .line 1204
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v1, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;-><init>(IJ[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    .line 1211
    :goto_2
    return-void
.end method

.method static greylist-max-o checkExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 2397
    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static greylist-max-o checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 2406
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static greylist-max-o checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    .line 2431
    if-nez p0, :cond_1

    .line 2432
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2433
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 2437
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p0, v1

    goto :goto_0

    .line 2434
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2439
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    :goto_0
    return-object p0
.end method

.method static greylist-max-o checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "TT;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    .line 2448
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 2449
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 2451
    :cond_0
    return-object p0
.end method

.method private greylist-max-o checkIfCameraClosedOrInError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2455
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v0, :cond_1

    .line 2458
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-nez v0, :cond_0

    .line 2462
    return-void

    .line 2459
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    const-string v2, "The camera device has encountered a serious error"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2456
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .locals 12
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 1537
    if-nez p1, :cond_0

    .line 1538
    return-void

    .line 1540
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v0

    .line 1541
    .local v0, "inputFormat":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v1

    const-string/jumbo v2, "x"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 1542
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 1545
    .local v1, "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInputFormats()[I

    move-result-object v4

    .line 1546
    .local v4, "inputFormats":[I
    const/4 v5, 0x0

    .line 1547
    .local v5, "validFormat":Z
    array-length v6, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget v7, v4, v3

    .line 1548
    .local v7, "format":I
    if-ne v7, v0, :cond_1

    .line 1549
    const/4 v5, 0x1

    .line 1547
    .end local v7    # "format":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1553
    :cond_2
    const-string v3, " is not valid"

    if-eqz v5, :cond_6

    .line 1558
    const/4 v6, 0x0

    .line 1559
    .local v6, "validSize":Z
    nop

    .line 1560
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInputInfo(I)Ljava/util/Collection;

    move-result-object v7

    .line 1561
    .local v7, "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 1562
    .local v9, "info":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 1563
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v10

    invoke-virtual {v9}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 1564
    const/4 v6, 0x1

    .line 1566
    .end local v9    # "info":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    :cond_3
    goto :goto_1

    .line 1568
    :cond_4
    if-eqz v6, :cond_5

    .line 1572
    .end local v1    # "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .end local v4    # "inputFormats":[I
    .end local v5    # "validFormat":Z
    .end local v6    # "validSize":Z
    .end local v7    # "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    goto/16 :goto_2

    .line 1569
    .restart local v1    # "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .restart local v4    # "inputFormats":[I
    .restart local v5    # "validFormat":Z
    .restart local v6    # "validSize":Z
    .restart local v7    # "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multi-resolution input size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1570
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1554
    .end local v6    # "validSize":Z
    .end local v7    # "inputStreamInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "multi-resolution input format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1573
    .end local v1    # "configMap":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .end local v4    # "inputFormats":[I
    .end local v5    # "validFormat":Z
    :cond_7
    invoke-direct {p0, p1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1574
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 1575
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input config with format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1576
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1577
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported by camera id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1580
    :cond_9
    :goto_2
    return-void
.end method

.method private blacklist checkInputConfigurationWithStreamConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Z)Z
    .locals 6
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p2, "maxResolution"    # Z

    .line 1510
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1513
    .local v0, "ck":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<Landroid/hardware/camera2/params/StreamConfigurationMap;>;"
    if-eqz p2, :cond_0

    .line 1514
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1517
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1519
    .local v1, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1520
    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1521
    return v2

    .line 1524
    :cond_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mPhysicalIdsToChars:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1525
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1527
    if-eqz v1, :cond_2

    .line 1528
    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1530
    return v2

    .line 1532
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    :cond_2
    goto :goto_0

    .line 1533
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist checkInputConfigurationWithStreamConfigurationsAs(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;)Z
    .locals 11
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p2, "configMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1478
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 1479
    .local v0, "inputFormats":[I
    const/4 v1, 0x0

    .line 1480
    .local v1, "validFormat":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v2

    .line 1481
    .local v2, "inputFormat":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v0, v5

    .line 1482
    .local v6, "format":I
    if-ne v6, v2, :cond_0

    .line 1483
    const/4 v1, 0x1

    .line 1481
    .end local v6    # "format":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1487
    :cond_1
    if-nez v1, :cond_2

    .line 1488
    return v4

    .line 1491
    :cond_2
    const/4 v3, 0x0

    .line 1492
    .local v3, "validSize":Z
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v5

    .line 1493
    .local v5, "inputSizes":[Landroid/util/Size;
    array-length v6, v5

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 1494
    .local v8, "s":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 1495
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 1496
    const/4 v3, 0x1

    .line 1493
    .end local v8    # "s":Landroid/util/Size;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1500
    :cond_4
    if-nez v3, :cond_5

    .line 1501
    return v4

    .line 1503
    :cond_5
    const/4 v4, 0x1

    return v4
.end method

.method private greylist-max-o createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V
    .locals 22
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "operatingMode"    # I
    .param p6, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 686
    .local p2, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v9, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 687
    .local v10, "createSessionStartTime":J
    iget-object v12, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 692
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    const/4 v0, 0x0

    const/4 v8, 0x1

    move/from16 v13, p5

    if-ne v13, v8, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v14, v1

    .line 696
    .local v14, "isConstrainedHighSpeed":Z
    if-eqz v14, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 697
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constrained high speed session doesn\'t support input configuration yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "createSessionStartTime":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "operatingMode":I
    .end local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v0

    .line 703
    .restart local v10    # "createSessionStartTime":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "operatingMode":I
    .restart local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    :goto_1
    iget-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v1, :cond_3

    .line 704
    invoke-interface {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->replaceSessionClose()V

    .line 707
    :cond_3
    iget-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    const/4 v15, 0x0

    if-eqz v1, :cond_4

    .line 708
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 709
    iput-object v15, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 712
    :cond_4
    iget-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    if-eqz v1, :cond_5

    .line 713
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 714
    iput-object v15, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 718
    :cond_5
    const/16 v16, 0x1

    .line 719
    .local v16, "configureSuccess":Z
    const/16 v17, 0x0

    .line 720
    .local v17, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/16 v18, 0x0

    .line 723
    .local v18, "input":Landroid/view/Surface;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide v6, v10

    :try_start_2
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z

    move-result v0
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v1, v0

    .line 725
    .end local v16    # "configureSuccess":Z
    .local v1, "configureSuccess":Z
    if-ne v1, v8, :cond_6

    if-eqz p1, :cond_6

    .line 726
    :try_start_3
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getInputSurface()Landroid/view/Surface;

    move-result-object v0
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v0

    goto :goto_2

    .line 728
    :catch_0
    move-exception v0

    move/from16 v16, v1

    goto :goto_3

    .line 735
    :cond_6
    :goto_2
    move v0, v1

    goto :goto_4

    .line 728
    .end local v1    # "configureSuccess":Z
    .restart local v16    # "configureSuccess":Z
    :catch_1
    move-exception v0

    .line 729
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_3
    const/4 v1, 0x0

    .line 730
    .end local v16    # "configureSuccess":Z
    .restart local v1    # "configureSuccess":Z
    move-object/from16 v17, v0

    .line 731
    const/16 v18, 0x0

    move v0, v1

    .line 738
    .end local v1    # "configureSuccess":Z
    .local v0, "configureSuccess":Z
    :goto_4
    const/16 v16, 0x0

    .line 739
    .local v16, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    if-eqz v14, :cond_a

    .line 741
    const/4 v1, 0x0

    .line 743
    .local v1, "skipSufaceSizeCheck":Z
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    .line 744
    .local v8, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v19, v1

    .end local v1    # "skipSufaceSizeCheck":Z
    .local v19, "skipSufaceSizeCheck":Z
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 745
    .local v1, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getOption()I

    move-result v3

    if-lez v3, :cond_7

    .line 748
    const/4 v3, 0x1

    move/from16 v19, v3

    .line 751
    .end local v1    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_7
    goto :goto_5

    .line 753
    :cond_8
    if-nez v19, :cond_9

    .line 754
    nop

    .line 755
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 756
    .local v1, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {v8, v15, v1}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 759
    .end local v1    # "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_9
    new-instance v15, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    iget v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v6, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object v1, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p0

    move-object/from16 v20, v7

    move v7, v0

    move-object/from16 v21, v8

    .end local v8    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .local v21, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    move-object/from16 v8, v20

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;ZLandroid/hardware/camera2/CameraCharacteristics;)V

    move-object v1, v15

    .line 762
    .end local v16    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v19    # "skipSufaceSizeCheck":Z
    .end local v21    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .local v1, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    goto :goto_6

    .line 763
    .end local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v16    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :cond_a
    new-instance v15, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iget v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v7, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    move-object v1, v15

    move-object/from16 v3, v18

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p0

    move v8, v0

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V

    move-object v1, v15

    .line 768
    .end local v16    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :goto_6
    iput-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    .line 770
    if-nez v17, :cond_b

    .line 774
    invoke-interface {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v2

    iput-object v2, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 775
    .end local v0    # "configureSuccess":Z
    .end local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v14    # "isConstrainedHighSpeed":Z
    .end local v17    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .end local v18    # "input":Landroid/view/Surface;
    monitor-exit v12

    .line 776
    return-void

    .line 771
    .restart local v0    # "configureSuccess":Z
    .restart local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .restart local v14    # "isConstrainedHighSpeed":Z
    .restart local v17    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .restart local v18    # "input":Landroid/view/Surface;
    :cond_b
    nop

    .end local v10    # "createSessionStartTime":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "operatingMode":I
    .end local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v17

    .line 775
    .end local v0    # "configureSuccess":Z
    .end local v1    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v14    # "isConstrainedHighSpeed":Z
    .end local v17    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    .end local v18    # "input":Landroid/view/Surface;
    .restart local v10    # "createSessionStartTime":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p2    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "operatingMode":I
    .restart local p6    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :catchall_0
    move-exception v0

    move/from16 v13, p5

    :goto_7
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7
.end method

.method private greylist-max-o getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 2470
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private blacklist getRequestTypes([Landroid/hardware/camera2/CaptureRequest;)[I
    .locals 3
    .param p1, "requestArray"    # [Landroid/hardware/camera2/CaptureRequest;

    .line 1214
    array-length v0, p1

    new-array v0, v0, [I

    .line 1215
    .local v0, "requestTypes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1216
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v2

    aput v2, v0, v1

    .line 1215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private blacklist hasBatchedOutputs(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)Z"
        }
    .end annotation

    .line 1222
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v0, 0x1

    .line 1223
    .local v0, "hasBatchedOutputs":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1224
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 1225
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1226
    const/4 v0, 0x0

    .line 1227
    goto :goto_1

    .line 1229
    :cond_0
    if-nez v1, :cond_1

    .line 1230
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    .line 1231
    .local v3, "targets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 1232
    const/4 v0, 0x0

    .line 1233
    goto :goto_1

    .line 1223
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "targets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1237
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private greylist-max-o isClosed()Z
    .locals 1

    .line 2466
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private blacklist notifyError(I)V
    .locals 1
    .param p1, "code"    # I

    .line 1838
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1839
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 1841
    :cond_0
    return-void
.end method

.method private blacklist onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 21
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 1848
    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v15

    .line 1849
    .local v15, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v14

    .line 1850
    .local v14, "subsequenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v10

    .line 1851
    .local v10, "frameNumber":J
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorPhysicalCameraId()Ljava/lang/String;

    move-result-object v18

    .line 1852
    .local v18, "errorPhysicalCameraId":Ljava/lang/String;
    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 1854
    .local v12, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v12, :cond_0

    .line 1855
    iget-object v2, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    .line 1856
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1855
    const-string v0, "Receive capture error on unknown request ID %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return-void

    .line 1860
    :cond_0
    invoke-virtual {v12, v14}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v13

    .line 1862
    .local v13, "request":Landroid/hardware/camera2/CaptureRequest;
    const/4 v2, 0x0

    .line 1863
    .local v2, "failureDispatch":Ljava/lang/Runnable;
    const/4 v3, 0x5

    if-ne v9, v3, :cond_4

    .line 1866
    iget-object v3, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 1867
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v4

    .line 1866
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1868
    .local v16, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    if-nez v16, :cond_1

    .line 1869
    iget-object v3, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    .line 1871
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 1869
    const-string v0, "Stream %d has been removed. Skipping buffer lost callback"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    return-void

    .line 1874
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v17, v2

    .end local v2    # "failureDispatch":Ljava/lang/Runnable;
    .local v17, "failureDispatch":Ljava/lang/Runnable;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/Surface;

    .line 1875
    .local v6, "surface":Landroid/view/Surface;
    invoke-virtual {v13, v6}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1876
    goto :goto_0

    .line 1883
    :cond_2
    new-instance v19, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v13

    move-object v5, v6

    move-object/from16 v20, v6

    .end local v6    # "surface":Landroid/view/Surface;
    .local v20, "surface":Landroid/view/Surface;
    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 1893
    .end local v17    # "failureDispatch":Ljava/lang/Runnable;
    .local v1, "failureDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1895
    .local v2, "ident":J
    :try_start_0
    invoke-virtual {v12}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1897
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1898
    nop

    .line 1899
    .end local v2    # "ident":J
    .end local v20    # "surface":Landroid/view/Surface;
    move-object/from16 v17, v1

    goto :goto_0

    .line 1897
    .restart local v2    # "ident":J
    .restart local v20    # "surface":Landroid/view/Surface;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1898
    throw v0

    .line 1900
    .end local v1    # "failureDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    .end local v16    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v20    # "surface":Landroid/view/Surface;
    .restart local v17    # "failureDispatch":Ljava/lang/Runnable;
    :cond_3
    move-wide v5, v10

    move-object v3, v12

    move-object v4, v13

    move/from16 v16, v14

    move/from16 v19, v15

    goto/16 :goto_5

    .line 1901
    .end local v17    # "failureDispatch":Ljava/lang/Runnable;
    .local v2, "failureDispatch":Ljava/lang/Runnable;
    :cond_4
    const/4 v3, 0x4

    if-ne v9, v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v0

    :goto_1
    move-object v4, v13

    .end local v13    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    move v13, v3

    .line 1907
    .local v13, "mayHaveBuffers":Z
    iget-object v3, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->isAborting()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1908
    move v0, v1

    goto :goto_2

    .line 1909
    :cond_6
    nop

    :goto_2
    move-object v3, v12

    .end local v12    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v3, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    move v12, v0

    .line 1911
    .local v12, "reason":I
    new-instance v0, Landroid/hardware/camera2/CaptureFailure;

    move-wide v5, v10

    .end local v10    # "frameNumber":J
    .local v5, "frameNumber":J
    move-object v10, v0

    move-object v11, v4

    move v7, v14

    .end local v14    # "subsequenceId":I
    .local v7, "subsequenceId":I
    move v14, v15

    move/from16 v19, v15

    .end local v15    # "requestId":I
    .local v19, "requestId":I
    move-wide v15, v5

    move-object/from16 v17, v18

    invoke-direct/range {v10 .. v17}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V

    .line 1919
    .local v10, "failure":Landroid/hardware/camera2/CaptureFailure;
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;

    invoke-direct {v0, v8, v3, v4, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    move-object v2, v0

    .line 1935
    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1936
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v11, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v0, v11, :cond_7

    .line 1937
    iget-object v11, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    sub-int v14, v7, v0

    int-to-long v14, v14

    sub-long v14, v5, v14

    .line 1938
    move/from16 v16, v7

    .end local v7    # "subsequenceId":I
    .local v16, "subsequenceId":I
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v7

    .line 1937
    invoke-virtual {v11, v14, v15, v1, v7}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 1936
    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v16

    goto :goto_3

    .end local v16    # "subsequenceId":I
    .restart local v7    # "subsequenceId":I
    :cond_7
    move/from16 v16, v7

    .end local v0    # "i":I
    .end local v7    # "subsequenceId":I
    .restart local v16    # "subsequenceId":I
    goto :goto_4

    .line 1941
    .end local v16    # "subsequenceId":I
    .restart local v7    # "subsequenceId":I
    :cond_8
    move/from16 v16, v7

    .end local v7    # "subsequenceId":I
    .restart local v16    # "subsequenceId":I
    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 1942
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v7

    .line 1941
    invoke-virtual {v0, v5, v6, v1, v7}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 1945
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    .line 1948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1950
    .local v14, "ident":J
    :try_start_1
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1952
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1953
    move-object/from16 v17, v2

    .line 1956
    .end local v2    # "failureDispatch":Ljava/lang/Runnable;
    .end local v10    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .end local v12    # "reason":I
    .end local v13    # "mayHaveBuffers":Z
    .end local v14    # "ident":J
    .restart local v17    # "failureDispatch":Ljava/lang/Runnable;
    :goto_5
    return-void

    .line 1952
    .end local v17    # "failureDispatch":Ljava/lang/Runnable;
    .restart local v2    # "failureDispatch":Ljava/lang/Runnable;
    .restart local v10    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .restart local v12    # "reason":I
    .restart local v13    # "mayHaveBuffers":Z
    .restart local v14    # "ident":J
    :catchall_1
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1953
    throw v0
.end method

.method private greylist-max-o overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "newValue"    # Z

    .line 818
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 819
    .local v0, "enableZsl":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 821
    return-void

    .line 824
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 825
    return-void
.end method

.method private blacklist removeCompletedCallbackHolderLocked(JJJ)V
    .locals 12
    .param p1, "lastCompletedRegularFrameNumber"    # J
    .param p3, "lastCompletedReprocessFrameNumber"    # J
    .param p5, "lastCompletedZslStillFrameNumber"    # J

    .line 1732
    move-object v0, p0

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1733
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1734
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 1735
    .local v2, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v3

    .line 1737
    .local v3, "requestId":I
    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v4, :cond_0

    .line 1738
    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v5, "Camera closed while removing completed callback holders"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    return-void

    .line 1742
    :cond_0
    nop

    .line 1743
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v4

    .line 1744
    .local v4, "lastRegularFrameNumber":J
    nop

    .line 1745
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v6

    .line 1746
    .local v6, "lastReprocessFrameNumber":J
    nop

    .line 1747
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v8

    .line 1749
    .local v8, "lastZslStillFrameNumber":J
    cmp-long v10, v4, p1

    if-gtz v10, :cond_3

    cmp-long v10, v6, p3

    if-gtz v10, :cond_3

    cmp-long v10, v8, p5

    if-gtz v10, :cond_3

    .line 1753
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1754
    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    .line 1755
    .local v10, "index":I
    if-ltz v10, :cond_1

    .line 1756
    iget-object v11, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1767
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1768
    .end local v10    # "index":I
    goto :goto_1

    .line 1772
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->markInflightCompleted()V

    .line 1775
    .end local v2    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v3    # "requestId":I
    .end local v4    # "lastRegularFrameNumber":J
    .end local v6    # "lastReprocessFrameNumber":J
    .end local v8    # "lastZslStillFrameNumber":J
    :cond_3
    :goto_1
    goto :goto_0

    .line 1776
    :cond_4
    return-void
.end method

.method private blacklist scheduleNotifyError(I)V
    .locals 5
    .param p1, "code"    # I

    .line 1827
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 1828
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1830
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 1831
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1830
    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 1831
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 1830
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1834
    nop

    .line 1835
    return-void

    .line 1833
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1834
    throw v2
.end method

.method private blacklist submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I
    .locals 18
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1261
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move-object/from16 v0, p3

    invoke-static {v0, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v11

    .line 1263
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .local v11, "executor":Ljava/util/concurrent/Executor;
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1264
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1267
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 1268
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1273
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 1274
    .local v4, "surface":Landroid/view/Surface;
    if-eqz v4, :cond_0

    .line 1277
    .end local v4    # "surface":Landroid/view/Surface;
    goto :goto_1

    .line 1275
    .restart local v4    # "surface":Landroid/view/Surface;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null Surface targets are not allowed"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .end local p4    # "repeating":Z
    throw v0

    .line 1278
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "surface":Landroid/view/Surface;
    .restart local v11    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .restart local p4    # "repeating":Z
    :cond_1
    goto :goto_0

    .line 1269
    .restart local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Each request must have at least one Surface target"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .end local p4    # "repeating":Z
    throw v0

    .line 1338
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v11    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local p2    # "callback":Landroid/hardware/camera2/impl/CaptureCallback;
    .restart local p4    # "repeating":Z
    :catchall_0
    move-exception v0

    move-object/from16 v17, v11

    goto/16 :goto_6

    .line 1280
    :cond_3
    if-eqz v10, :cond_4

    .line 1281
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1286
    :cond_4
    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/CaptureRequest;

    .line 1288
    .local v0, "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    array-length v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    :try_start_3
    aget-object v4, v0, v3

    .line 1289
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest;->convertSurfaceToStreamId(Landroid/util/SparseArray;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1288
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1292
    :cond_5
    :try_start_4
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v0, v10}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v2

    move-object v14, v2

    .line 1297
    .local v14, "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    array-length v2, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    :try_start_5
    aget-object v4, v0, v3

    .line 1298
    .restart local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->recoverStreamIdToSurface()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1297
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1303
    :cond_6
    :try_start_6
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->hasBatchedOutputs(Ljava/util/List;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v15, v2

    .line 1304
    .local v15, "hasBatchedOutputs":Z
    if-eqz v15, :cond_7

    .line 1305
    :try_start_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1306
    .local v2, "requestCount":I
    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1309
    .end local v2    # "requestCount":I
    :cond_7
    if-eqz v9, :cond_8

    .line 1310
    :try_start_8
    iget-object v7, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v6

    new-instance v5, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iget v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/lit8 v16, v2, -0x1

    move-object v2, v5

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object v13, v5

    move-object v5, v11

    move v9, v6

    move/from16 v6, p4

    move-object/from16 v17, v11

    move-object v11, v7

    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    .local v17, "executor":Ljava/util/concurrent/Executor;
    move/from16 v7, v16

    :try_start_9
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/List;Ljava/util/concurrent/Executor;ZI)V

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 1309
    .end local v17    # "executor":Ljava/util/concurrent/Executor;
    .restart local v11    # "executor":Ljava/util/concurrent/Executor;
    :cond_8
    move-object/from16 v17, v11

    .line 1319
    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    .restart local v17    # "executor":Ljava/util/concurrent/Executor;
    :goto_4
    if-eqz v10, :cond_a

    .line 1320
    iget v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 1321
    nop

    .line 1322
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v3

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1321
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    .line 1325
    :cond_9
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v2

    iput v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1326
    invoke-direct {v1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getRequestTypes([Landroid/hardware/camera2/CaptureRequest;)[I

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    goto :goto_5

    .line 1328
    :cond_a
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v3, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-direct {v3, v8, v14}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;-><init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    :goto_5
    iget-boolean v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v2, :cond_b

    .line 1333
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1335
    :cond_b
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1337
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v2

    monitor-exit v12

    return v2

    .line 1338
    .end local v0    # "requestArray":[Landroid/hardware/camera2/CaptureRequest;
    .end local v14    # "requestInfo":Landroid/hardware/camera2/utils/SubmitInfo;
    .end local v15    # "hasBatchedOutputs":Z
    .end local v17    # "executor":Ljava/util/concurrent/Executor;
    .restart local v11    # "executor":Ljava/util/concurrent/Executor;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v11

    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    .restart local v17    # "executor":Ljava/util/concurrent/Executor;
    :goto_6
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6
.end method

.method private blacklist updateTracker(IJILandroid/hardware/camera2/CaptureResult;Z)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "frameNumber"    # J
    .param p4, "requestType"    # I
    .param p5, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p6, "isPartialResult"    # Z

    .line 1242
    const/4 v0, 0x1

    .line 1244
    .local v0, "requestCount":I
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1245
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1247
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v1

    int-to-long v3, v3

    sub-long v3, p2, v3

    move-object v5, p5

    move v6, p6

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V

    .line 1246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1251
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-wide v3, p2

    move-object v5, p5

    move v6, p6

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V

    .line 1254
    :goto_1
    return-void
.end method

.method private greylist-max-o waitUntilIdle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1397
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1401
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->waitUntilIdle()V

    .line 1402
    monitor-exit v0

    .line 1403
    return-void

    .line 1398
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Active repeating request ongoing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    throw v1

    .line 1402
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 4

    .line 2480
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " died unexpectedly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_0

    .line 2483
    return-void

    .line 2486
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 2487
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    .line 2496
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2498
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2500
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2501
    nop

    .line 2502
    return-void

    .line 2500
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2501
    throw v3
.end method

.method public blacklist capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v1

    return v1
.end method

.method public blacklist captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1131
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v0

    return v0

    .line 1132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 5

    .line 1430
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1431
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    monitor-exit v0

    return-void

    .line 1435
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1436
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1437
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    .line 1440
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v1, :cond_2

    .line 1441
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->disconnect()V

    .line 1442
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1445
    :cond_2
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    if-eqz v1, :cond_3

    .line 1446
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 1447
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1450
    :cond_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    if-eqz v1, :cond_4

    .line 1451
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 1452
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    .line 1458
    :cond_4
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_6

    .line 1459
    :cond_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1462
    :cond_6
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 1463
    monitor-exit v0

    .line 1464
    return-void

    .line 1463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o configureOutputs(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 399
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 400
    .local v0, "outputConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 401
    .local v2, "s":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v2    # "s":Landroid/view/Surface;
    goto :goto_0

    .line 403
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 403
    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z

    .line 407
    return-void
.end method

.method public blacklist configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CaptureRequest;J)Z
    .locals 17
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "operatingMode"    # I
    .param p4, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .param p5, "createSessionStartTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;I",
            "Landroid/hardware/camera2/CaptureRequest;",
            "J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 437
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-wide/from16 v4, p5

    if-nez p2, :cond_0

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .end local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local v0, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    goto :goto_0

    .line 437
    .end local v0    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_0
    move-object/from16 v6, p2

    .line 440
    .end local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local v6, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    .line 441
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "cannot configure an input stream without any output streams"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 447
    const/4 v7, 0x0

    .line 449
    .local v7, "success":Z
    iget-object v8, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 450
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 452
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    .line 454
    .local v9, "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 457
    .local v10, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v0, v11, :cond_5

    .line 458
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 459
    .local v11, "streamId":I
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 461
    .local v12, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Landroid/hardware/camera2/params/OutputConfiguration;->isDeferredConfiguration()Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_3

    .line 467
    :cond_3
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 465
    :cond_4
    :goto_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v11    # "streamId":I
    .end local v12    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 471
    .end local v0    # "i":I
    :cond_5
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 475
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    .line 477
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->beginConfigure()V

    .line 480
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    .line 481
    .local v0, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    const/4 v12, 0x0

    if-eq v2, v0, :cond_8

    if-eqz v2, :cond_6

    .line 482
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 483
    :cond_6
    if-eqz v0, :cond_7

    .line 484
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    iget-object v14, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v14}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 485
    new-instance v13, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v14, -0x1

    .line 486
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v14, v12}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 488
    :cond_7
    if-eqz v2, :cond_8

    .line 489
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v14

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v11

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v12

    .line 489
    invoke-virtual {v13, v14, v15, v11, v12}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createInputStream(IIIZ)I

    move-result v11

    .line 492
    .restart local v11    # "streamId":I
    new-instance v12, Ljava/util/AbstractMap$SimpleEntry;

    .line 493
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 498
    .end local v11    # "streamId":I
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 499
    .local v12, "streamId":Ljava/lang/Integer;
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    .line 500
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->delete(I)V

    .line 501
    .end local v12    # "streamId":Ljava/lang/Integer;
    goto :goto_5

    .line 504
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 505
    .local v12, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 506
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v13, v12}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v13

    .line 507
    .local v13, "streamId":I
    iget-object v14, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v14, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 509
    .end local v12    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v13    # "streamId":I
    :cond_a
    goto :goto_6

    .line 512
    :cond_b
    if-eqz p4, :cond_c

    .line 513
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 514
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v12

    .line 513
    invoke-virtual {v11, v3, v12, v4, v5}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v11

    .local v11, "offlineStreamIds":[I
    goto :goto_7

    .line 516
    .end local v11    # "offlineStreamIds":[I
    :cond_c
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    const/4 v12, 0x0

    invoke-virtual {v11, v3, v12, v4, v5}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v11

    .line 520
    .restart local v11    # "offlineStreamIds":[I
    :goto_7
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    .line 521
    if-eqz v11, :cond_e

    array-length v12, v11

    if-lez v12, :cond_e

    .line 522
    array-length v12, v11

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v12, :cond_d

    aget v14, v11, v13

    .line 523
    .local v14, "offlineStreamId":I
    iget-object v15, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    move-object/from16 v16, v0

    .end local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .local v16, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    nop

    .end local v14    # "offlineStreamId":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto :goto_8

    .end local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_d
    move-object/from16 v16, v0

    .end local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    goto :goto_9

    .line 521
    .end local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :cond_e
    move-object/from16 v16, v0

    .line 527
    .end local v0    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    :goto_9
    const/4 v7, 0x1

    .line 540
    .end local v11    # "offlineStreamIds":[I
    .end local v16    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    if-eqz v7, :cond_f

    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 541
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 544
    :cond_f
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 546
    nop

    .line 547
    .end local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_a
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 549
    return v7

    .line 540
    .restart local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    goto :goto_c

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_10

    .line 535
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "The camera is currently busy. You must wait until the previous operation completes."

    invoke-direct {v11, v12, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v7    # "success":Z
    .end local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "operatingMode":I
    .end local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .end local p5    # "createSessionStartTime":J
    throw v11

    .line 538
    .restart local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v7    # "success":Z
    .restart local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "operatingMode":I
    .restart local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .restart local p5    # "createSessionStartTime":J
    :cond_10
    nop

    .end local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v7    # "success":Z
    .end local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "operatingMode":I
    .end local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .end local p5    # "createSessionStartTime":J
    throw v0

    .line 528
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v7    # "success":Z
    .restart local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "operatingMode":I
    .restart local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .restart local p5    # "createSessionStartTime":J
    :catch_1
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Stream configuration failed due to: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    nop

    .line 540
    if-eqz v7, :cond_11

    :try_start_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_11

    .line 541
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 544
    :cond_11
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_b
    monitor-exit v8

    .line 532
    const/4 v8, 0x0

    return v8

    .line 540
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_c
    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_12

    .line 541
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_d

    .line 544
    :cond_12
    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 546
    :goto_d
    nop

    .end local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v7    # "success":Z
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local p3    # "operatingMode":I
    .end local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .end local p5    # "createSessionStartTime":J
    throw v0

    .line 547
    .end local v9    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v10    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v7    # "success":Z
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local p3    # "operatingMode":I
    .restart local p4    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .restart local p5    # "createSessionStartTime":J
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public whitelist createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 9
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 862
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 865
    const/4 v1, 0x0

    .line 867
    .local v1, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    move-object v1, v2

    .line 871
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 873
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V

    .line 876
    :cond_1
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 878
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 880
    .local v2, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v0

    return-object v2

    .line 881
    .end local v1    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist createCaptureRequest(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 9
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 831
    .local p2, "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 834
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 835
    .local v2, "physicalId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 838
    .end local v2    # "physicalId":Ljava/lang/String;
    goto :goto_0

    .line 836
    .restart local v2    # "physicalId":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Physical id matches the logical id!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "templateType":I
    .end local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    throw v1

    .line 840
    .end local v2    # "physicalId":Ljava/lang/String;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "templateType":I
    .restart local p2    # "physicalCameraIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .line 842
    .local v1, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    move-object v1, v2

    .line 846
    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    .line 848
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V

    .line 851
    :cond_3
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 853
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    move-object v4, v1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 855
    .local v2, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v0

    return-object v2

    .line 856
    .end local v1    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    .locals 8
    .param p1, "config"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 666
    if-eqz p1, :cond_2

    .line 670
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v7

    .line 671
    .local v7, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz v7, :cond_1

    .line 674
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v1

    .line 678
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionType()I

    move-result v5

    .line 679
    invoke-virtual {p1}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionParameters()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    .line 677
    move-object v0, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 680
    return-void

    .line 675
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output configurations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    .end local v7    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid session configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 9
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 556
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    .local v0, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 558
    .local v2, "surface":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 560
    :cond_0
    const/4 v3, 0x0

    .line 561
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 560
    move-object v2, p0

    move-object v4, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 563
    return-void
.end method

.method public whitelist createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 7
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 575
    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 577
    .local v2, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 579
    return-void
.end method

.method public whitelist createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 9
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 635
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    .local v0, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 641
    .local v2, "surface":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 643
    :cond_0
    const/4 v3, 0x0

    .line 644
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 643
    move-object v2, p0

    move-object v4, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 647
    return-void

    .line 636
    .end local v0    # "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output surface list must not be null and the size must be no more than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "operatingMode"    # I
    .param p4, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;I",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 655
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v0, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 657
    .local v2, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    .end local v2    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_0

    .line 659
    :cond_0
    nop

    .line 660
    invoke-static {p5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v5

    const/4 v7, 0x0

    .line 659
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p4

    move v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 661
    return-void
.end method

.method public whitelist createExtensionSession(Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V
    .locals 3
    .param p1, "extensionConfiguration"    # Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2525
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 2527
    invoke-static {p0, v0, p1, v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->createCameraAdvancedExtensionSession(Landroid/hardware/camera2/CameraDevice;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;I)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentAdvancedExtensionSession:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    goto :goto_0

    .line 2530
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    invoke-static {p0, v0, p1, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createCameraExtensionSession(Landroid/hardware/camera2/CameraDevice;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;I)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentExtensionSession:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2535
    :goto_0
    nop

    .line 2536
    return-void

    .line 2533
    :catch_0
    move-exception v0

    .line 2534
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1
.end method

.method public whitelist createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 8
    .param p1, "inputResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 890
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 891
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 893
    .local v2, "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v7, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    .line 894
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v4

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    monitor-exit v0

    .line 893
    return-object v7

    .line 895
    .end local v2    # "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 9
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 589
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-eqz p1, :cond_1

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 594
    .local v0, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 595
    .local v2, "surface":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 597
    :cond_0
    nop

    .line 598
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 597
    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 600
    return-void

    .line 590
    .end local v0    # "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 611
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz p1, :cond_2

    .line 616
    if-eqz p2, :cond_1

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v0, "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 624
    .local v2, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    .end local v2    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_0

    .line 626
    :cond_0
    nop

    .line 627
    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 626
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;ILandroid/hardware/camera2/CaptureRequest;)V

    .line 629
    return-void

    .line 617
    .end local v0    # "currentOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output configurations cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1469
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1473
    nop

    .line 1474
    return-void

    .line 1472
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1473
    throw v0
.end method

.method public greylist-max-o finalizeOutputConfigs(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1087
    .local p1, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1091
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1092
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1094
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1095
    .local v2, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    const/4 v3, -0x1

    .line 1096
    .local v3, "streamId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1099
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/params/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1100
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move v3, v5

    .line 1101
    goto :goto_2

    .line 1096
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1104
    .end local v4    # "i":I
    :cond_1
    :goto_2
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1109
    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1113
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v4, v3, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 1114
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1115
    .end local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "streamId":I
    goto :goto_0

    .line 1110
    .restart local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v3    # "streamId":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The final config for stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must have at least 1 surface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    throw v1

    .line 1105
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Deferred config is not part of this session"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    throw v1

    .line 1116
    .end local v2    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_4
    monitor-exit v0

    .line 1117
    return-void

    .line 1116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1088
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deferred config is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1407
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1409
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1413
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v1, :cond_0

    .line 1414
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1415
    monitor-exit v0

    return-void

    .line 1418
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->flush()J

    move-result-wide v1

    .line 1419
    .local v1, "lastFrameNumber":J
    iget v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1420
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    invoke-direct {p0, v3, v1, v2, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    .line 1422
    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1423
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1425
    .end local v1    # "lastFrameNumber":J
    :cond_1
    monitor-exit v0

    .line 1426
    return-void

    .line 1425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .locals 1

    .line 307
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public whitelist getCameraAudioRestriction()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2515
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2516
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 2517
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getGlobalAudioRestriction()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2518
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .locals 2
    .param p1, "sessionConfig"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 782
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 785
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 786
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 1786
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1787
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_0

    .line 1788
    monitor-exit v0

    return-void

    .line 1793
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-eqz v1, :cond_1

    .line 1794
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 1795
    monitor-exit v0

    return-void

    .line 1798
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1820
    :pswitch_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 1817
    :pswitch_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 1818
    goto :goto_1

    .line 1811
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 1812
    goto :goto_1

    .line 1814
    :pswitch_3
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 1815
    goto :goto_1

    .line 1800
    :pswitch_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1802
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1804
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1805
    nop

    .line 1806
    goto :goto_1

    .line 1804
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1805
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "errorCode":I
    .end local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    throw v3

    .line 1820
    .end local v1    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "errorCode":I
    .restart local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error from camera device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->scheduleNotifyError(I)V

    .line 1823
    :goto_1
    monitor-exit v0

    .line 1824
    return-void

    .line 1823
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist onDeviceIdle()V
    .locals 9

    .line 1962
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1963
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 1967
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-eqz v1, :cond_1

    .line 1968
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceIdle()V

    .line 1969
    monitor-exit v0

    return-void

    .line 1973
    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    const-wide v7, 0x7fffffffffffffffL

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->removeCompletedCallbackHolderLocked(JJJ)V

    .line 1978
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-nez v1, :cond_2

    .line 1979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1981
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1983
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1984
    goto :goto_0

    .line 1983
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1984
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    throw v3

    .line 1986
    .end local v1    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1987
    monitor-exit v0

    .line 1988
    return-void

    .line 1987
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-o prepare(ILandroid/view/Surface;)V
    .locals 4
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 920
    if-eqz p2, :cond_4

    .line 921
    if-lez p1, :cond_3

    .line 924
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 926
    const/4 v1, -0x1

    .line 927
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 928
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 929
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 930
    goto :goto_1

    .line 927
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 933
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 937
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare2(II)V

    .line 938
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 939
    return-void

    .line 934
    .restart local v1    # "streamId":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "maxCount":I
    .end local p2    # "surface":Landroid/view/Surface;
    throw v2

    .line 938
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "maxCount":I
    .restart local p2    # "surface":Landroid/view/Surface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 921
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid maxCount given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o prepare(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 899
    if-eqz p1, :cond_3

    .line 901
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 903
    const/4 v1, -0x1

    .line 904
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 905
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v3

    .line 906
    .local v3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 907
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move v1, v4

    .line 908
    goto :goto_1

    .line 904
    .end local v3    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 911
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 915
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare(I)V

    .line 916
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 917
    return-void

    .line 912
    .restart local v1    # "streamId":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    throw v2

    .line 916
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 899
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCameraAudioRestriction(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2507
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2508
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 2509
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->setCameraAudioRestriction(I)V

    .line 2510
    monitor-exit v0

    .line 2511
    return-void

    .line 2510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setParameters(Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 803
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->setParameters(Ljava/lang/String;)V

    .line 804
    monitor-exit v0

    .line 805
    return-void

    .line 804
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .locals 6
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 323
    :cond_0
    new-instance v1, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-direct {v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;-><init>(Landroid/hardware/camera2/ICameraDeviceUser;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    .line 325
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .local v1, "remoteDeviceBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 330
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    goto :goto_0

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 334
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const/4 v4, 0x2

    const-string v5, "The camera device has encountered a serious error"

    invoke-direct {v3, v4, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "remoteDevice":Landroid/hardware/camera2/ICameraDeviceUser;
    throw v3

    .line 339
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "remoteDevice":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 340
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 341
    .end local v1    # "remoteDeviceBinder":Landroid/os/IBinder;
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o setRemoteFailure(Landroid/os/ServiceSpecificException;)V
    .locals 7
    .param p1, "failure"    # Landroid/os/ServiceSpecificException;

    .line 351
    const/4 v0, 0x4

    .line 352
    .local v0, "failureCode":I
    const/4 v1, 0x1

    .line 354
    .local v1, "failureIsError":Z
    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_0

    .line 371
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected failure in opening camera device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 372
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :pswitch_1
    const/4 v0, 0x4

    .line 369
    goto :goto_0

    .line 359
    :pswitch_2
    const/4 v0, 0x2

    .line 360
    goto :goto_0

    .line 356
    :pswitch_3
    const/4 v0, 0x1

    .line 357
    goto :goto_0

    .line 362
    :pswitch_4
    const/4 v0, 0x3

    .line 363
    goto :goto_0

    .line 365
    :pswitch_5
    const/4 v1, 0x0

    .line 366
    nop

    .line 375
    :goto_0
    move v2, v0

    .line 376
    .local v2, "code":I
    move v3, v1

    .line 377
    .local v3, "isError":Z
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 378
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 379
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    invoke-direct {v6, p0, v3, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 389
    monitor-exit v4

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/concurrent/Executor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1350
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v0

    return v0

    .line 1351
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;Z)I

    move-result v1

    return v1
.end method

.method public greylist-max-o setSessionListener(Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;)V
    .locals 2
    .param p1, "sessionCallback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 812
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 814
    monitor-exit v0

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o stopRepeating()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1359
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1360
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1362
    nop

    .line 1363
    .local v1, "requestId":I
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 1364
    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 1365
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1366
    .local v2, "requestTypes":[I
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestTypes:[I

    .line 1367
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->cancelRequest(I)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1385
    .local v3, "lastFrameNumber":J
    nop

    .line 1387
    :try_start_2
    invoke-direct {p0, v1, v3, v4, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V

    goto :goto_0

    .line 1372
    .end local v3    # "lastFrameNumber":J
    :catch_0
    move-exception v3

    .line 1380
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iput v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestId:I

    .line 1381
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFailedRepeatingRequestTypes:[I

    .line 1384
    monitor-exit v0

    return-void

    .line 1389
    .end local v1    # "requestId":I
    .end local v2    # "requestTypes":[I
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 1390
    return-void

    .line 1389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist supportsOfflineProcessing(Landroid/view/Surface;)Z
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1047
    if-eqz p1, :cond_3

    .line 1049
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1050
    const/4 v1, -0x1

    .line 1051
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1052
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 1053
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 1054
    goto :goto_1

    .line 1051
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1057
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1061
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1058
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    throw v2

    .line 1062
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1047
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .locals 18
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            ")",
            "Landroid/hardware/camera2/CameraOfflineSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 965
    .local p1, "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 969
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    .line 970
    .local v2, "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v14, v0

    .line 974
    .local v14, "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-object v15, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v15

    .line 975
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 976
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    if-nez v0, :cond_5

    .line 980
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v13, -0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 981
    .local v3, "surface":Landroid/view/Surface;
    const/4 v4, -0x1

    .line 982
    .local v4, "streamId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 983
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v6}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v6

    if-ne v3, v6, :cond_0

    .line 984
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move v4, v6

    .line 985
    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v14, v4, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 986
    goto :goto_2

    .line 982
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 989
    .end local v5    # "i":I
    :cond_1
    :goto_2
    if-eq v4, v13, :cond_3

    .line 994
    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSupport:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 999
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1000
    nop

    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "streamId":I
    goto :goto_0

    .line 995
    .restart local v3    # "surface":Landroid/view/Surface;
    .restart local v4    # "streamId":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Surface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not  support offline mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    throw v0

    .line 990
    .restart local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Offline surface is not part of this session"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    throw v0

    .line 1001
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "streamId":I
    .restart local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 1003
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    iget-object v10, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    iget-object v11, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    iget-object v8, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    move-object v3, v0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v16, v8

    move-object v8, v14

    move/from16 v17, v13

    move-object/from16 v13, v16

    invoke-direct/range {v3 .. v13}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;Landroid/util/SparseArray;Ljava/util/AbstractMap$SimpleEntry;Landroid/util/SparseArray;Landroid/hardware/camera2/impl/FrameNumberTracker;Landroid/util/SparseArray;Ljava/util/List;)V

    iput-object v0, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSessionImpl:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    .line 1007
    nop

    .line 1009
    .local v0, "ret":Landroid/hardware/camera2/CameraOfflineSession;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    .line 1010
    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1011
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 1012
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 1013
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 1014
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mBatchOutputMap:Ljava/util/HashMap;

    .line 1015
    new-instance v3, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 1017
    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v3}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->closeWithoutDraining()V

    .line 1018
    iput-object v5, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    .line 1019
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    iget-object v3, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mOfflineSwitchService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    invoke-direct {v4, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/HashSet;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1043
    return-object v0

    .line 977
    .end local v0    # "ret":Landroid/hardware/camera2/CameraOfflineSession;
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Switch to offline mode already in progress"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    throw v0

    .line 1019
    .restart local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 966
    .end local v2    # "offlineStreamIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14    # "offlineConfiguredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid offline surfaces!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o tearDown(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1066
    if-eqz p1, :cond_3

    .line 1068
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 1070
    const/4 v1, -0x1

    .line 1071
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1072
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 1073
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 1074
    goto :goto_1

    .line 1071
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1077
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1081
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->tearDown(I)V

    .line 1082
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 1083
    return-void

    .line 1078
    .restart local v1    # "streamId":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface is not part of this session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    throw v2

    .line 1082
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1066
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 5
    .param p1, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 943
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 945
    const/4 v1, -0x1

    .line 946
    .local v1, "streamId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 947
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 948
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move v1, v3

    .line 949
    goto :goto_1

    .line 946
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 956
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 957
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 958
    .end local v1    # "streamId":I
    monitor-exit v0

    .line 959
    return-void

    .line 953
    .restart local v1    # "streamId":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid output configuration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    throw v2

    .line 958
    .end local v1    # "streamId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local p1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
