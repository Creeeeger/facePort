.class public Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;


# static fields
.field public static final CORNER_RADIUS:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;


# instance fields
.field public mBackgroundColor:I

.field public mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

.field public mCaptionHeight:I

.field public mCurrentCornerRadius:F

.field public mDraggedCornerRadius:F

.field public mHandleView:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

.field public mIsAnimating:Z

.field public mIsContentVisible:Z

.field public mLayerBoundsSupplier:Ljava/util/function/Supplier;

.field public mListener:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$2;

.field public mManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

.field public mMenuViewController:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

.field public mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

.field public mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mRestingCornerRadius:F

.field public mTaskView:Lcom/android/wm/shell/taskview/TaskView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;

    const-string v1, "cornerRadius"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->CORNER_RADIUS:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;

    const-class v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mRestingCornerRadius:F

    iput p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mDraggedCornerRadius:F

    iput p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCurrentCornerRadius:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsContentVisible:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final applyThemeAttrs()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mRestingCornerRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mDraggedCornerRadius:F

    iget v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mRestingCornerRadius:F

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCurrentCornerRadius:F

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x10104e2

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBackgroundColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCaptionHeight:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCurrentCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->updateHandleColor(Z)V

    :cond_0
    return-void
.end method

.method public final initialize(Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubblePositioner;ZLcom/android/wm/shell/bubbles/BubbleTaskView;)V
    .locals 6

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0d0077

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    iput-object p1, p3, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    iput-object p2, p3, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p4, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p0

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;Lcom/android/wm/shell/bubbles/BubbleTaskView;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    iget p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCurrentCornerRadius:F

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mHandleView:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :goto_0
    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuViewController:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

    new-instance p2, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$3;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$3;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    iput-object p2, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mListener:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$3;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mHandleView:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    new-instance p2, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuViewController:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->hideMenu(Z)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCaptionHeight:I

    const v0, 0x7f0a01f3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mHandleView:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->applyThemeAttrs()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/SurfaceView;->layout(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCaptionHeight:I

    const/4 p2, 0x0

    invoke-static {p2, p0, p2, p2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    iput-object p0, p1, Lcom/android/wm/shell/taskview/TaskView;->mCaptionInsets:Landroid/graphics/Insets;

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mCaptionInsets:Landroid/graphics/Rect;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mCaptionInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->applyCaptionInsetsIfNeeded()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public final onTaskCreated()V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setContentVisibility(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->updateHandleColor(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mListener:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$2;

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$2;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mEducationViewController:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v2, :cond_3

    new-instance v4, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$maybeShowManageEducation$1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$2;->val$b:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$maybeShowManageEducation$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    iget-object v4, v3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleEducationController;

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleEducationController;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "force_hide_bubbles_user_education"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v5, p0, Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v5, :cond_3

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz p0, :cond_3

    iget-object p0, v4, Lcom/android/wm/shell/bubbles/BubbleEducationController;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "HasSeenBubblesManageOnboarding"

    invoke-interface {p0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v4, Lcom/android/wm/shell/bubbles/BubbleEducationController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "force_show_bubbles_user_education"

    invoke-static {p0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    sget-object p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;->INSTANCE:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;

    invoke-virtual {v3, v1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->hideEducation(ZLkotlin/jvm/functions/Function0;)V

    const p0, 0x7f0d006c

    invoke-virtual {v3, p0, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->createEducationView(ILandroid/view/ViewGroup;)Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showManageEducation$lambda$3$$inlined$doOnLayout$1;

    invoke-direct {v1}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showManageEducation$lambda$3$$inlined$doOnLayout$1;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    new-instance v1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showManageEducation$2$2;

    invoke-direct {v1, v3}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showManageEducation$2$2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p0, v3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    iput-object v2, v3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object p0

    iget-object v1, v3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->springConfig$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iput-object v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iput-object p0, v3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object p0, v3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->scrimView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, v3, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showManageEducation$3;

    invoke-direct {p0, v3}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showManageEducation$3;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;)V

    invoke-virtual {v3, v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->animateTransition(ZLkotlin/jvm/functions/Function0;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setContentVisibility(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsContentVisible:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsAnimating:Z

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public final updateHandleColor(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBackgroundColor:I

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->luminance(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mHandleView:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;->mHandleLightColor:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;->mHandleDarkColor:I

    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;->mColorChangeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_5
    if-eqz p1, :cond_6

    const-string p1, "backgroundColor"

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;->mColorChangeAnim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView$2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;->mColorChangeAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;->mColorChangeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    :goto_3
    return-void
.end method
