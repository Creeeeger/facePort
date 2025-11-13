.class public final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;,
        Landroid/view/AccessibilityInteractionController$MessageHolder;,
        Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$VirtualNode;,
        Landroid/view/AccessibilityInteractionController$ViewNode;,
        Landroid/view/AccessibilityInteractionController$DequeNode;,
        Landroid/view/AccessibilityInteractionController$PrefetchDeque;
    }
.end annotation


# static fields
.field private static final greylist-max-o CONSIDER_REQUEST_PREPARERS:Z = false

.field private static final greylist-max-o ENFORCE_NODE_TREE_CONSISTENT:Z = false

.field private static final blacklist FLAGS_AFFECTING_REPORTED_DATA:I = 0x380

.field private static final greylist-max-o IGNORE_REQUEST_PREPARERS:Z = true

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionController"

.field private static final greylist-max-o REQUEST_PREPARER_TIMEOUT_MS:J = 0x1f4L


# instance fields
.field private final greylist-max-o mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private greylist-max-o mActiveRequestPreparerId:I

.field private greylist-max-o mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final blacklist mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mMessagesWaitingForRequestPreparer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/AccessibilityInteractionController$MessageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMyLooperThreadId:J

.field private final greylist-max-o mMyProcessId:I

.field private greylist-max-o mNumActiveRequestPreparers:I

.field private blacklist mPendingFindNodeByIdMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final greylist-max-o mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempRectF:Landroid/graphics/RectF;

.field private final greylist-max-o mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$Rjg_OPdy_5ZedB6yPc2apMyWfwM(Landroid/view/AccessibilityInteractionController;Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->attachAccessibilityOverlayToWindowUiThread(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yE7CpOJ2SFkAuPSRk2j6T8A-Eqc(Landroid/view/AccessibilityInteractionController;ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->takeScreenshotOfWindowUiThread(ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$PrivateHandler;
    .locals 0

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrefetcher(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    .locals 0

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRootImpl(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAccessibilityFocusUiThread(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->clearAccessibilityFocusUiThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfosByTextUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfosByViewIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindFocusUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfocusSearchUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misVisibleToAccessibilityService(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyOutsideTouchUiThread(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->notifyOutsideTouchUiThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mperformAccessibilityActionUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprepareForExtraDataRequestUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->prepareForExtraDataRequestUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPreparerDoneUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->requestPreparerDoneUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPreparerTimeoutUiThread(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->requestPreparerTimeoutUiThread()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/ViewRootImpl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher-IA;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;Landroid/view/MagnificationSpec;)V
    .locals 3

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p3, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, p3, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p3, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    :cond_1
    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassAdjustIsVisible()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist applyHostWindowMatrixIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassApplyWindowMatrix()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist applyTransformMatrixToBoundsInParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Matrix;)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {v3, v2}, Landroid/view/AccessibilityInteractionController;->roundRectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method private blacklist associateLeashedParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassAssociateLeashedParent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLeashedParent(Landroid/os/IBinder;I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist attachAccessibilityOverlayToWindowUiThread(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p3, v1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    :cond_0
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v1, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p3, v2, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    return-void
.end method

.method private blacklist clearAccessibilityFocusUiThread()V
    .locals 7

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x280

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    nop

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    nop

    goto :goto_1

    :cond_2
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method private greylist-max-o findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget v11, v9, Landroid/os/Message;->arg1:I

    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v14, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v15, v12, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/view/MagnificationSpec;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/graphics/Region;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [F

    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    and-int/lit8 v0, v11, 0x20

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    iget-object v10, v8, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :try_start_1
    invoke-direct {v8, v11}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    invoke-direct {v8, v13}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v1, v0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-direct {v8, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {v8, v1, v4, v14}, Landroid/view/AccessibilityInteractionController;->populateAccessibilityNodeInfoForView(Landroid/view/View;Landroid/os/Bundle;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v2, v0

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v12

    move/from16 v12, v16

    :try_start_3
    invoke-static {v0, v12}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->-$$Nest$fputmInterruptPrefetch(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;Z)V

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v3

    and-int/lit8 v3, v11, 0x3f

    :try_start_4
    invoke-static {v0, v3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->-$$Nest$fputmFetchFlags(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;I)V

    if-nez v12, :cond_4

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    if-nez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_1
    invoke-virtual {v0, v1, v3, v10}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v4

    move-object v4, v7

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, v16

    move/from16 v16, v13

    move-object v13, v2

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v4

    move-object v4, v7

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, v16

    move/from16 v16, v13

    move-object v13, v2

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v17, v12

    move/from16 v12, v16

    move-object/from16 v16, v3

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v4

    move-object v4, v7

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, v16

    move/from16 v16, v13

    move-object v13, v2

    goto/16 :goto_7

    :cond_3
    move-object/from16 v17, v12

    move/from16 v12, v16

    move-object/from16 v16, v3

    :cond_4
    :goto_2
    move-object v0, v2

    if-nez v12, :cond_7

    move-object v3, v1

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v18, v16

    move/from16 v16, v13

    move-object v13, v3

    move-object v3, v7

    move-object/from16 v19, v4

    move v4, v15

    move-object/from16 v20, v5

    move-object v5, v6

    move-object/from16 v21, v6

    move-object/from16 v6, v18

    move-object/from16 v22, v7

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    nop

    if-nez v0, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    invoke-direct {v8, v1, v10, v11}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-direct {v8, v1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    :cond_6
    return-void

    :cond_7
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v18, v16

    move/from16 v16, v13

    move-object v13, v1

    if-nez v0, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v1

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v3, v22

    move v4, v15

    move-object/from16 v5, v21

    move-object/from16 v6, v18

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    nop

    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    if-nez v0, :cond_9

    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_5
    invoke-virtual {v1, v13, v2, v10}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    move-object/from16 v5, v18

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    invoke-direct {v8, v10, v7, v5, v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    nop

    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    move-object v1, v0

    :goto_6
    invoke-direct {v8, v1, v10, v11}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v1

    move-object/from16 v4, v22

    invoke-direct {v8, v15, v10, v4}, Landroid/view/AccessibilityInteractionController;->returnPrefetchResult(ILjava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    if-eqz v1, :cond_b

    invoke-direct {v8, v1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    :cond_b
    return-void

    :catchall_3
    move-exception v0

    move-object/from16 v19, v4

    move-object v4, v7

    move-object/from16 v17, v12

    move/from16 v12, v16

    move-object v7, v6

    move/from16 v16, v13

    move-object v6, v5

    move-object v5, v3

    move-object/from16 v18, v0

    move-object v0, v1

    move-object v13, v2

    :goto_7
    if-nez v12, :cond_e

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v4

    move-object/from16 v20, v4

    move v4, v15

    move-object/from16 v21, v5

    move-object v5, v7

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    move-object/from16 v23, v7

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    nop

    if-nez v13, :cond_c

    const/4 v1, 0x0

    goto :goto_8

    :cond_c
    move-object v1, v13

    :goto_8
    invoke-direct {v8, v1, v10, v11}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-direct {v8, v1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    :cond_d
    return-void

    :cond_e
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    if-nez v13, :cond_f

    const/4 v2, 0x0

    goto :goto_9

    :cond_f
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v1, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v1

    :goto_9
    move-object/from16 v1, p0

    move-object/from16 v3, v20

    move v4, v15

    move-object/from16 v5, v23

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    throw v18

    :catchall_4
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :cond_10
    :goto_a
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    :try_start_6
    const-string v0, "AccessibilityInteractionController"

    const-string/jumbo v3, "mViewRootImpl is invalid"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    :goto_b
    return-void
.end method

.method private greylist-max-o findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v10, v9, Landroid/os/Message;->arg1:I

    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/view/MagnificationSpec;

    iget v15, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [F

    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {v8, v10}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    invoke-direct {v8, v15}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_8

    :try_start_1
    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v12, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    move-object v0, v1

    goto/16 :goto_3

    :cond_1
    const/4 v3, -0x1

    if-ne v7, v3, :cond_7

    iget-object v4, v8, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v12, v5}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v8, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    move-object v1, v5

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_0
    if-ge v3, v5, :cond_5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    move-object/from16 v20, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v20

    move-object/from16 v2, v20

    if-eqz v2, :cond_3

    nop

    move-object/from16 v20, v4

    const/4 v4, -0x1

    invoke-virtual {v2, v12, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    move-object/from16 v21, v18

    move-object/from16 v4, v21

    if-eqz v4, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    goto :goto_1

    :cond_3
    move-object/from16 v20, v4

    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    move-object/from16 v20, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v4, v20

    goto :goto_0

    :cond_5
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    goto :goto_2

    :cond_7
    move-object/from16 v19, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v20, v0

    move-object v0, v1

    move/from16 v18, v6

    move/from16 v19, v7

    goto :goto_4

    :cond_8
    move-object/from16 v19, v0

    :goto_2
    move-object v0, v1

    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v13

    move v4, v6

    move-object v5, v14

    move/from16 v18, v6

    move-object/from16 v6, v17

    move/from16 v19, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    nop

    return-void

    :catchall_1
    move-exception v0

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v0

    move-object v0, v1

    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v13

    move/from16 v4, v18

    move-object v5, v14

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    throw v20

    :cond_9
    :goto_5
    return-void
.end method

.method private greylist-max-o findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v10, v9, Landroid/os/Message;->arg1:I

    iget v11, v9, Landroid/os/Message;->arg2:I

    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/MagnificationSpec;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [F

    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v6, v8, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :try_start_0
    invoke-direct {v8, v10}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    invoke-direct {v8, v11}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v5, v1

    if-gtz v5, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v14

    move v4, v13

    move v9, v5

    move-object v5, v15

    move/from16 v18, v10

    move-object v10, v6

    move-object/from16 v6, v17

    move-object/from16 v19, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    return-void

    :cond_1
    move v9, v5

    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    :try_start_1
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-direct {v1, v8, v2}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId-IA;)V

    iput-object v1, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    :cond_2
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v1, v9, v10}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    nop

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method private greylist-max-o findFocusUiThread(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v10, v9, Landroid/os/Message;->arg1:I

    iget v11, v9, Landroid/os/Message;->arg2:I

    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v14, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v15, v12, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/MagnificationSpec;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Region;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [F

    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {v8, v10}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    invoke-direct {v8, v14}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    packed-switch v11, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v2, :cond_a

    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-direct {v8, v2}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-direct {v8, v2}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_5

    nop

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    :cond_4
    const/4 v4, -0x1

    if-ne v15, v4, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v1, v4

    goto :goto_1

    :cond_5
    :goto_0
    nop

    :goto_1
    move-object v0, v1

    goto :goto_4

    :pswitch_1
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-direct {v8, v2}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3, v11}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v1, v4

    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v1, v4

    :cond_9
    move-object v0, v1

    goto :goto_4

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown focus type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_3
    move-object v0, v1

    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v16

    move v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v20, v0

    move-object v0, v1

    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v16

    move v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    throw v20

    :cond_b
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o findViewByAccessibilityId(I)Landroid/view/View;
    .locals 1

    const v0, 0x7ffffffe

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeIdManager;->getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeIdManager;->findView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o focusSearchUiThread(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v10, v9, Landroid/os/Message;->arg1:I

    iget v11, v9, Landroid/os/Message;->arg2:I

    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v14, v12, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/MagnificationSpec;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Region;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [F

    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/16 v19, 0x0

    :try_start_0
    invoke-direct {v8, v10}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    invoke-direct {v8, v11}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v13}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v2

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v15

    move v4, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v15

    move v4, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method private blacklist getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)",
            "Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    iget v4, v3, Landroid/os/Message;->arg1:I

    and-int/lit16 v5, v4, 0x380

    and-int/lit16 v6, p3, 0x380

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    iget v6, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v5, Lcom/android/internal/os/SomeArgs;->argi2:I

    nop

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v8

    invoke-direct {p0, p1, p2, v8, v9}, Landroid/view/AccessibilityInteractionController;->nodeWithIdFromList(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    iget-object v10, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v10}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v9, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v10, v5, Lcom/android/internal/os/SomeArgs;->argi3:I

    new-instance v11, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    invoke-direct {v11, v8, v9, v10}, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    move-object v0, v11

    invoke-virtual {v5}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq v2, p1, :cond_3

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private greylist-max-o handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    const-string v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/text/style/AccessibilityClickableSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    return v2

    :cond_3
    move-object v4, v0

    check-cast v4, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/style/AccessibilityClickableSpan;->findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 v2, 0x1

    return v2

    :cond_4
    return v2
.end method

.method private greylist-max-o holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget v0, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    monitor-exit v9

    return v10

    :cond_0
    iget v0, v8, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    monitor-exit v9

    return v2

    :cond_1
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    move-object v11, v1

    if-nez v11, :cond_2

    monitor-exit v9

    return v2

    :cond_2
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move v12, v1

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityManager;->getRequestPreparersForAccessibilityId(I)Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    if-nez v13, :cond_3

    monitor-exit v9

    return v2

    :cond_3
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    if-nez v14, :cond_4

    monitor-exit v9

    return v2

    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    const/4 v1, 0x0

    move v15, v1

    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_6

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v6, v1

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    move-object v4, v1

    nop

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_5

    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    :goto_1
    iput v1, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v14, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v5, v1

    iget v1, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    add-int/2addr v1, v10

    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    iput v1, v5, Landroid/os/Message;->arg1:I

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v4, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, p2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-wide/from16 v4, p3

    move-object/from16 v19, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    nop

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_6
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    monitor-exit v9

    return v10

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o isShown(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isVisibleToAccessibilityService(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isRequestFromAccessibilityTool()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityDataSensitive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist nodeWithIdFromList(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)",
            "Landroid/view/accessibility/AccessibilityNodeInfo;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist notifyOutsideTouchUiThread()V
    .locals 12

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-o performAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 14

    const-string/jumbo v0, "remote exception in performAccessibilityActionUiThread()"

    const-string v1, "AccessibilityInteractionController"

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    iget v5, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v6, v4, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, v4, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v8, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v9, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/os/Bundle;

    invoke-virtual {v4}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v10, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    invoke-direct {p0, v3}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-direct {p0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-direct {p0, v11}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v12, v6}, Landroid/view/accessibility/AccessibilityManager;->notifyPerformingAction(I)V

    const v12, 0x1020199

    if-ne v6, v12, :cond_1

    invoke-direct {p0, v11, v5, v9}, Landroid/view/AccessibilityInteractionController;->handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v12

    move v10, v12

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12, v5, v6, v9}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v13

    move v10, v13

    goto :goto_0

    :cond_2
    const/4 v13, -0x1

    if-ne v5, v13, :cond_3

    invoke-virtual {v11, v6, v9}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v13

    move v10, v13

    :cond_3
    :goto_0
    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/accessibility/AccessibilityManager;->notifyPerformingAction(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :try_start_1
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    invoke-interface {v8, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    return-void

    :catchall_0
    move-exception v11

    :try_start_2
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    invoke-interface {v8, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v12

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    throw v11

    :cond_5
    :goto_3
    return-void
.end method

.method private blacklist populateAccessibilityNodeInfoForView(Landroid/view/View;Landroid/os/Bundle;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2, v1, p2}, Landroid/view/View;->addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0, p3, v2, v1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method private greylist-max-o prepareForExtraDataRequestUiThread(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityRequestPreparer;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/accessibility/AccessibilityRequestPreparer;->onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V

    return-void
.end method

.method private greylist-max-o queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    .locals 2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    :cond_0
    new-instance v0, Landroid/view/AccessibilityInteractionController$MessageHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController$MessageHolder;-><init>(Landroid/os/Message;IJ)V

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private greylist-max-o requestPreparerDoneUiThread(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    if-eq v1, v2, :cond_0

    const-string v1, "AccessibilityInteractionController"

    const-string v2, "Surprising AccessibilityRequestPreparer callback (likely late)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeMessages(I)V

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o requestPreparerTimeoutUiThread()V
    .locals 3

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "AccessibilityRequestPreparer timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist resetAccessibilityFetchFlags()V
    .locals 2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setRequestFromAccessibilityTool(Z)V

    return-void
.end method

.method private blacklist returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V
    .locals 3

    :try_start_0
    iget-object v0, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v2, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestInteractionId:I

    invoke-interface {v1, v0, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private blacklist returnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .locals 1

    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private blacklist returnFindNodesResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityInteractionController"

    const-string/jumbo v2, "remote exception in updateInfosForViewportAndReturnFindNodeResult()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist returnPrefetchResult(ILjava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-interface {p3, p2, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method private static blacklist roundRectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 7

    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v4, v1

    add-double/2addr v4, v2

    double-to-int v1, v4

    iget v4, p0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int v4, v4

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    add-double/2addr v5, v2

    double-to-int v2, v5

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private greylist-max-o scheduleAllMessagesWaitingForRequestPreparerLocked()V
    .locals 10

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/AccessibilityInteractionController$MessageHolder;

    iget-object v5, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    iget v6, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    iget-wide v7, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v9, v2

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v2, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    return-void
.end method

.method private greylist-max-o scheduleMessage(Landroid/os/Message;IJZ)V
    .locals 4

    if-nez p5, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p2, v0, :cond_1

    iget-wide v0, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasAccessibilityCallback(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasAccessibilityCallback(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist setAccessibilityFetchFlags(I)V
    .locals 2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setRequestFromAccessibilityTool(Z)V

    return-void
.end method

.method private greylist-max-o shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private blacklist shouldBypassAdjustIsVisible()Z
    .locals 2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7f2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist shouldBypassApplyWindowMatrix()Z
    .locals 2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private blacklist shouldBypassAssociateLeashedParent()Z
    .locals 2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist takeScreenshotOfWindowUiThread(ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-interface {p3, v0, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    return-void

    :cond_0
    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {p3, v1, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private blacklist transformBoundsWithScreenMatrix(Landroid/view/accessibility/AccessibilityNodeInfo;[F)V
    .locals 8

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {v1, v0}, Landroid/view/AccessibilityInteractionController;->roundRectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-class v5, Landroid/graphics/RectF;

    const-string v6, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/RectF;

    if-eqz v5, :cond_5

    const/4 v6, 0x0

    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_5

    aget-object v7, v5, v6

    if-eqz v7, :cond_4

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v2}, Landroid/view/AccessibilityInteractionController;->applyTransformMatrixToBoundsInParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Matrix;)V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private blacklist updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->associateLeashedParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->applyHostWindowMatrixIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0, p1, p3}, Landroid/view/AccessibilityInteractionController;->transformBoundsWithScreenMatrix(Landroid/view/accessibility/AccessibilityNodeInfo;[F)V

    invoke-direct {p0, p1, p4, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;Landroid/view/MagnificationSpec;)V

    return-void
.end method

.method private blacklist updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0, p1, p4, p5, p6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    return-void
.end method

.method private blacklist updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            "[F",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I",
            "Landroid/view/MagnificationSpec;",
            "[F",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p4, p5, p6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->returnFindNodesResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    return-void
.end method


# virtual methods
.method public blacklist attachAccessibilityOverlayToWindowClientThread(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    new-instance v1, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, p1, v2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist clearAccessibilityFocusClientThread()V
    .locals 7

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public blacklist destroy()V
    .locals 2

    invoke-static {}, Landroid/view/accessibility/Flags;->preventLeakingViewrootimpl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v7, p0

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/4 v0, 0x2

    iput v0, v8, Landroid/os/Message;->what:I

    move/from16 v9, p6

    iput v9, v8, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v11, p4

    iput v11, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v12, p5

    iput-object v12, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v13, p10

    iput-object v13, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v14, p3

    iput-object v14, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v15, p12

    iput-object v15, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v6, p11

    iput-object v6, v10, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v7, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, p7

    move-object/from16 v16, v4

    move-wide/from16 v4, p8

    move v6, v0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    monitor-exit v16

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    :goto_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public blacklist findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16

    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x4

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    move-object/from16 v10, p3

    iput-object v10, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v11, p6

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v12, p11

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v13, p5

    iput v13, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v15, p12

    iput-object v15, v9, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public blacklist findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16

    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x3

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    move/from16 v10, p5

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v11, p6

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v12, p11

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v15, p12

    iput-object v15, v9, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public blacklist findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16

    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x5

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    move/from16 v9, p3

    iput v9, v7, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    move/from16 v11, p5

    iput v11, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v12, p6

    iput-object v12, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v13, p11

    iput-object v13, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v14, p4

    iput-object v14, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v15, p12

    iput-object v15, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public blacklist focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16

    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x6

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    move/from16 v10, p3

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v11, p5

    iput v11, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v12, p6

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v13, p11

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v15, p12

    iput-object v15, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public blacklist notifyOutsideTouchClientThread()V
    .locals 7

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public greylist-max-o performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 14

    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x1

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v10, p3

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v11, p5

    iput v11, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v12, p6

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v13, p4

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public blacklist takeScreenshotOfWindowClientThread(ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 2

    new-instance v0, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p0, v1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v1, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
