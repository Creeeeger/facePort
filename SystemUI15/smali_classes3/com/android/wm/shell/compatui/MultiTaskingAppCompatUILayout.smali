.class public Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAnimationListenerWrappers:Ljava/util/HashMap;

.field public final mButtons:Ljava/util/HashMap;

.field public mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

.field public final mFrameCommitCallback:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;

.field public final mHandler:Landroid/os/Handler;

.field public mHorizontalMarginFromActivityBounds:I

.field public mLastVisibleTarget:Landroid/widget/ImageButton;

.field public final mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public mNaviButtonSize:I

.field public mSwitchableButtonContainer:Landroid/widget/FrameLayout;

.field public final mTouchableRegion:Landroid/graphics/Region;

.field public final mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;

.field public mVerticalMarginFromActivityBounds:I

.field public mWindowManager:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;


# direct methods
.method public static $r8$lambda$mCU4zJ-Ek2I7AokD1FchTrCG1cc(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->configureTouchableRegion(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w6py6pSGPMO7lM_mAu3k29BmhLs(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mAnimationListenerWrappers:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mVerticalMarginFromActivityBounds:I

    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHorizontalMarginFromActivityBounds:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mFrameCommitCallback:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mAnimationListenerWrappers:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mVerticalMarginFromActivityBounds:I

    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHorizontalMarginFromActivityBounds:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mFrameCommitCallback:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mAnimationListenerWrappers:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mVerticalMarginFromActivityBounds:I

    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHorizontalMarginFromActivityBounds:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mFrameCommitCallback:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final adjustMargins(Z)V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHorizontalMarginFromActivityBounds:I

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mVerticalMarginFromActivityBounds:I

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    iget-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v0, v0, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    sub-int/2addr p1, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v0, :cond_1

    iget v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mNaviButtonSize:I

    sub-int/2addr p1, v2

    if-ge p1, v0, :cond_1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    if-lez v0, :cond_2

    int-to-float v2, v0

    iget v3, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mNaviButtonSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr p1, v2

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    const v3, 0x7f0a0781

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-lez v0, :cond_3

    iget v4, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mNaviButtonSize:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_3
    iget v4, v1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iget v5, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mVerticalMarginFromActivityBounds:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    const v3, 0x7f0a077e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mNaviButtonSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_5
    iget p1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iget p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mVerticalMarginFromActivityBounds:I

    add-int/2addr p1, p0

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_6
    iget-object p1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHorizontalMarginFromActivityBounds:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    const v1, 0x7f0a077f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    const p1, 0x7f0a0780

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final configureTouchableRegion(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-static {v2, v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->$r8$lambda$w6py6pSGPMO7lM_mAu3k29BmhLs(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    iget-object p1, p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mMultiTaskingAppCompatUIWindowManager:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->setTouchRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method public final refreshButtonVisibility(Z)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-boolean v2, v0, Landroid/app/AppCompatTaskInfo;->topActivityInDisplayCompat:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    const v2, 0x7f0a0784

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->hasMinAspectRatioOverride()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isRotationCompatModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    const v2, 0x7f0a0783

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-static {v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->isAlignedVertically(Landroid/app/TaskInfo;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0x55

    const/16 v4, 0x8

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->adjustMargins(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x10

    const v5, 0x7f0a077e

    const v6, 0x7f0a0781

    if-eq v0, v1, :cond_7

    const/16 v1, 0x30

    if-eq v0, v1, :cond_6

    const/16 v1, 0x50

    if-eq v0, v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v6, v2, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    invoke-virtual {p0, v5, v4, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x35

    invoke-static {p1, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v6, v4, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    invoke-virtual {p0, v5, v2, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v3}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v6, v2, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    invoke-virtual {p0, v5, v2, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v3}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->adjustMargins(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I

    and-int/lit8 v0, v0, 0x7

    const v5, 0x7f0a0780

    const v6, 0x7f0a077f

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v6, v2, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    invoke-virtual {p0, v5, v4, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x53

    invoke-static {p1, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0, v6, v4, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    invoke-virtual {p0, v5, v2, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v3}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    goto :goto_1

    :cond_b
    invoke-virtual {p0, v6, v2, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    invoke-virtual {p0, v5, v2, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setButtonVisibility(IIZ)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v3}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->configureTouchableRegion(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->requestDismiss()V

    return-void
.end method

.method public final requestDismiss()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->ONE_UI_5_1_1:Z

    const-wide/16 v1, 0x1388

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-boolean v0, v0, Landroid/app/AppCompatTaskInfo;->topActivityInDisplayCompat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V

    invoke-virtual {v0, v3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;)V

    invoke-virtual {v0, v3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_0
    return-void
.end method

.method public final setButtonVisibility(IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mAnimationListenerWrappers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;->mCancel:Z

    iget-object v1, v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, p2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    if-nez p2, :cond_2

    const v1, 0x7f010200

    goto :goto_0

    :cond_2
    const v1, 0x7f010201

    :goto_0
    invoke-static {p3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    new-instance v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;

    invoke-direct {v1, p0, p3, v0, p2}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;Landroid/view/animation/Animation;Landroid/view/View;I)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mAnimationListenerWrappers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiTaskingAppCompatUILayout{mController="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastVisibleTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
