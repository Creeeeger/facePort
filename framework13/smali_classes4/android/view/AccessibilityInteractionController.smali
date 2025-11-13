.class public final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$VirtualNode;,
        Landroid/view/AccessibilityInteractionController$ViewNode;,
        Landroid/view/AccessibilityInteractionController$DequeNode;,
        Landroid/view/AccessibilityInteractionController$PrefetchDeque;,
        Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;,
        Landroid/view/AccessibilityInteractionController$MessageHolder;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    }
.end annotation


# static fields
.field private static final greylist-max-o CONSIDER_REQUEST_PREPARERS:Z = false

.field private static final greylist-max-o ENFORCE_NODE_TREE_CONSISTENT:Z = false

.field private static final blacklist FLAGS_AFFECTING_REPORTED_DATA:I = 0x180

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
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 134
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 135
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 136
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 137
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    .line 138
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 139
    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher-IA;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 140
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    .line 142
    return-void
.end method

.method private blacklist adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;
    .param p3, "spec"    # Landroid/view/MagnificationSpec;

    .line 953
    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 957
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 958
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 959
    iget v1, p3, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, p3, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 960
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p3, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 963
    :cond_1
    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassAdjustIsVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 964
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 966
    :cond_2
    return-void

    .line 954
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    :cond_3
    :goto_0
    return-void
.end method

.method private greylist-max-o applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 1027
    if-nez p1, :cond_0

    .line 1028
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1032
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1033
    return-void

    .line 1035
    :cond_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 1037
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 1038
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 1039
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 1041
    :cond_2
    if-eqz p2, :cond_3

    .line 1042
    iget v2, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 1045
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1046
    return-void
.end method

.method private blacklist applyHostWindowMatrixIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 986
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassApplyWindowMatrix()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 990
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 991
    .local v1, "transformedBounds":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 993
    .local v2, "windowMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 994
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 995
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 996
    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 998
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 999
    return-void

    .line 987
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v1    # "transformedBounds":Landroid/graphics/RectF;
    .end local v2    # "windowMatrix":Landroid/graphics/Matrix;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist associateLeashedParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1007
    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassAssociateLeashedParent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1013
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1014
    return-void

    .line 1016
    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLeashedParent(Landroid/os/IBinder;I)V

    .line 1018
    return-void

    .line 1008
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist clearAccessibilityFocusUiThread()V
    .locals 8

    .line 880
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_2

    .line 884
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/16 v2, 0x80

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 886
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 887
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 888
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 891
    .local v2, "host":Landroid/view/View;
    if-eqz v2, :cond_3

    invoke-static {v2, v1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 894
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 895
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 897
    .local v4, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 898
    nop

    .line 899
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v6

    .line 898
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 900
    .local v6, "virtualNodeId":I
    sget-object v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 901
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v7

    .line 900
    invoke-virtual {v3, v6, v7, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 903
    nop

    .end local v6    # "virtualNodeId":I
    goto :goto_1

    .line 904
    :cond_2
    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 905
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    .line 904
    invoke-virtual {v2, v6, v5}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 910
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    :goto_0
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v3, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 892
    return-void

    .line 910
    .end local v1    # "root":Landroid/view/View;
    .end local v2    # "host":Landroid/view/View;
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 911
    nop

    .line 912
    return-void

    .line 910
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 911
    throw v1

    .line 881
    :cond_5
    :goto_2
    return-void
.end method

.method private greylist-max-o findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 25
    .param p1, "message"    # Landroid/os/Message;

    .line 336
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 349
    :cond_0
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 351
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 352
    iget v11, v9, Landroid/os/Message;->arg1:I

    .line 354
    .local v11, "flags":I
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .line 355
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 356
    .local v13, "accessibilityViewId":I
    iget v14, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 357
    .local v14, "virtualDescendantId":I
    iget v15, v12, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 358
    .local v15, "interactionId":I
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 360
    .local v7, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/view/MagnificationSpec;

    .line 361
    .local v6, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/graphics/Region;

    .line 362
    .local v5, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    .line 363
    .local v4, "arguments":Landroid/os/Bundle;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [F

    .line 365
    .local v3, "matrixValues":[F
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 367
    const/4 v1, 0x0

    .line 368
    .local v1, "requestedView":Landroid/view/View;
    const/4 v2, 0x0

    .line 369
    .local v2, "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    and-int/lit8 v0, v11, 0x20

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    .line 372
    .local v16, "interruptPrefetch":Z
    iget-object v10, v8, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 373
    .local v10, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 380
    :try_start_1
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v11, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 381
    invoke-direct {v8, v13}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v1, v0

    .line 382
    if-eqz v1, :cond_3

    :try_start_2
    invoke-direct {v8, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    invoke-direct {v8, v1, v4, v14}, Landroid/view/AccessibilityInteractionController;->populateAccessibilityNodeInfoForView(Landroid/view/View;Landroid/os/Bundle;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v2, v0

    .line 385
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v18, v12

    move/from16 v12, v16

    .end local v16    # "interruptPrefetch":Z
    .local v12, "interruptPrefetch":Z
    .local v18, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    invoke-static {v0, v12}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->-$$Nest$fputmInterruptPrefetch(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;Z)V

    .line 386
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v3

    .end local v3    # "matrixValues":[F
    .local v16, "matrixValues":[F
    and-int/lit8 v3, v11, 0x3f

    :try_start_4
    invoke-static {v0, v3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->-$$Nest$fputmFetchFlags(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;I)V

    .line 388
    if-nez v12, :cond_4

    .line 389
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 391
    if-nez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 390
    :goto_1
    invoke-virtual {v0, v1, v3, v10}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    .line 393
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput v3, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 397
    :catchall_0
    move-exception v0

    move-object/from16 v19, v0

    move-object v0, v1

    move/from16 v17, v13

    move-object v13, v2

    move-object/from16 v24, v16

    move-object/from16 v16, v4

    move-object v4, v7

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, v24

    goto/16 :goto_7

    .end local v16    # "matrixValues":[F
    .restart local v3    # "matrixValues":[F
    :catchall_1
    move-exception v0

    move-object/from16 v19, v0

    move-object v0, v1

    move-object/from16 v16, v4

    move-object v4, v7

    move/from16 v17, v13

    move-object v13, v2

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    .end local v3    # "matrixValues":[F
    .restart local v16    # "matrixValues":[F
    goto/16 :goto_7

    .end local v18    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v3    # "matrixValues":[F
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    .local v16, "interruptPrefetch":Z
    :catchall_2
    move-exception v0

    move-object/from16 v18, v12

    move/from16 v12, v16

    move-object/from16 v19, v0

    move-object v0, v1

    move-object/from16 v16, v4

    move-object v4, v7

    move/from16 v17, v13

    move-object v13, v2

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    .end local v3    # "matrixValues":[F
    .local v12, "interruptPrefetch":Z
    .local v16, "matrixValues":[F
    .restart local v18    # "args":Lcom/android/internal/os/SomeArgs;
    goto/16 :goto_7

    .line 382
    .end local v18    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v3    # "matrixValues":[F
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    .local v16, "interruptPrefetch":Z
    :cond_3
    move-object/from16 v18, v12

    move/from16 v12, v16

    move-object/from16 v16, v3

    .line 397
    .end local v3    # "matrixValues":[F
    .local v12, "interruptPrefetch":Z
    .local v16, "matrixValues":[F
    .restart local v18    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_4
    :goto_2
    move-object v3, v2

    .end local v2    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v3, "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v12, :cond_7

    .line 399
    move-object v2, v1

    .end local v1    # "requestedView":Landroid/view/View;
    .local v2, "requestedView":Landroid/view/View;
    move-object/from16 v1, p0

    move/from16 v17, v13

    move-object v13, v2

    .end local v2    # "requestedView":Landroid/view/View;
    .local v13, "requestedView":Landroid/view/View;
    .local v17, "accessibilityViewId":I
    move-object v2, v10

    move-object v0, v3

    move-object/from16 v19, v16

    .end local v3    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v16    # "matrixValues":[F
    .local v0, "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v19, "matrixValues":[F
    move-object v3, v7

    move-object/from16 v16, v4

    .end local v4    # "arguments":Landroid/os/Bundle;
    .local v16, "arguments":Landroid/os/Bundle;
    move v4, v15

    move-object/from16 v20, v5

    .end local v5    # "interactiveRegion":Landroid/graphics/Region;
    .local v20, "interactiveRegion":Landroid/graphics/Region;
    move-object v5, v6

    move-object/from16 v21, v6

    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .local v21, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v6, v19

    move-object/from16 v22, v7

    .end local v7    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v22, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 402
    nop

    .line 403
    if-nez v0, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    invoke-direct {v8, v1, v10, v11}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v1

    .line 405
    .local v1, "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    if-eqz v1, :cond_6

    .line 406
    invoke-direct {v8, v1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 408
    :cond_6
    return-void

    .line 411
    .end local v0    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v17    # "accessibilityViewId":I
    .end local v19    # "matrixValues":[F
    .end local v20    # "interactiveRegion":Landroid/graphics/Region;
    .end local v21    # "spec":Landroid/view/MagnificationSpec;
    .end local v22    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "requestedView":Landroid/view/View;
    .restart local v3    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v4    # "arguments":Landroid/os/Bundle;
    .restart local v5    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v6    # "spec":Landroid/view/MagnificationSpec;
    .restart local v7    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v13, "accessibilityViewId":I
    .local v16, "matrixValues":[F
    :cond_7
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v17, v13

    move-object/from16 v19, v16

    move-object v13, v1

    move-object v7, v3

    move-object/from16 v16, v4

    .line 412
    .end local v1    # "requestedView":Landroid/view/View;
    .end local v3    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "arguments":Landroid/os/Bundle;
    .end local v5    # "interactiveRegion":Landroid/graphics/Region;
    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .local v7, "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v13, "requestedView":Landroid/view/View;
    .local v16, "arguments":Landroid/os/Bundle;
    .restart local v17    # "accessibilityViewId":I
    .restart local v19    # "matrixValues":[F
    .restart local v20    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v21    # "spec":Landroid/view/MagnificationSpec;
    .restart local v22    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    if-nez v7, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v1

    .line 411
    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v3, v22

    move v4, v15

    move-object/from16 v5, v21

    move-object/from16 v6, v19

    move-object v0, v7

    .end local v7    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v0    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 415
    nop

    .line 416
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 417
    if-nez v0, :cond_9

    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 416
    :goto_5
    invoke-virtual {v1, v13, v2, v10}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    .line 418
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 419
    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    .end local v19    # "matrixValues":[F
    .end local v20    # "interactiveRegion":Landroid/graphics/Region;
    .end local v21    # "spec":Landroid/view/MagnificationSpec;
    .local v5, "matrixValues":[F
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    .local v7, "spec":Landroid/view/MagnificationSpec;
    invoke-direct {v8, v10, v7, v5, v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 420
    nop

    .line 421
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    move-object v1, v0

    :goto_6
    invoke-direct {v8, v1, v10, v11}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v1

    .line 425
    .local v1, "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    move-object/from16 v4, v22

    .end local v22    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-direct {v8, v15, v10, v4}, Landroid/view/AccessibilityInteractionController;->returnPrefetchResult(ILjava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 427
    if-eqz v1, :cond_b

    .line 428
    invoke-direct {v8, v1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 430
    :cond_b
    return-void

    .line 397
    .end local v0    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v17    # "accessibilityViewId":I
    .end local v18    # "args":Lcom/android/internal/os/SomeArgs;
    .local v1, "requestedView":Landroid/view/View;
    .local v2, "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v3, "matrixValues":[F
    .local v4, "arguments":Landroid/os/Bundle;
    .local v5, "interactiveRegion":Landroid/graphics/Region;
    .local v6, "spec":Landroid/view/MagnificationSpec;
    .local v7, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    .local v13, "accessibilityViewId":I
    .local v16, "interruptPrefetch":Z
    :catchall_3
    move-exception v0

    move-object/from16 v18, v12

    move/from16 v17, v13

    move/from16 v12, v16

    move-object/from16 v16, v4

    move-object v4, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    move-object/from16 v19, v0

    move-object v0, v1

    move-object v13, v2

    .end local v1    # "requestedView":Landroid/view/View;
    .end local v2    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "matrixValues":[F
    .local v0, "requestedView":Landroid/view/View;
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "matrixValues":[F
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    .local v7, "spec":Landroid/view/MagnificationSpec;
    .local v12, "interruptPrefetch":Z
    .local v13, "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v16, "arguments":Landroid/os/Bundle;
    .restart local v17    # "accessibilityViewId":I
    .restart local v18    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_7
    if-nez v12, :cond_e

    .line 399
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v4

    move-object/from16 v20, v4

    .end local v4    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v20, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    move v4, v15

    move-object/from16 v21, v5

    .end local v5    # "matrixValues":[F
    .local v21, "matrixValues":[F
    move-object v5, v7

    move-object/from16 v22, v6

    .end local v6    # "interactiveRegion":Landroid/graphics/Region;
    .local v22, "interactiveRegion":Landroid/graphics/Region;
    move-object/from16 v6, v21

    move-object/from16 v23, v7

    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .local v23, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 402
    nop

    .line 403
    if-nez v13, :cond_c

    const/4 v1, 0x0

    goto :goto_8

    :cond_c
    move-object v1, v13

    :goto_8
    invoke-direct {v8, v1, v10, v11}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v1

    .line 405
    .local v1, "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    if-eqz v1, :cond_d

    .line 406
    invoke-direct {v8, v1}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 408
    :cond_d
    return-void

    .line 411
    .end local v1    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    .end local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "matrixValues":[F
    .end local v22    # "interactiveRegion":Landroid/graphics/Region;
    .end local v23    # "spec":Landroid/view/MagnificationSpec;
    .restart local v4    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v5    # "matrixValues":[F
    .restart local v6    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v7    # "spec":Landroid/view/MagnificationSpec;
    :cond_e
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 412
    .end local v4    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v5    # "matrixValues":[F
    .end local v6    # "interactiveRegion":Landroid/graphics/Region;
    .end local v7    # "spec":Landroid/view/MagnificationSpec;
    .restart local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v21    # "matrixValues":[F
    .restart local v22    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v23    # "spec":Landroid/view/MagnificationSpec;
    if-nez v13, :cond_f

    const/4 v2, 0x0

    goto :goto_9

    :cond_f
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v1, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v1

    .line 411
    :goto_9
    move-object/from16 v1, p0

    move-object/from16 v3, v20

    move v4, v15

    move-object/from16 v5, v23

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 415
    throw v19

    .line 351
    .end local v0    # "requestedView":Landroid/view/View;
    .end local v10    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v11    # "flags":I
    .end local v12    # "interruptPrefetch":Z
    .end local v13    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v14    # "virtualDescendantId":I
    .end local v15    # "interactionId":I
    .end local v16    # "arguments":Landroid/os/Bundle;
    .end local v17    # "accessibilityViewId":I
    .end local v18    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "matrixValues":[F
    .end local v22    # "interactiveRegion":Landroid/graphics/Region;
    .end local v23    # "spec":Landroid/view/MagnificationSpec;
    :catchall_4
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    .line 338
    :cond_10
    :goto_a
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 339
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 342
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :try_start_6
    const-string v0, "AccessibilityInteractionController"

    const-string/jumbo v3, "mViewRootImpl is invalid"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const v0, 0x7fffffff

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 345
    goto :goto_b

    .line 344
    :catch_0
    move-exception v0

    .line 346
    :goto_b
    return-void
.end method

.method private greylist-max-o findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 22
    .param p1, "message"    # Landroid/os/Message;

    .line 553
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 557
    :cond_0
    iget v10, v9, Landroid/os/Message;->arg1:I

    .line 559
    .local v10, "flags":I
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 560
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 561
    .local v12, "text":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 563
    .local v13, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/view/MagnificationSpec;

    .line 564
    .local v14, "spec":Landroid/view/MagnificationSpec;
    iget v15, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 565
    .local v15, "accessibilityViewId":I
    iget v7, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 566
    .local v7, "virtualDescendantId":I
    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 567
    .local v6, "interactionId":I
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    .line 568
    .local v16, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [F

    .line 569
    .local v17, "matrixValues":[F
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 571
    const/4 v1, 0x0

    .line 578
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 579
    invoke-direct {v8, v15}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 580
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_8

    :try_start_1
    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 581
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 582
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_1

    .line 583
    invoke-virtual {v3, v12, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    move-object v0, v1

    goto/16 :goto_3

    .line 585
    :cond_1
    const/4 v4, -0x1

    if-ne v7, v4, :cond_7

    .line 586
    iget-object v5, v8, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 587
    .local v5, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 588
    const/4 v2, 0x7

    invoke-virtual {v0, v5, v12, v2}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 591
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 592
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    move-object v1, v2

    .line 593
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 594
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 595
    .local v2, "viewCount":I
    const/16 v18, 0x0

    move/from16 v4, v18

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 596
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    move-object/from16 v20, v19

    .line 597
    .local v20, "foundView":Landroid/view/View;
    move-object/from16 v19, v0

    move-object/from16 v0, v20

    .end local v20    # "foundView":Landroid/view/View;
    .local v0, "foundView":Landroid/view/View;
    .local v19, "root":Landroid/view/View;
    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 598
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v20

    move-object/from16 v3, v20

    .line 599
    if-eqz v3, :cond_3

    .line 600
    nop

    .line 601
    move/from16 v20, v2

    const/4 v2, -0x1

    .end local v2    # "viewCount":I
    .local v20, "viewCount":I
    invoke-virtual {v3, v12, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    move-object/from16 v21, v18

    .line 603
    .local v21, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v2, v21

    .end local v21    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v2, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v2, :cond_2

    .line 604
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 606
    .end local v2    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_2
    goto :goto_1

    .line 607
    .end local v20    # "viewCount":I
    .local v2, "viewCount":I
    :cond_3
    move/from16 v20, v2

    .end local v2    # "viewCount":I
    .restart local v20    # "viewCount":I
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 597
    .end local v20    # "viewCount":I
    .restart local v2    # "viewCount":I
    :cond_4
    move/from16 v20, v2

    .line 595
    .end local v0    # "foundView":Landroid/view/View;
    .end local v2    # "viewCount":I
    .restart local v20    # "viewCount":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    move/from16 v2, v20

    goto :goto_0

    .end local v19    # "root":Landroid/view/View;
    .end local v20    # "viewCount":I
    .local v0, "root":Landroid/view/View;
    .restart local v2    # "viewCount":I
    :cond_5
    move-object/from16 v19, v0

    move/from16 v20, v2

    .end local v0    # "root":Landroid/view/View;
    .end local v2    # "viewCount":I
    .restart local v19    # "root":Landroid/view/View;
    .restart local v20    # "viewCount":I
    move-object v0, v1

    goto :goto_3

    .line 591
    .end local v4    # "i":I
    .end local v19    # "root":Landroid/view/View;
    .end local v20    # "viewCount":I
    .restart local v0    # "root":Landroid/view/View;
    :cond_6
    move-object/from16 v19, v0

    .end local v0    # "root":Landroid/view/View;
    .restart local v19    # "root":Landroid/view/View;
    goto :goto_2

    .line 585
    .end local v5    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v19    # "root":Landroid/view/View;
    .restart local v0    # "root":Landroid/view/View;
    :cond_7
    move-object/from16 v19, v0

    .end local v0    # "root":Landroid/view/View;
    .restart local v19    # "root":Landroid/view/View;
    goto :goto_2

    .line 615
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v19    # "root":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v0

    move-object v0, v1

    move/from16 v18, v6

    move/from16 v19, v7

    goto :goto_4

    .line 580
    .restart local v0    # "root":Landroid/view/View;
    :cond_8
    move-object/from16 v19, v0

    .line 615
    .end local v0    # "root":Landroid/view/View;
    :goto_2
    move-object v0, v1

    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_3
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 616
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v13

    move v4, v6

    move-object v5, v14

    move/from16 v18, v6

    .end local v6    # "interactionId":I
    .local v18, "interactionId":I
    move-object/from16 v6, v17

    move/from16 v19, v7

    .end local v7    # "virtualDescendantId":I
    .local v19, "virtualDescendantId":I
    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 618
    nop

    .line 619
    return-void

    .line 615
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v18    # "interactionId":I
    .end local v19    # "virtualDescendantId":I
    .restart local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v6    # "interactionId":I
    .restart local v7    # "virtualDescendantId":I
    :catchall_1
    move-exception v0

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v0

    move-object v0, v1

    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v6    # "interactionId":I
    .end local v7    # "virtualDescendantId":I
    .restart local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "interactionId":I
    .restart local v19    # "virtualDescendantId":I
    :goto_4
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 616
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v13

    move/from16 v4, v18

    move-object v5, v14

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 618
    throw v20

    .line 554
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v10    # "flags":I
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v12    # "text":Ljava/lang/String;
    .end local v13    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v15    # "accessibilityViewId":I
    .end local v16    # "interactiveRegion":Landroid/graphics/Region;
    .end local v17    # "matrixValues":[F
    .end local v18    # "interactionId":I
    .end local v19    # "virtualDescendantId":I
    :cond_9
    :goto_5
    return-void
.end method

.method private greylist-max-o findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 20
    .param p1, "message"    # Landroid/os/Message;

    .line 481
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 485
    :cond_0
    iget v10, v9, Landroid/os/Message;->arg1:I

    .line 486
    .local v10, "flags":I
    iget v11, v9, Landroid/os/Message;->arg2:I

    .line 488
    .local v11, "accessibilityViewId":I
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .line 489
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 490
    .local v13, "interactionId":I
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 492
    .local v14, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 493
    .local v15, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 494
    .local v7, "viewId":Ljava/lang/String;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    .line 495
    .local v16, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [F

    .line 496
    .local v17, "matrixValues":[F
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 498
    iget-object v6, v8, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 499
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 507
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 508
    invoke-direct {v8, v11}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 511
    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v5, v2

    .line 512
    .local v5, "resolvedViewId":I
    if-gtz v5, :cond_1

    .line 523
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 524
    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v14

    move v4, v13

    move v9, v5

    .end local v5    # "resolvedViewId":I
    .local v9, "resolvedViewId":I
    move-object v5, v15

    move/from16 v18, v10

    move-object v10, v6

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v18, "flags":I
    move-object/from16 v6, v17

    move-object/from16 v19, v7

    .end local v7    # "viewId":Ljava/lang/String;
    .local v19, "viewId":Ljava/lang/String;
    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 513
    return-void

    .line 515
    .end local v9    # "resolvedViewId":I
    .end local v18    # "flags":I
    .end local v19    # "viewId":Ljava/lang/String;
    .restart local v5    # "resolvedViewId":I
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v7    # "viewId":Ljava/lang/String;
    .local v10, "flags":I
    :cond_1
    move v9, v5

    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    .end local v5    # "resolvedViewId":I
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "viewId":Ljava/lang/String;
    .restart local v9    # "resolvedViewId":I
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "flags":I
    .restart local v19    # "viewId":Ljava/lang/String;
    :try_start_1
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v2, :cond_2

    .line 516
    new-instance v2, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-direct {v2, v8, v3}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId-IA;)V

    iput-object v2, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 518
    :cond_2
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v2, v9, v10}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    .line 519
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 520
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v2}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 523
    .end local v0    # "root":Landroid/view/View;
    .end local v9    # "resolvedViewId":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 509
    .end local v18    # "flags":I
    .end local v19    # "viewId":Ljava/lang/String;
    .restart local v0    # "root":Landroid/view/View;
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v7    # "viewId":Ljava/lang/String;
    .local v10, "flags":I
    :cond_3
    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    .line 523
    .end local v0    # "root":Landroid/view/View;
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "viewId":Ljava/lang/String;
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "flags":I
    .restart local v19    # "viewId":Ljava/lang/String;
    :goto_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 524
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 526
    nop

    .line 527
    return-void

    .line 523
    .end local v18    # "flags":I
    .end local v19    # "viewId":Ljava/lang/String;
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v7    # "viewId":Ljava/lang/String;
    .local v10, "flags":I
    :catchall_1
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v18, v10

    move-object v10, v6

    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "viewId":Ljava/lang/String;
    .local v10, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "flags":I
    .restart local v19    # "viewId":Ljava/lang/String;
    :goto_1
    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 524
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 526
    throw v0

    .line 482
    .end local v10    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v11    # "accessibilityViewId":I
    .end local v12    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v13    # "interactionId":I
    .end local v14    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v15    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "interactiveRegion":Landroid/graphics/Region;
    .end local v17    # "matrixValues":[F
    .end local v18    # "flags":I
    .end local v19    # "viewId":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void
.end method

.method private greylist-max-o findFocusUiThread(Landroid/os/Message;)V
    .locals 21
    .param p1, "message"    # Landroid/os/Message;

    .line 645
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 649
    :cond_0
    iget v10, v9, Landroid/os/Message;->arg1:I

    .line 650
    .local v10, "flags":I
    iget v11, v9, Landroid/os/Message;->arg2:I

    .line 652
    .local v11, "focusType":I
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .line 653
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 654
    .local v13, "interactionId":I
    iget v14, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 655
    .local v14, "accessibilityViewId":I
    iget v15, v12, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 656
    .local v15, "virtualDescendantId":I
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 658
    .local v16, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/MagnificationSpec;

    .line 659
    .local v17, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Region;

    .line 660
    .local v18, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [F

    .line 661
    .local v19, "matrixValues":[F
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 663
    const/4 v1, 0x0

    .line 670
    .local v1, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 671
    invoke-direct {v8, v14}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_8

    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 673
    packed-switch v11, :pswitch_data_0

    .line 714
    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_2

    .line 675
    :pswitch_0
    iget-object v3, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 678
    .local v3, "host":Landroid/view/View;
    if-eqz v3, :cond_8

    invoke-static {v3, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 679
    goto/16 :goto_3

    .line 682
    :cond_1
    invoke-direct {v8, v3}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 683
    goto :goto_3

    .line 687
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    .line 688
    .local v4, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v4, :cond_3

    .line 689
    iget-object v5, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 691
    .local v5, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v5, :cond_4

    .line 692
    nop

    .line 693
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 694
    .local v6, "virtualNodeId":I
    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 696
    .end local v5    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "virtualNodeId":I
    :cond_3
    const/4 v5, -0x1

    if-ne v15, v5, :cond_4

    .line 697
    invoke-virtual {v3}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    move-object v1, v5

    goto :goto_1

    .line 696
    :cond_4
    :goto_0
    nop

    .line 699
    .end local v3    # "host":Landroid/view/View;
    .end local v4    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_1
    move-object v0, v1

    goto :goto_4

    .line 701
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 702
    .local v3, "target":Landroid/view/View;
    invoke-direct {v8, v3}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 703
    goto :goto_3

    .line 705
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    .line 706
    .restart local v4    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v4, :cond_6

    .line 707
    invoke-virtual {v4, v11}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    move-object v1, v5

    .line 709
    :cond_6
    if-nez v1, :cond_7

    .line 710
    invoke-virtual {v3}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    move-object v1, v5

    .line 712
    .end local v3    # "target":Landroid/view/View;
    .end local v4    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_7
    move-object v0, v1

    goto :goto_4

    .line 714
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown focus type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "flags":I
    .end local v11    # "focusType":I
    .end local v12    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v13    # "interactionId":I
    .end local v14    # "accessibilityViewId":I
    .end local v15    # "virtualDescendantId":I
    .end local v16    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v17    # "spec":Landroid/view/MagnificationSpec;
    .end local v18    # "interactiveRegion":Landroid/graphics/Region;
    .end local v19    # "matrixValues":[F
    .end local p0    # "this":Landroid/view/AccessibilityInteractionController;
    .end local p1    # "message":Landroid/os/Message;
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    .end local v0    # "root":Landroid/view/View;
    .restart local v1    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v10    # "flags":I
    .restart local v11    # "focusType":I
    .restart local v12    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v13    # "interactionId":I
    .restart local v14    # "accessibilityViewId":I
    .restart local v15    # "virtualDescendantId":I
    .restart local v16    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v17    # "spec":Landroid/view/MagnificationSpec;
    .restart local v18    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v19    # "matrixValues":[F
    .restart local p0    # "this":Landroid/view/AccessibilityInteractionController;
    .restart local p1    # "message":Landroid/os/Message;
    :cond_8
    :goto_3
    move-object v0, v1

    .end local v1    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v0, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_4
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 719
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v16

    move v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 721
    nop

    .line 722
    return-void

    .line 718
    .end local v0    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v1    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v0

    move-object v0, v1

    .end local v1    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v0    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 719
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v16

    move v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 721
    throw v20

    .line 646
    .end local v0    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "flags":I
    .end local v11    # "focusType":I
    .end local v12    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v13    # "interactionId":I
    .end local v14    # "accessibilityViewId":I
    .end local v15    # "virtualDescendantId":I
    .end local v16    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v17    # "spec":Landroid/view/MagnificationSpec;
    .end local v18    # "interactiveRegion":Landroid/graphics/Region;
    .end local v19    # "matrixValues":[F
    :cond_9
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
    .param p1, "accessibilityId"    # I

    .line 942
    const v0, 0x7ffffffe

    if-ne p1, v0, :cond_0

    .line 943
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0

    .line 945
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeIdManager;->getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeIdManager;->findView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o focusSearchUiThread(Landroid/os/Message;)V
    .locals 20
    .param p1, "message"    # Landroid/os/Message;

    .line 748
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 752
    :cond_0
    iget v10, v9, Landroid/os/Message;->arg1:I

    .line 753
    .local v10, "flags":I
    iget v11, v9, Landroid/os/Message;->arg2:I

    .line 755
    .local v11, "accessibilityViewId":I
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .line 756
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iget v13, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 757
    .local v13, "direction":I
    iget v14, v12, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 758
    .local v14, "interactionId":I
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 760
    .local v15, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/MagnificationSpec;

    .line 761
    .local v16, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Region;

    .line 762
    .local v17, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [F

    .line 763
    .local v18, "matrixValues":[F
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 765
    const/16 v19, 0x0

    .line 772
    .local v19, "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 773
    invoke-direct {v8, v11}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 774
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-direct {v8, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 775
    invoke-virtual {v0, v13}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 776
    .local v2, "nextView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 777
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v3

    .line 781
    .end local v0    # "root":Landroid/view/View;
    .end local v2    # "nextView":Landroid/view/View;
    :cond_1
    iget-object v0, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 782
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v15

    move v4, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 784
    nop

    .line 785
    return-void

    .line 781
    :catchall_0
    move-exception v0

    iget-object v2, v8, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 782
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v15

    move v4, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 784
    throw v0

    .line 749
    .end local v10    # "flags":I
    .end local v11    # "accessibilityViewId":I
    .end local v12    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v13    # "direction":I
    .end local v14    # "interactionId":I
    .end local v15    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .end local v17    # "interactiveRegion":Landroid/graphics/Region;
    .end local v18    # "matrixValues":[F
    .end local v19    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    .locals 12
    .param p1, "requestedNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "flags"    # I
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

    .line 1180
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v0, 0x0

    .line 1181
    .local v0, "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1182
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1183
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 1184
    .local v3, "pendingMessage":Landroid/os/Message;
    iget v4, v3, Landroid/os/Message;->arg1:I

    .line 1185
    .local v4, "pendingFlags":I
    and-int/lit16 v5, v4, 0x180

    and-int/lit16 v6, p3, 0x180

    if-eq v5, v6, :cond_0

    .line 1187
    goto :goto_1

    .line 1189
    :cond_0
    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    .line 1190
    .local v5, "args":Lcom/android/internal/os/SomeArgs;
    iget v6, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1191
    .local v6, "accessibilityViewId":I
    iget v7, v5, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1193
    .local v7, "virtualDescendantId":I
    nop

    .line 1194
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v8

    .line 1193
    invoke-direct {p0, p1, p2, v8, v9}, Landroid/view/AccessibilityInteractionController;->nodeWithIdFromList(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 1197
    .local v8, "satisfiedRequestNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_1

    .line 1198
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/4 v10, 0x2

    iget-object v11, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1201
    iget-object v9, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 1203
    .local v9, "satisfiedRequestCallback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget v10, v5, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1204
    .local v10, "satisfiedRequestInteractionId":I
    new-instance v11, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    invoke-direct {v11, v8, v9, v10}, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    move-object v0, v11

    .line 1207
    invoke-virtual {v5}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1208
    goto :goto_2

    .line 1182
    .end local v3    # "pendingMessage":Landroid/os/Message;
    .end local v4    # "pendingFlags":I
    .end local v5    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v6    # "accessibilityViewId":I
    .end local v7    # "virtualDescendantId":I
    .end local v8    # "satisfiedRequestNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "satisfiedRequestCallback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v10    # "satisfiedRequestInteractionId":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1211
    .end local v2    # "i":I
    :cond_2
    :goto_2
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1213
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq v2, p1, :cond_3

    .line 1215
    iget-object v2, v0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1217
    :cond_3
    monitor-exit v1

    return-object v0

    .line 1218
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private greylist-max-o handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1255
    const-string v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1256
    .local v0, "span":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/text/style/AccessibilityClickableSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1257
    return v2

    .line 1261
    :cond_0
    const/4 v1, 0x0

    .line 1262
    .local v1, "infoWithSpan":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 1263
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_1

    .line 1264
    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0

    .line 1265
    :cond_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 1266
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1268
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 1269
    return v2

    .line 1273
    :cond_3
    move-object v4, v0

    check-cast v4, Landroid/text/style/AccessibilityClickableSpan;

    .line 1274
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1273
    invoke-virtual {v4, v5}, Landroid/text/style/AccessibilityClickableSpan;->findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;

    move-result-object v4

    .line 1275
    .local v4, "clickableSpan":Landroid/text/style/ClickableSpan;
    if-eqz v4, :cond_4

    .line 1276
    invoke-virtual {v4, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 1277
    const/4 v2, 0x1

    return v2

    .line 1279
    :cond_4
    return v2
.end method

.method private greylist-max-o holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z
    .locals 20
    .param p1, "originalMessage"    # Landroid/os/Message;
    .param p2, "callingPid"    # I
    .param p3, "callingTid"    # J

    .line 213
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 215
    :try_start_0
    iget v0, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 216
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 217
    monitor-exit v9

    return v10

    .line 221
    :cond_0
    iget v0, v8, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 223
    monitor-exit v9

    return v2

    .line 225
    :cond_1
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 226
    .local v0, "originalMessageArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    move-object v11, v1

    .line 227
    .local v11, "requestArguments":Landroid/os/Bundle;
    if-nez v11, :cond_2

    .line 228
    monitor-exit v9

    return v2

    .line 232
    :cond_2
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move v12, v1

    .line 233
    .local v12, "accessibilityViewId":I
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 234
    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityManager;->getRequestPreparersForAccessibilityId(I)Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    .line 235
    .local v13, "preparers":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-nez v13, :cond_3

    .line 236
    monitor-exit v9

    return v2

    .line 240
    :cond_3
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 241
    .local v14, "extraDataKey":Ljava/lang/String;
    if-nez v14, :cond_4

    .line 242
    monitor-exit v9

    return v2

    .line 246
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 247
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_6

    .line 248
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v6, v1

    .line 250
    .local v6, "requestPreparerMessage":Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    move-object v4, v1

    .line 252
    .local v4, "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    nop

    .line 253
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_5

    .line 254
    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    :goto_1
    iput v1, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 255
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 256
    iput-object v14, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 257
    iput-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 258
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v5, v1

    .line 260
    .local v5, "preparationFinishedMessage":Landroid/os/Message;
    iget v1, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    add-int/2addr v1, v10

    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    iput v1, v5, Landroid/os/Message;->arg1:I

    .line 261
    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 263
    iput-object v4, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 264
    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, p2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .end local v4    # "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    .end local v5    # "preparationFinishedMessage":Landroid/os/Message;
    .local v17, "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    .local v18, "preparationFinishedMessage":Landroid/os/Message;
    move-wide/from16 v4, p3

    move-object/from16 v19, v6

    .end local v6    # "requestPreparerMessage":Landroid/os/Message;
    .local v19, "requestPreparerMessage":Landroid/os/Message;
    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 266
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    .line 267
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 247
    nop

    .end local v17    # "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    .end local v18    # "preparationFinishedMessage":Landroid/os/Message;
    .end local v19    # "requestPreparerMessage":Landroid/os/Message;
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 272
    .end local v15    # "i":I
    :cond_6
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 273
    monitor-exit v9

    return v10

    .line 274
    .end local v0    # "originalMessageArgs":Lcom/android/internal/os/SomeArgs;
    .end local v11    # "requestArguments":Landroid/os/Bundle;
    .end local v12    # "accessibilityViewId":I
    .end local v13    # "preparers":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    .end local v14    # "extraDataKey":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o isShown(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 170
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

.method private blacklist nodeWithIdFromList(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4
    .param p1, "requestedNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "nodeId"    # J
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

    .line 1223
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-nez v0, :cond_0

    .line 1224
    return-object p1

    .line 1226
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1227
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1228
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_1

    .line 1229
    return-object v1

    .line 1226
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1232
    .end local v0    # "j":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist notifyOutsideTouchUiThread()V
    .locals 12

    .line 926
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

    .line 930
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 931
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 934
    .local v10, "now":J
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 936
    .local v1, "event":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 937
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 939
    .end local v1    # "event":Landroid/view/MotionEvent;
    .end local v10    # "now":J
    :cond_1
    return-void

    .line 928
    .end local v0    # "root":Landroid/view/View;
    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-o performAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .line 810
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "remote exception in performAccessibilityActionUiThread()"

    const-string v4, "AccessibilityInteractionController"

    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 815
    :cond_0
    iget v5, v2, Landroid/os/Message;->arg1:I

    .line 816
    .local v5, "flags":I
    iget v6, v2, Landroid/os/Message;->arg2:I

    .line 818
    .local v6, "accessibilityViewId":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 819
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget v8, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 820
    .local v8, "virtualDescendantId":I
    iget v9, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 821
    .local v9, "action":I
    iget v10, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 822
    .local v10, "interactionId":I
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 824
    .local v11, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    .line 826
    .local v12, "arguments":Landroid/os/Bundle;
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 828
    const/4 v13, 0x0

    .line 836
    .local v13, "succeeded":Z
    :try_start_0
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v5, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 837
    invoke-direct {v1, v6}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 838
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 839
    iget-object v15, v1, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v15, v9}, Landroid/view/accessibility/AccessibilityManager;->notifyPerformingAction(I)V

    .line 840
    const v15, 0x1020195

    if-ne v9, v15, :cond_1

    .line 842
    invoke-direct {v1, v0, v8, v12}, Landroid/view/AccessibilityInteractionController;->handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v15

    move v13, v15

    goto :goto_0

    .line 845
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v15

    .line 846
    .local v15, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v15, :cond_2

    .line 847
    invoke-virtual {v15, v8, v9, v12}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v16

    move/from16 v13, v16

    goto :goto_0

    .line 849
    :cond_2
    const/4 v14, -0x1

    if-ne v8, v14, :cond_3

    .line 850
    invoke-virtual {v0, v9, v12}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v14

    move v13, v14

    .line 853
    .end local v15    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    :goto_0
    iget-object v14, v1, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/accessibility/AccessibilityManager;->notifyPerformingAction(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    .end local v0    # "target":Landroid/view/View;
    :cond_4
    :try_start_1
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v14, 0x0

    iput v14, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 858
    invoke-interface {v11, v13, v10}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 864
    goto :goto_1

    .line 859
    :catch_0
    move-exception v0

    .line 862
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v0    # "re":Landroid/os/RemoteException;
    nop

    .line 866
    :goto_1
    return-void

    .line 856
    :catchall_0
    move-exception v0

    move-object v14, v0

    .line 857
    :try_start_2
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v15, 0x0

    iput v15, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 858
    invoke-interface {v11, v13, v10}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 864
    goto :goto_2

    .line 859
    :catch_1
    move-exception v0

    .line 862
    .restart local v0    # "re":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_2
    throw v14

    .line 812
    .end local v5    # "flags":I
    .end local v6    # "accessibilityViewId":I
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v8    # "virtualDescendantId":I
    .end local v9    # "action":I
    .end local v10    # "interactionId":I
    .end local v11    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v12    # "arguments":Landroid/os/Bundle;
    .end local v13    # "succeeded":Z
    :cond_5
    :goto_3
    return-void
.end method

.method private blacklist populateAccessibilityNodeInfoForView(Landroid/view/View;Landroid/os/Bundle;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "virtualViewId"    # I

    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 436
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 437
    :cond_0
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 438
    .local v1, "extraDataRequested":Ljava/lang/String;
    const/4 v2, 0x0

    .line 439
    .local v2, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    .line 440
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 441
    if-eqz v2, :cond_2

    .line 442
    if-eqz v1, :cond_2

    .line 443
    invoke-virtual {p1, v2, v1, p2}, Landroid/view/View;->addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 447
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 448
    if-eqz v2, :cond_2

    .line 449
    if-eqz v1, :cond_2

    .line 450
    invoke-virtual {v0, p3, v2, v1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 455
    :cond_2
    :goto_1
    return-object v2
.end method

.method private greylist-max-o prepareForExtraDataRequestUiThread(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 278
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 279
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 280
    .local v1, "virtualDescendantId":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 281
    .local v2, "preparer":Landroid/view/accessibility/AccessibilityRequestPreparer;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 282
    .local v3, "extraDataKey":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 283
    .local v4, "requestArguments":Landroid/os/Bundle;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    .line 285
    .local v5, "preparationFinishedMessage":Landroid/os/Message;
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/accessibility/AccessibilityRequestPreparer;->onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V

    .line 287
    return-void
.end method

.method private greylist-max-o queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J

    .line 291
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 294
    :cond_0
    new-instance v0, Landroid/view/AccessibilityInteractionController$MessageHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController$MessageHolder;-><init>(Landroid/os/Message;IJ)V

    .line 296
    .local v0, "messageHolder":Landroid/view/AccessibilityInteractionController$MessageHolder;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method private greylist-max-o requestPreparerDoneUiThread(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 300
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    if-eq v1, v2, :cond_0

    .line 302
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "Surprising AccessibilityRequestPreparer callback (likely late)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    monitor-exit v0

    return-void

    .line 305
    :cond_0
    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 306
    if-gtz v1, :cond_1

    .line 307
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeMessages(I)V

    .line 308
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 310
    :cond_1
    monitor-exit v0

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o requestPreparerTimeoutUiThread()V
    .locals 3

    .line 314
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "AccessibilityRequestPreparer timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 317
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V
    .locals 3
    .param p1, "satisfiedRequest"    # Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    .line 1153
    :try_start_0
    iget-object v0, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1154
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 1156
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget v2, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestInteractionId:I

    .line 1157
    .local v2, "interactionId":I
    invoke-interface {v1, v0, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "interactionId":I
    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1161
    :goto_0
    return-void
.end method

.method private blacklist returnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I

    .line 1144
    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    goto :goto_0

    .line 1145
    :catch_0
    move-exception v0

    .line 1148
    :goto_0
    return-void
.end method

.method private blacklist returnFindNodesResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .locals 3
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
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

    .line 1166
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 1167
    if-eqz p1, :cond_0

    .line 1168
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :cond_0
    goto :goto_0

    .line 1170
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionController"

    const-string/jumbo v2, "remote exception in updateInfosForViewportAndReturnFindNodeResult()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist returnPrefetchResult(ILjava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 1
    .param p1, "interactionId"    # I
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
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

    .line 1237
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1239
    :try_start_0
    invoke-interface {p3, p2, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    goto :goto_0

    .line 1240
    :catch_0
    move-exception v0

    .line 1244
    :cond_0
    :goto_0
    return-void
.end method

.method private greylist-max-o scheduleAllMessagesWaitingForRequestPreparerLocked()V
    .locals 10

    .line 322
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 323
    .local v0, "numMessages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 324
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/AccessibilityInteractionController$MessageHolder;

    .line 325
    .local v3, "request":Landroid/view/AccessibilityInteractionController$MessageHolder;
    iget-object v5, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    iget v6, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    iget-wide v7, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v9, v2

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 323
    .end local v3    # "request":Landroid/view/AccessibilityInteractionController$MessageHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 330
    iput v2, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 331
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    .line 332
    return-void
.end method

.method private greylist-max-o scheduleMessage(Landroid/os/Message;IJZ)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J
    .param p5, "ignoreRequestPreparers"    # Z

    .line 146
    if-nez p5, :cond_0

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 152
    :cond_0
    iget v0, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p2, v0, :cond_1

    iget-wide v0, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    .line 153
    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasAccessibilityCallback(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasAccessibilityCallback(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    :cond_3
    :goto_0
    return-void
.end method

.method private greylist-max-o shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1
    .param p1, "appScale"    # F
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 1050
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

    .line 969
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 973
    .local v0, "windowType":I
    const/16 v1, 0x7db

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7f2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 977
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 975
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist shouldBypassApplyWindowMatrix()Z
    .locals 2

    .line 1002
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 1003
    .local v0, "windowMatrix":Landroid/graphics/Matrix;
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

    .line 1021
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

.method private blacklist transformBoundsWithScreenMatrix(Landroid/view/accessibility/AccessibilityNodeInfo;[F)V
    .locals 8
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "matrixValues"    # [F

    .line 1081
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1084
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 1085
    .local v0, "boundInScreen":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 1087
    .local v1, "transformedBounds":Landroid/graphics/RectF;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1088
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1090
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1091
    .local v2, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1092
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1093
    .local v3, "applicationScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    .line 1094
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1099
    :cond_1
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    if-nez v4, :cond_2

    .line 1100
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

    .line 1104
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1105
    return-void

    .line 1107
    :cond_3
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1109
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1110
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1112
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1114
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1115
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1116
    .local v4, "extras":Landroid/os/Bundle;
    const-class v5, Landroid/graphics/RectF;

    .line 1117
    const-string v6, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/RectF;

    .line 1118
    .local v5, "textLocations":[Landroid/graphics/RectF;
    if-eqz v5, :cond_5

    .line 1119
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_5

    .line 1122
    aget-object v7, v5, v6

    .line 1123
    .local v7, "textLocation":Landroid/graphics/RectF;
    if-eqz v7, :cond_4

    .line 1124
    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1119
    .end local v7    # "textLocation":Landroid/graphics/RectF;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1129
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "textLocations":[Landroid/graphics/RectF;
    .end local v6    # "i":I
    :cond_5
    return-void

    .line 1082
    .end local v0    # "boundInScreen":Landroid/graphics/Rect;
    .end local v1    # "transformedBounds":Landroid/graphics/RectF;
    .end local v2    # "transformMatrix":Landroid/graphics/Matrix;
    .end local v3    # "applicationScale":F
    :cond_6
    :goto_1
    return-void
.end method

.method private blacklist updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .param p3, "matrixValues"    # [F
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;

    .line 1062
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->associateLeashedParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1064
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->applyHostWindowMatrixIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1066
    invoke-direct {p0, p1, p3}, Landroid/view/AccessibilityInteractionController;->transformBoundsWithScreenMatrix(Landroid/view/accessibility/AccessibilityNodeInfo;[F)V

    .line 1067
    invoke-direct {p0, p1, p4, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;Landroid/view/MagnificationSpec;)V

    .line 1068
    invoke-direct {p0, p1, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 1069
    return-void
.end method

.method private blacklist updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .param p4, "spec"    # Landroid/view/MagnificationSpec;
    .param p5, "matrixValues"    # [F
    .param p6, "interactiveRegion"    # Landroid/graphics/Region;

    .line 1249
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1250
    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    .line 1251
    return-void
.end method

.method private blacklist updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 2
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .param p3, "matrixValues"    # [F
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
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

    .line 1055
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1056
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1058
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .locals 0
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .param p4, "spec"    # Landroid/view/MagnificationSpec;
    .param p5, "matrixValues"    # [F
    .param p6, "interactiveRegion"    # Landroid/graphics/Region;
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

    .line 1134
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_0

    .line 1135
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1137
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->returnFindNodesResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    .line 1138
    return-void
.end method


# virtual methods
.method public blacklist clearAccessibilityFocusClientThread()V
    .locals 7

    .line 872
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 873
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 876
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 877
    return-void
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    .locals 17
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .param p11, "matrixValues"    # [F
    .param p12, "arguments"    # Landroid/os/Bundle;

    .line 178
    move-object/from16 v7, p0

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 179
    .local v8, "message":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v8, Landroid/os/Message;->what:I

    .line 180
    move/from16 v9, p6

    iput v9, v8, Landroid/os/Message;->arg1:I

    .line 182
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    .line 183
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 184
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 185
    move/from16 v11, p4

    iput v11, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 186
    move-object/from16 v12, p5

    iput-object v12, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 187
    move-object/from16 v13, p10

    iput-object v13, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 188
    move-object/from16 v14, p3

    iput-object v14, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 189
    move-object/from16 v15, p12

    iput-object v15, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 190
    move-object/from16 v6, p11

    iput-object v6, v10, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 191
    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    iget-object v4, v7, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 194
    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, p7

    move-object/from16 v16, v4

    move-wide/from16 v4, p8

    move v6, v0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 197
    monitor-exit v16

    .line 198
    return-void

    .line 197
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
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 533
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 534
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v7, Landroid/os/Message;->what:I

    .line 535
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 537
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 538
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v10, p3

    iput-object v10, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 539
    move-object/from16 v11, p6

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 540
    move-object/from16 v12, p11

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 541
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 542
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 543
    move/from16 v13, p5

    iput v13, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 544
    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 545
    move-object/from16 v15, p12

    iput-object v15, v9, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 546
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 548
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 549
    return-void
.end method

.method public blacklist findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 462
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 463
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x3

    iput v0, v7, Landroid/os/Message;->what:I

    .line 464
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 465
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    .line 467
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 468
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v10, p5

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 469
    move-object/from16 v11, p6

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 470
    move-object/from16 v12, p11

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 471
    move-object/from16 v13, p3

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 472
    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 473
    move-object/from16 v15, p12

    iput-object v15, v9, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 474
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 476
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 477
    return-void
.end method

.method public blacklist findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 625
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 626
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x5

    iput v0, v7, Landroid/os/Message;->what:I

    .line 627
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 628
    move/from16 v9, p3

    iput v9, v7, Landroid/os/Message;->arg2:I

    .line 630
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    .line 631
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v11, p5

    iput v11, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 632
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 633
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 634
    move-object/from16 v12, p6

    iput-object v12, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 635
    move-object/from16 v13, p11

    iput-object v13, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 636
    move-object/from16 v14, p4

    iput-object v14, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 637
    move-object/from16 v15, p12

    iput-object v15, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 638
    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 640
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 641
    return-void
.end method

.method public blacklist focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .locals 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 728
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 729
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x6

    iput v0, v7, Landroid/os/Message;->what:I

    .line 730
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 731
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    .line 733
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 734
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v10, p3

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 735
    move/from16 v11, p5

    iput v11, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 736
    move-object/from16 v12, p6

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 737
    move-object/from16 v13, p11

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 738
    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 739
    move-object/from16 v15, p12

    iput-object v15, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 741
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 743
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 744
    return-void
.end method

.method public blacklist notifyOutsideTouchClientThread()V
    .locals 7

    .line 918
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 919
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 922
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 923
    return-void
.end method

.method public greylist-max-o performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 14
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .line 791
    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 792
    .local v7, "message":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v7, Landroid/os/Message;->what:I

    .line 793
    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 794
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    .line 796
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 797
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 798
    move/from16 v10, p3

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 799
    move/from16 v11, p5

    iput v11, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 800
    move-object/from16 v12, p6

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 801
    move-object/from16 v13, p4

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 803
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 805
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 806
    return-void
.end method
