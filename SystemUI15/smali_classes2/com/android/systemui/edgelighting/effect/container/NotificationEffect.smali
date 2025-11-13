.class public Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.super Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final mBlockNotiTouch_for_NA:Z


# instance fields
.field public FREEFORM_HEIGHT_RATIO:F

.field public FREEFORM_WIDTH_RATIO:F

.field public final TAG:Ljava/lang/String;

.field public dreamManager:Landroid/service/dreams/IDreamManager;

.field public mAODManager:Lcom/samsung/android/aod/AODManager;

.field public mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

.field public mConvertColor:I

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

.field public mInfiniteLighting:Z

.field public mIsActionEnable:Z

.field public mIsActivity:Z

.field public mIsHideBriefPopupForEdgeLightingPlus:Z

.field public mIsShowMorphView:Z

.field public mIsSingleTapDisabledForEdgeLightingPlus:Z

.field public mIsSwipeDownDisabledForEdgeLightingPlus:Z

.field public mKgm:Landroid/app/KeyguardManager;

.field public mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

.field public mNotificationContainer:Landroid/widget/RelativeLayout;

.field public mNotificationKey:Ljava/lang/String;

.field public final mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPm:Landroid/os/PowerManager;

.field public final mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

.field public final mTouchableRec:Landroid/graphics/Rect;

.field public mUsingBlackBG:Z


# direct methods
.method public static $r8$lambda$ysN2dLK9OINhN2ykIKVWaylfnNA(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string p1, "onComputeInternalInsets touchable region is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "aod_show_state"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Region;->set(IIII)Z

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    :goto_1
    return-void
.end method

.method public static -$$Nest$mfreeformLaunchBounds(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/Feature;->FEATURE_IS_TABLET_DEVICE:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/Feature;->FEATURE_IS_FOLDABLE:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    move-result v0

    const v1, 0x3ee66666    # 0.45f

    if-eqz v0, :cond_1

    const v0, 0x3f79999a    # 0.975f

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    const v3, 0x3f59999a    # 0.85f

    if-ge v0, v2, :cond_3

    iput v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    iput v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    :goto_1
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    int-to-float v3, v2

    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    mul-float/2addr v3, p0

    float-to-int p0, v3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x2

    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v1, v0

    add-int/2addr p0, v2

    invoke-direct {v3, v0, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public static -$$Nest$mlaunchPopupWindow(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;Z)V
    .locals 3

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v0, 0x1d4c0

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, "isActivity: false : pendingintent is null "

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isActivity: false "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    invoke-interface {p0, v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onFlingDownInWindow(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->resetScreenSize()V

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->run()V

    :cond_3
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.csc.countryiso_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    const-string p1, "NotificationEffect"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mUsingBlackBG:Z

    const v1, -0xf0551d

    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mInfiniteLighting:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSingleTapDisabledForEdgeLightingPlus:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSwipeDownDisabledForEdgeLightingPlus:Z

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    const p1, 0x3f2b851f    # 0.67f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    const-string p1, "NotificationEffect"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mUsingBlackBG:Z

    const v0, -0xf0551d

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mInfiniteLighting:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSingleTapDisabledForEdgeLightingPlus:Z

    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSwipeDownDisabledForEdgeLightingPlus:Z

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    const p1, 0x3f2b851f    # 0.67f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    return-void
.end method

.method public static isDoubleTapToWakeUpEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "double_tab_to_wake_up"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final addTouchInsector()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public dismiss()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, " remove edge  tsp  rect "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-string v7, "brief_popup"

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->unregisterAODReceiver()V

    return-void
.end method

.method public dismissToastPopup()V
    .locals 0

    return-void
.end method

.method public finishToastPopupAnimation()V
    .locals 0

    return-void
.end method

.method public final getDensityScaledRect(Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    cmpl-float v3, v2, v0

    if-ltz v3, :cond_0

    div-float v3, v2, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pWidth - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " width : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    cmpl-float p0, v3, v1

    if-eqz p0, :cond_2

    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method

.method public final getToastRectCalculated()Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->getDensityScaledRect(Landroid/graphics/Rect;)V

    return-object v0

    :cond_3
    :goto_1
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    if-ne v1, v3, :cond_4

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_4
    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->getDensityScaledRect(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public init()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->resetScreenSize()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00f8

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    const v0, 0x7f0a07f2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    const v0, 0x7f0a07f9

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;I)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    iput v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dreamManager:Landroid/service/dreams/IDreamManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071735

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method public final isTouchable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final launchPendingIntent()V
    .locals 6

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onClickToastInWindow()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    const/high16 v2, 0x10000000

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v5, "[Brief] Wakeup and send intent after unlock"

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isDoubleTapToWakeUpEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v3, "[Brief] Wakeup only"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v5, "[Brief] Wakeup and send intent"

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z

    const-string v4, "dismissIfInsecure"

    if-eqz v2, :cond_7

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationKey:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v2, "notificationKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const-string v1, "ignoreKeyguardState"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;Landroid/content/Intent;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_b
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onClickToastInWindow()V

    :cond_c
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onAttached Window add Touch Insector : mIsShowMorphView="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", screen_on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", aod_state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aod_show_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->addTouchInsector()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onDetachedFromWindow Window remove Touch Insector : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", screen_on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", aod_state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aod_show_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    :cond_0
    return-void
.end method

.method public onFlickUpAnimation()V
    .locals 13

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-float v2, v2

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const-string/jumbo v2, "translationY"

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    new-array v3, v4, [F

    aput v7, v3, v6

    invoke-static {v5, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    const/high16 v5, 0x3f800000    # 1.0f

    new-array v7, v4, [F

    aput v5, v7, v6

    const-string v8, "alpha"

    invoke-static {v3, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    const/4 v9, 0x0

    new-array v10, v4, [F

    aput v9, v10, v6

    invoke-static {v7, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const v8, 0x3ea8f5c3    # 0.33f

    const v10, 0x3ecccccd    # 0.4f

    invoke-static {v8, v9, v10, v5, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    const-wide/16 v11, 0xc8

    invoke-virtual {v1, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {v8, v9, v10, v5, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v11, 0x64

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {v8, v9, v10, v5, v2}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    const-wide/16 v11, 0x12c

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {v8, v9, v10, v5, v7}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v6

    aput-object v3, v5, v4

    const/4 v2, 0x2

    aput-object v1, v5, v2

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    aput-object v7, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$6;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->resetScreenSize()V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->updateEffectLocation()V

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const-string v1, " onSizeChanged w : "

    const-string v2, " h : "

    const-string v3, " oldW : "

    invoke-static {p1, p2, v1, v2, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " oldH : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {p3}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->disappear()V

    new-instance p3, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;II)V

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p3, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sec_e-pen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_show_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->launchPendingIntent()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public requestHideEffectView()V
    .locals 0

    return-void
.end method

.method public setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "setEdgeEffectInfo:  dur="

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mInfiniteLighting:Z

    iput-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mInfiniteLighting:Z

    iget-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    iget-object v4, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsUsingAppIcon:Z

    iget-boolean v6, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsSmallIcon:Z

    iget-object v7, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_c

    aget-object v11, v0, v9

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v12, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v12}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v12

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v13, v0, v9

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    iget-object v13, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    aget-object v14, v0, v9

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    aget-object v13, v0, v8

    const-string v15, " code length : "

    const-string v10, " , end "

    const-string v9, "Verification code start : "

    const-string v14, "MorphView"

    const-string v8, "..."

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    if-eqz v12, :cond_4

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v17, v3

    const/4 v13, 0x1

    aget-object v3, v0, v13

    invoke-static {v12, v3}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->isVerificationCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_endIndex:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_endIndex:I

    sget-object v9, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    if-nez v9, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :goto_0
    sub-int/2addr v3, v9

    const/16 v9, 0xf

    if-le v3, v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    aget-object v10, v0, v8

    add-int/lit8 v12, v3, -0xf

    invoke-virtual {v10, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    aget-object v9, v0, v8

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    :goto_1
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Landroid/text/SpannableString;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v3, v8, v13, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v8, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v16, 0x1

    goto :goto_4

    :cond_3
    :goto_2
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v17, v3

    goto :goto_2

    :goto_3
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    move/from16 v16, v13

    :goto_4
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    const/4 v8, 0x1

    aget-object v9, v0, v8

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v9, v13

    move/from16 v3, v16

    goto/16 :goto_7

    :cond_5
    move-object/from16 v17, v3

    const/4 v13, 0x0

    if-eqz v12, :cond_8

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    aget-object v12, v0, v13

    invoke-static {v3, v12}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->isVerificationCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_endIndex:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    const/16 v9, 0xf

    if-le v3, v9, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v10, v0, v9

    sget v12, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    add-int/lit8 v13, v12, -0xf

    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v0, v9

    sget v12, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    invoke-virtual {v10, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    :goto_5
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    aget-object v8, v0, v9

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Landroid/text/SpannableString;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v10

    invoke-virtual {v3, v8, v9, v10, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v8, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    goto :goto_6

    :cond_8
    move v9, v13

    :goto_6
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v9

    :goto_7
    aget-object v8, v0, v9

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    aget-object v0, v0, v8

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    const v8, 0x7fffffff

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_a
    if-eqz v3, :cond_b

    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onExtendLightingDuration()V

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    goto :goto_8

    :cond_c
    move-object/from16 v17, v3

    move v0, v8

    move v3, v9

    iput-boolean v3, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    :goto_8
    if-eqz v4, :cond_10

    iput-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iput-boolean v5, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsUsingAppIcon:Z

    iput-boolean v6, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsSmallIcon:Z

    if-eqz v5, :cond_d

    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIconBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08127d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_d
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIconBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080d26

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    iget-boolean v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsUsingAppIcon:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsSmallIcon:Z

    if-eqz v3, :cond_f

    :cond_e
    const/4 v5, 0x0

    const/16 v6, 0x8

    goto :goto_a

    :cond_f
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :goto_a
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    :goto_b
    if-eqz v7, :cond_11

    iput-object v7, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    :cond_11
    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    if-nez v0, :cond_14

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mHasActionButton:Z

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->showExpandButton(Z)V

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :cond_12
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->showExpandButton(Z)V

    goto :goto_d

    :cond_13
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->showExpandButton(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-boolean v3, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsGrayScaled:Z

    iput-boolean v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsGrayScaled:Z

    const-string v0, " hasActionButton="

    move-object/from16 v3, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mHasActionButton:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, " isGrayScaled= "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsGrayScaled:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_14
    move-object/from16 v3, v17

    :goto_e
    iget-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    invoke-virtual {v1, v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    const-string v0, " color="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mUsingBlackBG:Z

    iget-boolean v4, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsBlackBG:Z

    if-eq v0, v4, :cond_15

    iput-boolean v4, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mUsingBlackBG:Z

    :cond_15
    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mUsingBlackBG:Z

    if-eqz v0, :cond_16

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    :cond_16
    iget-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    if-eqz v0, :cond_17

    iput-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationKey:Ljava/lang/String;

    :cond_17
    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    iput-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    const-string v0, " notificationKey="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " actionEnable= "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    new-instance v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;

    invoke-direct {v2, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-void
.end method

.method public setEffectColors([I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    const/high16 v3, -0x1000000

    aget v1, v1, v2

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    :cond_0
    const/4 v1, 0x3

    new-array v3, v1, [F

    iget v4, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    invoke-static {v4, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    iget-object v4, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    iget-boolean v5, v3, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v4, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060a92

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    const/4 v5, 0x1

    aget v5, v1, v5

    float-to-double v5, v5

    const-wide v7, 0x3fc999999999999aL    # 0.2

    cmpg-double v9, v5, v7

    const/4 v10, 0x2

    const-wide v11, 0x3fee666666666666L    # 0.95

    if-gtz v9, :cond_2

    aget v13, v1, v10

    float-to-double v13, v13

    cmpl-double v13, v13, v11

    if-ltz v13, :cond_2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0601f0

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    aget v10, v1, v10

    float-to-double v13, v10

    const-wide v15, 0x3fa999999999999aL    # 0.05

    cmpg-double v10, v13, v15

    if-gtz v10, :cond_3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0601ee

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto/16 :goto_1

    :cond_3
    aget v1, v1, v2

    const/high16 v10, 0x41f00000    # 30.0f

    cmpg-float v17, v1, v10

    const-wide v18, 0x3fdccccccccccccdL    # 0.45

    const v2, 0x7f0601ef

    const v15, 0x7f0601ed

    const-wide v20, 0x3fe6666666666666L    # 0.7

    const-wide v22, 0x3feb333333333333L    # 0.85

    if-lez v17, :cond_10

    const/high16 v16, 0x433e0000    # 190.0f

    cmpl-float v17, v1, v16

    if-ltz v17, :cond_4

    const/high16 v17, 0x43b40000    # 360.0f

    cmpg-float v17, v1, v17

    if-gtz v17, :cond_4

    goto/16 :goto_0

    :cond_4
    const/high16 v17, 0x42480000    # 50.0f

    cmpl-float v24, v1, v17

    const/high16 v25, 0x43110000    # 145.0f

    if-ltz v24, :cond_9

    cmpg-float v24, v1, v25

    if-gtz v24, :cond_9

    cmpl-double v1, v5, v7

    if-ltz v1, :cond_5

    cmpl-double v1, v13, v11

    if-gez v1, :cond_7

    :cond_5
    cmpl-double v1, v13, v22

    if-ltz v1, :cond_6

    cmpg-double v1, v13, v11

    if-lez v1, :cond_7

    :cond_6
    if-gtz v9, :cond_8

    cmpl-double v1, v13, v20

    if-ltz v1, :cond_8

    cmpg-double v1, v13, v22

    if-gtz v1, :cond_8

    :cond_7
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto/16 :goto_1

    :cond_9
    cmpl-float v9, v1, v10

    if-ltz v9, :cond_a

    cmpg-float v9, v1, v17

    if-lez v9, :cond_b

    :cond_a
    cmpl-float v9, v1, v25

    if-ltz v9, :cond_15

    cmpg-float v1, v1, v16

    if-gtz v1, :cond_15

    :cond_b
    cmpl-double v1, v5, v7

    if-ltz v1, :cond_c

    cmpl-double v1, v13, v11

    if-gez v1, :cond_e

    :cond_c
    cmpg-double v1, v5, v18

    if-gtz v1, :cond_d

    cmpl-double v1, v13, v22

    if-ltz v1, :cond_d

    cmpg-double v1, v13, v11

    if-lez v1, :cond_e

    :cond_d
    const-wide v7, 0x3fc3333333333333L    # 0.15

    cmpg-double v1, v5, v7

    if-gtz v1, :cond_f

    cmpl-double v1, v13, v20

    if-ltz v1, :cond_f

    cmpg-double v1, v13, v22

    if-gtz v1, :cond_f

    :cond_e
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_1

    :cond_f
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_1

    :cond_10
    :goto_0
    cmpl-double v1, v5, v7

    if-ltz v1, :cond_11

    cmpg-double v1, v5, v18

    if-gtz v1, :cond_11

    cmpl-double v1, v13, v11

    if-gez v1, :cond_13

    :cond_11
    cmpg-double v1, v5, v18

    if-gtz v1, :cond_12

    cmpl-double v1, v13, v22

    if-ltz v1, :cond_12

    cmpg-double v1, v13, v11

    if-lez v1, :cond_13

    :cond_12
    const-wide v7, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v5, v7

    if-gtz v1, :cond_14

    cmpl-double v1, v13, v20

    if-ltz v1, :cond_14

    cmpg-double v1, v13, v22

    if-gtz v1, :cond_14

    :cond_13
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_1

    :cond_14
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v4

    :cond_15
    :goto_1
    iget-boolean v1, v3, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    if-eqz v1, :cond_16

    iget-object v1, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    iget-object v1, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIconBg:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-boolean v5, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsGrayScaled:Z

    if-eqz v5, :cond_1b

    iget-boolean v5, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsUsingAppIcon:Z

    if-eqz v5, :cond_18

    iget-boolean v5, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsSmallIcon:Z

    if-eqz v5, :cond_17

    goto :goto_2

    :cond_17
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_18
    :goto_2
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_3
    if-eqz v1, :cond_1c

    iget-boolean v0, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsUsingAppIcon:Z

    if-eqz v0, :cond_19

    iget-boolean v0, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsSmallIcon:Z

    if-eqz v0, :cond_1c

    :cond_19
    if-nez v4, :cond_1a

    const v4, -0xb38f5d

    :cond_1a
    iget-object v0, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    :cond_1b
    iget-object v0, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIconBg:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    :goto_4
    return-void
.end method

.method public setIsMultiResolutionSupoorted(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->initialize()V

    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->getToastRectCalculated()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    const-string v8, "brief_popup"

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateAODTspRect - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;I)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    const-string v0, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v5, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->addTouchInsector()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v0, 0x1

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public startToastPopupAnimation()V
    .locals 0

    return-void
.end method

.method public final unregisterAODReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterAODReceiver: unable to unregister Receiver="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public updateEffectLocation()V
    .locals 0

    return-void
.end method

.method public updateText(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    :cond_0
    return-void
.end method
