.class public final Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$Transaction;,
        Landroid/view/SurfaceControl$StaticDisplayInfo;,
        Landroid/view/SurfaceControl$DynamicDisplayInfo;,
        Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;,
        Landroid/view/SurfaceControl$DisplayPrimaries;,
        Landroid/view/SurfaceControl$OnJankDataListener;,
        Landroid/view/SurfaceControl$IdleBeginTime;,
        Landroid/view/SurfaceControl$LockDebuggingTransaction;,
        Landroid/view/SurfaceControl$TrustedPresentationCallback;,
        Landroid/view/SurfaceControl$TrustedPresentationThresholds;,
        Landroid/view/SurfaceControl$TransactionStats;,
        Landroid/view/SurfaceControl$TransactionCommittedListener;,
        Landroid/view/SurfaceControl$CieXyz;,
        Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;,
        Landroid/view/SurfaceControl$RefreshRateRanges;,
        Landroid/view/SurfaceControl$RefreshRateRange;,
        Landroid/view/SurfaceControl$DisplayMode;,
        Landroid/view/SurfaceControl$Builder;,
        Landroid/view/SurfaceControl$FrameRateSelectionStrategy;,
        Landroid/view/SurfaceControl$CachingHint;,
        Landroid/view/SurfaceControl$JankData;,
        Landroid/view/SurfaceControl$OnReparentListener;,
        Landroid/view/SurfaceControl$BufferTransform;
    }
.end annotation


# static fields
.field public static final whitelist BUFFER_TRANSFORM_IDENTITY:I = 0x0

.field public static final whitelist BUFFER_TRANSFORM_MIRROR_HORIZONTAL:I = 0x1

.field public static final whitelist BUFFER_TRANSFORM_MIRROR_VERTICAL:I = 0x2

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_180:I = 0x3

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_270:I = 0x7

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_90:I = 0x4

.field public static final blacklist CACHING_DISABLED:I = 0x0

.field public static final blacklist CACHING_ENABLED:I = 0x1

.field public static final blacklist CAN_OCCLUDE_PRESENTATION:I = 0x1000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o CURSOR_WINDOW:I = 0x2000

.field public static final blacklist DISABLE_SUPER_HDR:I = 0x10000000

.field public static final blacklist DISPLAY_DECORATION:I = 0x200

.field public static final blacklist DISPLAY_RECEIVES_INPUT:I = 0x1

.field public static final blacklist ENABLE_BACKPRESSURE:I = 0x100

.field public static final blacklist FRAME_RATE_SELECTION_STRATEGY_OVERRIDE_CHILDREN:I = 0x1

.field public static final blacklist FRAME_RATE_SELECTION_STRATEGY_PROPAGATE:I = 0x0

.field public static final blacklist FRAME_RATE_SELECTION_STRATEGY_SELF:I = 0x2

.field public static final blacklist FX_SURFACE_BLAST:I = 0x40000

.field public static final blacklist FX_SURFACE_CONTAINER:I = 0x80000

.field public static final blacklist FX_SURFACE_EFFECT:I = 0x20000

.field public static final greylist-max-o FX_SURFACE_MASK:I = 0xf0000

.field public static final greylist-max-o FX_SURFACE_NORMAL:I = 0x0

.field public static final greylist-max-r HIDDEN:I = 0x4

.field public static final blacklist IGNORE_DESTINATION_FRAME:I = 0x400

.field public static final blacklist LAYER_IS_REFRESH_RATE_INDICATOR:I = 0x800

.field public static final blacklist METADATA_ACCESSIBILITY_ID:I = 0x5

.field public static final blacklist METADATA_GAME_MODE:I = 0x8

.field public static final blacklist METADATA_MOUSE_CURSOR:I = 0x4

.field public static final blacklist METADATA_OWNER_PID:I = 0x6

.field public static final blacklist METADATA_OWNER_UID:I = 0x1

.field public static final blacklist METADATA_SEC_CAN_RECEIVE_INPUT:I = 0x1f

.field public static final blacklist METADATA_SEC_HDR_CUSTOM_DIM_RATIO:I = 0x22

.field public static final blacklist METADATA_SEC_HDR_OFF:I = 0x21

.field public static final blacklist METADATA_SEC_INTERNAL_ONLY:I = 0x20

.field public static final blacklist METADATA_SEC_SURFACE_TYPE:I = 0x1e

.field public static final blacklist METADATA_TASK_ID:I = 0x3

.field public static final blacklist METADATA_WINDOW_TYPE:I = 0x2

.field public static final greylist-max-o NON_PREMULTIPLIED:I = 0x100

.field public static final blacklist NO_COLOR_FILL:I = 0x4000

.field public static final blacklist NO_REMOTECONTROL:I = 0xf00000

.field public static final greylist-max-o OPAQUE:I = 0x400

.field public static final greylist-max-o POWER_MODE_DOZE:I = 0x1

.field public static final greylist-max-o POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final greylist-max-o POWER_MODE_NORMAL:I = 0x2

.field public static final greylist-max-o POWER_MODE_OFF:I = 0x0

.field public static final greylist-max-o POWER_MODE_ON_SUSPEND:I = 0x4

.field public static final greylist-max-o PROTECTED_APP:I = 0x800

.field public static final greylist-max-o SECURE:I = 0x80

.field public static final blacklist SKIP_SCREENSHOT:I = 0x40

.field private static final greylist-max-o SURFACE_HIDDEN:I = 0x1

.field private static final greylist-max-o SURFACE_OPAQUE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SurfaceControl"

.field private static volatile blacklist sDebugUsageAfterRelease:Z

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mCallsite:Ljava/lang/String;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private final blacklist mChoreographerLock:Ljava/lang/Object;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mFreeNativeResources:Ljava/lang/Runnable;

.field private greylist-max-o mHeight:I

.field private blacklist mIgnoreToUpdateByOtherProcess:Z

.field private blacklist mLocalOwnerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist-max-o mName:Ljava/lang/String;

.field private blacklist mNativeHandle:J

.field public greylist-max-o mNativeObject:J

.field private blacklist mOwnerPid:I

.field private blacklist mReleaseStack:Ljava/lang/Throwable;

.field private blacklist mReparentListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl$OnReparentListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIgnoreToUpdateByOtherProcess(Landroid/view/SurfaceControl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOwnerPid(Landroid/view/SurfaceControl;)I
    .locals 0

    iget p0, p0, Landroid/view/SurfaceControl;->mOwnerPid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControl;->mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/SurfaceControl;->mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNativeTrustedPresentationCallbackFinalizer()J
    .locals 2

    invoke-static {}, Landroid/view/SurfaceControl;->getNativeTrustedPresentationCallbackFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeApplyTransaction(JZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeApplyTransaction(JZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeClearTransaction(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeClearTransaction(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeClearTrustedPresentationCallback(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeClearTrustedPresentationCallback(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J
    .locals 2

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J
    .locals 2

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateTransaction()J
    .locals 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetDefaultApplyToken()Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetDefaultApplyToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetNativeTransactionFinalizer()J
    .locals 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeTransactionFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetTransactionId(J)J
    .locals 0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetTransactionId(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeMergeTransaction(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeMergeTransaction(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReadTransactionFromParcel(Landroid/os/Parcel;)J
    .locals 2

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeReadTransactionFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeRemoveCurrentInputFocus(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeRemoveCurrentInputFocus(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReparent(JJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeReparent(JJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSanitize(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSanitize(JII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetAlpha(JJF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetAlpha(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetAnimationTransaction(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBackgroundBlurColorCurve(JJ[F)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBackgroundBlurColorCurve(JJ[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBackgroundBlurRadius(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBackgroundBlurRadius(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBlurRegions(JJ[[FI)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetBlurRegions(JJ[[FI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBufferTransform(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBufferTransform(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetCachingHint(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCachingHint(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetColor(JJ[F)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColor(JJ[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetColorSpaceAgnostic(JJZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColorSpaceAgnostic(JJZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetColorTransform(JJ[F[F)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetColorTransform(JJ[F[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetCornerRadius(JJF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCornerRadius(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDamageRegion(JJLandroid/graphics/Region;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDamageRegion(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDataSpace(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDataSpace(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDefaultApplyToken(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeSetDefaultApplyToken(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDefaultFrameRateCompatibility(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDefaultFrameRateCompatibility(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDesiredHdrHeadroom(JJF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDesiredHdrHeadroom(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDesiredPresentTimeNanos(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDesiredPresentTimeNanos(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDestinationFrame(JJIIII)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetDestinationFrame(JJIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDimmingEnabled(JJZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDimmingEnabled(JJZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplayFlags(JLandroid/os/IBinder;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayFlags(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p11}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplayReluminoEffect(JLandroid/os/IBinder;FI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplayReluminoEffect(JLandroid/os/IBinder;FI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplaySize(JLandroid/os/IBinder;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(JLandroid/os/IBinder;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDropInputMode(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDropInputMode(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetEarlyWakeupEnd(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupEnd(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetEarlyWakeupStart(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupStart(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetExtendedRangeBrightness(JJFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetExtendedRangeBrightness(JJFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFixedTransformHint(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFixedTransformHint(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFlags(JJII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRate(JJFII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetFrameRate(JJFII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRateCategory(JJIZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFrameRateCategory(JJIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRateSelectionPriority(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionPriority(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRateSelectionStrategy(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionStrategy(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameTimelineVsync(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetFrameTimelineVsync(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetLayer(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayer(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetLayerStack(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetMatrix(JJFFFF)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetMatrix(JJFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetMetadata(JJILandroid/os/Parcel;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetMetadata(JJILandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetPosition(JJFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPosition(JJFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetRelativeLayer(JJJI)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetRelativeLayer(JJJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetScale(JJFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetScale(JJFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetShadowRadius(JJF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetShadowRadius(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetStretchEffect(JJFFFFFFFFFF)V
    .locals 0

    invoke-static/range {p0 .. p13}, Landroid/view/SurfaceControl;->nativeSetStretchEffect(JJFFFFFFFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTrustedOverlay(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTrustedOverlay(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetWindowCrop(JJIIII)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeStartChangeResolution(JLandroid/os/IBinder;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeStartChangeResolution(JLandroid/os/IBinder;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeStartSurfaceAnimation(JJLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeStartSurfaceAnimation(JJLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSurfaceFlushJankData(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSurfaceFlushJankData(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeUnsetBuffer(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeUnsetBuffer(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    nop

    const-class v0, Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeSurfaceControlFinalizer()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControl;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Landroid/view/SurfaceControl$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceControl;->mOwnerPid:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceControl;->mOwnerPid:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceControl;->mOwnerPid:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceSession;",
            "Ljava/lang/String;",
            "IIII",
            "Landroid/view/SurfaceControl;",
            "Landroid/util/SparseIntArray;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p2

    move-object/from16 v5, p7

    move-object/from16 v4, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, v7, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v7, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    const/4 v0, -0x1

    iput v0, v7, Landroid/view/SurfaceControl;->mOwnerPid:I

    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    if-eqz v6, :cond_6

    iput-object v6, v7, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    move/from16 v3, p3

    iput v3, v7, Landroid/view/SurfaceControl;->mWidth:I

    move/from16 v2, p4

    iput v2, v7, Landroid/view/SurfaceControl;->mHeight:I

    move-object/from16 v1, p9

    iput-object v1, v7, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    const-wide/16 v17, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v8, 0x0

    :goto_0
    invoke-virtual/range {p8 .. p8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-virtual {v4, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    nop

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v4, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v10, p10

    move-object/from16 v21, v14

    goto/16 :goto_3

    :cond_1
    :goto_1
    nop

    const-wide/16 v19, 0x0

    if-eqz v5, :cond_2

    iget-wide v8, v5, Landroid/view/SurfaceControl;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v15, v8

    goto :goto_2

    :cond_2
    move-wide/from16 v15, v19

    :goto_2
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v21, v14

    move-wide v14, v15

    move-object/from16 v16, v21

    :try_start_1
    invoke-static/range {v8 .. v16}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J

    move-result-wide v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    nop

    cmp-long v10, v8, v19

    if-eqz v10, :cond_5

    move-object/from16 v10, p10

    invoke-direct {v7, v8, v9, v10}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v11, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    iput v11, v7, Landroid/view/SurfaceControl;->mOwnerPid:I

    iput-boolean v0, v7, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_CREATION:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v13, "SurfaceControl is created"

    const/4 v14, 0x0

    move-object v1, v0

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v4, p0

    move-object v5, v11

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :cond_4
    return-void

    :cond_5
    move-object/from16 v10, p10

    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    const-string v1, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v1}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v10, p10

    :goto_3
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_6
    move-object/from16 v10, p10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroid/view/SurfaceControl-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist addJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V
    .locals 4

    invoke-static {p0}, Landroid/view/SurfaceControl$OnJankDataListener;->-$$Nest$fgetmNativePtr(Landroid/view/SurfaceControl$OnJankDataListener;)Lcom/android/internal/util/VirtualRefBasePtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeAddJankDataListener(JJ)V

    return-void
.end method

.method private blacklist assignNativeObject(JLjava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/SurfaceControl;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mFreeNativeResources:Ljava/lang/Runnable;

    :cond_1
    iput-wide p1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->nativeGetHandle(J)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    sget-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Assigned invalid nativeObject"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    :goto_1
    invoke-virtual {p0, p3}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlRegistry;->add(Landroid/view/SurfaceControl;)V

    :cond_4
    return-void
.end method

.method public static blacklist bootFinished()Z
    .locals 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeBootFinished()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o checkNotReleased()V
    .locals 4

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid usage after release of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNativeObject of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null. Have you called release() already?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static greylist-max-o clearAnimationFrameStats()Z
    .locals 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist clearBootDisplayMode(Landroid/os/IBinder;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeClearBootDisplayMode(Landroid/os/IBinder;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist closeTransaction()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static greylist-max-o getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .locals 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getBootDisplayModeSupport()Z
    .locals 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetBootDisplayModeSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist getCompositionColorSpaces()[Landroid/graphics/ColorSpace;
    .locals 6

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetCompositionDataspaces()[I

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/ColorSpace;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    array-length v4, v0

    if-ne v4, v2, :cond_1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    invoke-static {v5}, Landroid/graphics/ColorSpace;->getFromDataSpace(I)Landroid/graphics/ColorSpace;

    move-result-object v5

    if-eqz v5, :cond_0

    aput-object v5, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static blacklist getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .locals 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .locals 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;
    .locals 2

    instance-of v0, p0, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .locals 1

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getGPUContextPriority()I
    .locals 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetGPUContextPriority()I

    move-result v0

    return v0
.end method

.method public static blacklist getIdleBeginTime(Landroid/os/IBinder;)Landroid/view/SurfaceControl$IdleBeginTime;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetIdleBeginTime(Landroid/os/IBinder;)Landroid/view/SurfaceControl$IdleBeginTime;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native blacklist getNativeTrustedPresentationCallbackFinalizer()J
.end method

.method public static blacklist getOverlaySupport()Landroid/hardware/OverlayProperties;
    .locals 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPhysicalDisplayIds()[J
    .locals 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .locals 1

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getProtectedContentSupport()Z
    .locals 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetProtectedContentSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist getStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;
    .locals 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .locals 1

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist invokeReleaseCallback(Ljava/util/function/Consumer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p1, p2}, Landroid/hardware/SyncFence;-><init>(J)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .locals 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeMirrorSurface(J)J

    move-result-wide v0

    new-instance v2, Landroid/view/SurfaceControl;

    invoke-direct {v2}, Landroid/view/SurfaceControl;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (mirror)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    const-string/jumbo v3, "mirrorSurface"

    invoke-direct {v2, v0, v1, v3}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    return-object v2
.end method

.method private static native blacklist nativeAddJankDataListener(JJ)V
.end method

.method private static native blacklist nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
.end method

.method private static native blacklist nativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$TransactionStats;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V
.end method

.method private static native blacklist nativeApplyTransaction(JZZ)V
.end method

.method private static native blacklist nativeBootFinished()Z
.end method

.method private static native greylist-max-o nativeClearAnimationFrameStats()Z
.end method

.method private static native blacklist nativeClearBootDisplayMode(Landroid/os/IBinder;)V
.end method

.method private static native greylist-max-o nativeClearContentFrameStats(J)Z
.end method

.method private static native blacklist nativeClearTransaction(J)V
.end method

.method private static native blacklist nativeClearTrustedPresentationCallback(JJ)V
.end method

.method private static native blacklist nativeCopyFromSurfaceControl(J)J
.end method

.method private static native blacklist nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native blacklist nativeCreateJankDataListenerWrapper(Landroid/view/SurfaceControl$OnJankDataListener;)J
.end method

.method private static native blacklist nativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J
.end method

.method private static native greylist-max-o nativeCreateTransaction()J
.end method

.method private static native greylist-max-o nativeDisconnect(J)V
.end method

.method private static native greylist-max-o nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native blacklist nativeGetBootDisplayModeSupport()Z
.end method

.method private static native blacklist nativeGetCompositionDataspaces()[I
.end method

.method private static native greylist-max-o nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native blacklist nativeGetDefaultApplyToken()Landroid/os/IBinder;
.end method

.method private static native blacklist nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
.end method

.method private static native blacklist nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z
.end method

.method private static native blacklist nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
.end method

.method private static native blacklist nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
.end method

.method private static native blacklist nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
.end method

.method private static native blacklist nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
.end method

.method private static native blacklist nativeGetDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;
.end method

.method private static native blacklist nativeGetGPUContextPriority()I
.end method

.method private static native blacklist nativeGetHandle(J)J
.end method

.method private static native blacklist nativeGetIdleBeginTime(Landroid/os/IBinder;)Landroid/view/SurfaceControl$IdleBeginTime;
.end method

.method private static native blacklist nativeGetLayerId(J)I
.end method

.method private static native blacklist nativeGetNativeSurfaceControlFinalizer()J
.end method

.method private static native greylist-max-o nativeGetNativeTransactionFinalizer()J
.end method

.method private static native blacklist nativeGetOverlaySupport()Landroid/hardware/OverlayProperties;
.end method

.method private static native blacklist nativeGetPhysicalDisplayIds()[J
.end method

.method private static native blacklist nativeGetPhysicalDisplayToken(J)Landroid/os/IBinder;
.end method

.method private static native blacklist nativeGetProtectedContentSupport()Z
.end method

.method private static native blacklist nativeGetStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;
.end method

.method private static native blacklist nativeGetStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;
.end method

.method private static native blacklist nativeGetTransactionId(J)J
.end method

.method private static native blacklist nativeGetTransformHint(J)I
.end method

.method private static native greylist-max-o nativeMergeTransaction(JJ)V
.end method

.method private static native blacklist nativeMirrorSurface(J)J
.end method

.method private static native blacklist nativeNotifyHFRmode(Landroid/os/IBinder;I)V
.end method

.method private static native blacklist nativeNotifyShutdown()V
.end method

.method private static native greylist-max-o nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeReadTransactionFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeRemoveCurrentInputFocus(JI)V
.end method

.method private static native blacklist nativeRemoveJankDataListener(J)V
.end method

.method private static native blacklist nativeReparent(JJJ)V
.end method

.method private static native blacklist nativeRestrictHighRefreshRate(Z)V
.end method

.method private static native blacklist nativeSanitize(JII)V
.end method

.method private static native greylist-max-o nativeSetActiveColorMode(Landroid/os/IBinder;I)Z
.end method

.method private static native greylist-max-o nativeSetAlpha(JJF)V
.end method

.method private static native greylist-max-o nativeSetAnimationTransaction(J)V
.end method

.method private static native blacklist nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V
.end method

.method private static native blacklist nativeSetBackgroundBlurColorCurve(JJ[F)V
.end method

.method private static native blacklist nativeSetBackgroundBlurRadius(JJI)V
.end method

.method private static native blacklist nativeSetBlurRegions(JJ[[FI)V
.end method

.method private static native blacklist nativeSetBootDisplayMode(Landroid/os/IBinder;I)V
.end method

.method private static native blacklist nativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/hardware/HardwareBuffer;",
            "J",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeSetBufferTransform(JJI)V
.end method

.method private static native blacklist nativeSetCachingHint(JJI)V
.end method

.method private static native blacklist nativeSetCanOccludePresentation(JJZ)V
.end method

.method private static native greylist-max-o nativeSetColor(JJ[F)V
.end method

.method private static native blacklist nativeSetColorSpaceAgnostic(JJZ)V
.end method

.method private static native blacklist nativeSetColorTransform(JJ[F[F)V
.end method

.method private static native blacklist nativeSetCornerRadius(JJF)V
.end method

.method private static native blacklist nativeSetDamageRegion(JJLandroid/graphics/Region;)V
.end method

.method private static native blacklist nativeSetDataSpace(JJI)V
.end method

.method private static native blacklist nativeSetDefaultApplyToken(Landroid/os/IBinder;)V
.end method

.method private static native blacklist nativeSetDefaultFrameRateCompatibility(JJI)V
.end method

.method private static native blacklist nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
.end method

.method private static native blacklist nativeSetDesiredHdrHeadroom(JJF)V
.end method

.method private static native blacklist nativeSetDesiredPresentTimeNanos(JJ)V
.end method

.method private static native blacklist nativeSetDestinationFrame(JJIIII)V
.end method

.method private static native blacklist nativeSetDimmingEnabled(JJZ)V
.end method

.method private static native blacklist nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z
.end method

.method private static native blacklist nativeSetDisplayFlags(JLandroid/os/IBinder;I)V
.end method

.method private static native greylist-max-o nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
.end method

.method private static native greylist-max-o nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native greylist-max-o nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native blacklist nativeSetDisplayReluminoEffect(JLandroid/os/IBinder;FI)V
.end method

.method private static native greylist-max-o nativeSetDisplaySize(JLandroid/os/IBinder;II)V
.end method

.method private static native greylist-max-o nativeSetDisplaySurface(JLandroid/os/IBinder;J)V
.end method

.method private static native blacklist nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
.end method

.method private static native blacklist nativeSetDropInputMode(JJI)V
.end method

.method private static native blacklist nativeSetEarlyWakeupEnd(J)V
.end method

.method private static native blacklist nativeSetEarlyWakeupStart(J)V
.end method

.method private static native blacklist nativeSetExtendedRangeBrightness(JJFF)V
.end method

.method private static native blacklist nativeSetFixedTransformHint(JJI)V
.end method

.method private static native greylist-max-o nativeSetFlags(JJII)V
.end method

.method private static native blacklist nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V
.end method

.method private static native blacklist nativeSetFrameRate(JJFII)V
.end method

.method private static native blacklist nativeSetFrameRateCategory(JJIZ)V
.end method

.method private static native blacklist nativeSetFrameRateSelectionPriority(JJI)V
.end method

.method private static native blacklist nativeSetFrameRateSelectionStrategy(JJI)V
.end method

.method private static native blacklist nativeSetFrameTimeline(JJ)V
.end method

.method private static native blacklist nativeSetFrameTimelineVsync(JJ)V
.end method

.method private static native blacklist nativeSetGameContentType(Landroid/os/IBinder;Z)V
.end method

.method private static native blacklist nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
.end method

.method private static native blacklist nativeSetGlobalShadowSettings([F[FFFF)V
.end method

.method private static native blacklist nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
.end method

.method private static native greylist-max-o nativeSetLayer(JJI)V
.end method

.method private static native greylist-max-o nativeSetLayerStack(JJI)V
.end method

.method private static native greylist-max-o nativeSetMatrix(JJFFFF)V
.end method

.method private static native blacklist nativeSetMetadata(JJILandroid/os/Parcel;)V
.end method

.method private static native greylist-max-o nativeSetPosition(JJFF)V
.end method

.method private static native blacklist nativeSetRelativeLayer(JJJI)V
.end method

.method private static native blacklist nativeSetScale(JJFF)V
.end method

.method private static native blacklist nativeSetShadowRadius(JJF)V
.end method

.method private static native blacklist nativeSetStretchEffect(JJFFFFFFFFFF)V
.end method

.method private static native blacklist nativeSetTransformHint(JI)V
.end method

.method private static native greylist-max-o nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
.end method

.method private static native blacklist nativeSetTrustedOverlay(JJI)V
.end method

.method private static native blacklist nativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V
.end method

.method private static native greylist-max-o nativeSetWindowCrop(JJIIII)V
.end method

.method private static native blacklist nativeStartChangeResolution(JLandroid/os/IBinder;Z)V
.end method

.method private static native blacklist nativeStartSurfaceAnimation(JJLjava/lang/String;)V
.end method

.method private static native blacklist nativeSurfaceFlushJankData(J)V
.end method

.method private static native blacklist nativeUnsetBuffer(JJ)V
.end method

.method private static native blacklist nativeUpdateDefaultBufferSize(JII)V
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
.end method

.method public static blacklist notifyHFRmode(Landroid/os/IBinder;I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyHFRmode, displayToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hfrMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeNotifyHFRmode(Landroid/os/IBinder;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist notifyShutdown()V
    .locals 0

    invoke-static {}, Landroid/view/SurfaceControl;->nativeNotifyShutdown()V

    return-void
.end method

.method public static greylist openTransaction()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist removeJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;)V
    .locals 2

    invoke-static {p0}, Landroid/view/SurfaceControl$OnJankDataListener;->-$$Nest$fgetmNativePtr(Landroid/view/SurfaceControl$OnJankDataListener;)Lcom/android/internal/util/VirtualRefBasePtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRemoveJankDataListener(J)V

    return-void
.end method

.method public static blacklist restrictHighRefreshRate(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restrictHighRefreshRate, enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeRestrictHighRefreshRate(Z)V

    return-void
.end method

.method public static blacklist rotationToBufferTransform(I)I
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to convert unknown rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceControl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o setActiveColorMode(Landroid/os/IBinder;I)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setBootDisplayMode(Landroid/os/IBinder;I)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetBootDisplayMode(Landroid/os/IBinder;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setDebugUsageAfterRelease(Z)V
    .locals 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sput-boolean p0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    return-void
.end method

.method public static blacklist setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "defaultMode must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desiredDisplayModeSpecs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setDisplayBrightness(Landroid/os/IBinder;F)Z
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, p1, v0, p1, v0}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0
.end method

.method public static blacklist setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    const/high16 v3, -0x40800000    # -1.0f

    if-gez v2, :cond_0

    cmpl-float v2, p3, v3

    if-nez v2, :cond_3

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_2

    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    cmpl-float v0, p1, v3

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdrBrightness must be a number between 0.0f and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayBrightness must be a number between 0.0f  and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    shr-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid componentMask when enabling sampling"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setGameContentType(Landroid/os/IBinder;Z)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetGameContentType(Landroid/os/IBinder;Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setGlobalShadowSettings([F[FFFF)V
    .locals 0

    invoke-static {p0}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    invoke-static {p1}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetGlobalShadowSettings([F[FFFF)V

    return-void
.end method

.method private static blacklist validateColorArg([F)V
    .locals 6

    const-string v0, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    array-length v1, p0

    const/4 v2, 0x4

    const-string v3, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    if-ne v1, v2, :cond_2

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p0, v2

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .locals 3

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o clearContentFrameStats()Z
    .locals 2

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public blacklist copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iget v0, p1, Landroid/view/SurfaceControl;->mWidth:I

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    iget v0, p1, Landroid/view/SurfaceControl;->mHeight:I

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    iget-object v0, p1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeCopyFromSurfaceControl(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/SurfaceControl;->mOwnerPid:I

    iput v0, p0, Landroid/view/SurfaceControl;->mOwnerPid:I

    iget-boolean v0, p1, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o disconnect()V
    .locals 4

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    :cond_0
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10500000003L

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public blacklist enableIgnoreToUpdateByOtherProcess()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlRegistry;->remove(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method blacklist getCallsite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControl;->mCallsite:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getChoreographer()Landroid/view/Choreographer;
    .locals 2

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl;->getChoreographer(Landroid/os/Looper;)Landroid/view/Choreographer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getChoreographer(Landroid/os/Looper;)Landroid/view/Choreographer;
    .locals 3

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    invoke-static {v1, v2, p1}, Landroid/view/Choreographer;->getInstanceForSurfaceControl(JLandroid/os/Looper;)Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1}, Landroid/view/Choreographer;->isTheLooperSame(Landroid/os/Looper;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Choreographer already exists with a different looper"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 2

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getHeight()I
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/SurfaceControl;->mHeight:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getLayerId()I
    .locals 4

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetLayerId(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getLocalOwnerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTransformHint()I
    .locals 2

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetTransformHint(J)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getWidth()I
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/SurfaceControl;->mWidth:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist hasChoreographer()Z
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isSameSurface(Landroid/view/SurfaceControl;)Z
    .locals 4

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeHandle:J

    iget-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isValid()Z
    .locals 4

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mOwnerPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/view/SurfaceControl;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    :cond_1
    const-string/jumbo v2, "readFromParcel"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .locals 5

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string/jumbo v4, "release"

    invoke-virtual {v0, v4, v1, p0, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    nop

    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->invalidate()V

    iput-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlRegistry;->remove(Landroid/view/SurfaceControl;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist removeOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .locals 3

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist resize(II)V
    .locals 2

    iput p1, p0, Landroid/view/SurfaceControl;->mWidth:I

    iput p2, p0, Landroid/view/SurfaceControl;->mHeight:I

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeUpdateDefaultBufferSize(JII)V

    return-void
.end method

.method public blacklist setTransformHint(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetTransformHint(JI)V

    return-void
.end method

.method public blacklist setUnreleasedWarningCallSite(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1, p1}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/view/SurfaceControl;->mCallsite:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")/@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    sget-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/SurfaceControl;->mOwnerPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/SurfaceControl;->mIgnoreToUpdateByOtherProcess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_1
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_3
    return-void
.end method
