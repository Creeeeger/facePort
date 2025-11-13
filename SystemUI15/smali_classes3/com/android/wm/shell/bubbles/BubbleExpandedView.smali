.class public Lcom/android/wm/shell/bubbles/BubbleExpandedView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BACKGROUND_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$3;

.field public static final BOTTOM_CLIP_PROPERTY:Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;

.field public static final CONTENT_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$2;

.field public static final MANAGE_BUTTON_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$4;


# instance fields
.field public isTaskViewInitialized:Z

.field public mBackgroundColorFloating:I

.field public mBottomClip:I

.field public mBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public mCornerRadius:F

.field public mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

.field public final mExpandedViewContainer:Landroid/widget/FrameLayout;

.field public mExpandedViewContainerLocation:[I

.field public mImeVisible:Z

.field public mIsAnimating:Z

.field public mIsClipping:Z

.field public mIsContentVisible:Z

.field public mIsOverflow:Z

.field public mLeftPointer:Landroid/graphics/drawable/ShapeDrawable;

.field public mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

.field public mManageClickListener:Landroid/view/View$OnClickListener;

.field public mManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

.field public mNeedsNewHeight:Z

.field public mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPointerEffect:Landroid/graphics/CornerPathEffect;

.field public mPointerHeight:I

.field public mPointerMargin:I

.field public mPointerOverlap:F

.field public final mPointerPos:Landroid/graphics/PointF;

.field public mPointerRadius:F

.field public mPointerView:Landroid/view/View;

.field public mPointerWidth:I

.field public mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mRightPointer:Landroid/graphics/drawable/ShapeDrawable;

.field public mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public mTaskId:I

.field public mTaskView:Lcom/android/wm/shell/taskview/TaskView;

.field public final mTaskViewListener:Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;

.field public mTopClip:I

.field public mTopPointer:Landroid/graphics/drawable/ShapeDrawable;

.field public mUsingMaxHeight:Z


# direct methods
.method public static $r8$lambda$ccTaI9r7P2VOoMubLXq7uktr0E8(Lcom/android/wm/shell/bubbles/BubbleExpandedView;ZZFZFZ)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mLeftPointer:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mRightPointer:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopPointer:Landroid/graphics/drawable/ShapeDrawable;

    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updatePointerViewIfExists()V

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerPos:Landroid/graphics/PointF;

    iget p4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float p4, p4

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    iput p3, p1, Landroid/graphics/PointF;->y:F

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    neg-int p2, p2

    iget p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerMargin:I

    :goto_1
    sub-int/2addr p2, p3

    int-to-float p2, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    iget p3, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    goto :goto_1

    :goto_2
    iput p2, p1, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerPos:Landroid/graphics/PointF;

    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerOverlap:F

    iput p2, p1, Landroid/graphics/PointF;->y:F

    if-nez p4, :cond_4

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget p3, p2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    int-to-float p3, p3

    div-float/2addr p3, v0

    add-float/2addr p3, p5

    iget p4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    iput p3, p1, Landroid/graphics/PointF;->x:F

    sget-boolean p4, Lcom/android/wm/shell/QpShellRune;->NOTI_BUBBLE_STYLE_TABLET:Z

    if-eqz p4, :cond_5

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getTabletSidePadding()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p3, p2

    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget p3, p2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    int-to-float p3, p3

    div-float/2addr p3, v0

    add-float/2addr p3, p5

    iget p4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    iput p3, p1, Landroid/graphics/PointF;->x:F

    sget-boolean p4, Lcom/android/wm/shell/QpShellRune;->NOTI_BUBBLE_STYLE_TABLET:Z

    if-eqz p4, :cond_5

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getTabletSidePadding()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p3, p2

    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/PointF;->x:F

    :cond_5
    :goto_3
    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerPos:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerPos:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerPos:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerPos:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;

    const-string v1, "bottomClip"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->BOTTOM_CLIP_PROPERTY:Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$2;

    const-string v1, "contentAlpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->CONTENT_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$2;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$3;

    const-string v1, "backgroundAlpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->BACKGROUND_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$3;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$4;

    const-string v1, "manageButtonAlpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->MANAGE_BUTTON_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsContentVisible:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsAnimating:Z

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerPos:Landroid/graphics/PointF;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCornerRadius:F

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopClip:I

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBottomClip:I

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->isTaskViewInitialized:Z

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskViewListener:Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final applyThemeAttrs()V
    .locals 4

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x11200c9

    const v2, 0x11200cb

    const v3, 0x1010571

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07101e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCornerRadius:F

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBackgroundColorFloating:I

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updatePointerViewIfExists()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateManageButtonIfExists()V

    return-void
.end method

.method public getBubbleKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz p0, :cond_1

    const-string p0, "Overflow"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContentHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopClip:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBottomClip:I

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopClip:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBottomClip:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getOverflow()Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    return-object p0
.end method

.method public final initialize(Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubblePositioner;ZLcom/android/wm/shell/bubbles/BubbleTaskView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const p5, 0x7f0d0077

    invoke-virtual {p4, p5, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    iput-object p1, p2, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    iput-object p3, p2, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, v0, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :cond_0
    iget-object p1, p5, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    iput-object p2, p1, Lcom/android/wm/shell/taskview/TaskView;->mCaptionInsets:Landroid/graphics/Insets;

    iget-object p1, p1, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object p3, p1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mCaptionInsets:Landroid/graphics/Rect;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iput-object p2, p1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mCaptionInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->applyCaptionInsetsIfNeeded()V

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskViewListener:Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;

    iput-object p1, p5, Lcom/android/wm/shell/bubbles/BubbleTaskView;->delegateListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p3, p3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object p3, p3, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isStackOnLeft(Landroid/graphics/PointF;)Z

    move-result p2

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewContainerPadding(ZZ)[I

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    iget v2, p3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerOverlap:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    iget-object p3, p3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    aget p4, p2, p4

    sub-int/2addr p3, p4

    const/4 p4, 0x2

    aget p2, p2, p4

    sub-int/2addr p3, p2

    sub-int/2addr p3, v1

    invoke-direct {p1, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    iget-boolean p1, p5, Lcom/android/wm/shell/bubbles/BubbleTaskView;->isCreated:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskViewListener:Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;

    iget p1, p5, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskId:I

    iget-object p2, p5, Lcom/android/wm/shell/bubbles/BubbleTaskView;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$5;->onTaskCreated(ILandroid/content/ComponentName;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final movePointerBy(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerPos:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    add-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onContainerClipUpdate()V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopClip:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBottomClip:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsClipping:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsClipping:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsClipping:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsClipping:Z

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopClip:I

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBottomClip:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mImeVisible:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/AlphaOptimizedButton;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateDimensions()V

    const v0, 0x7f0a08f7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopPointer:Landroid/graphics/drawable/ShapeDrawable;

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleExpandedView$6;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$6;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public final setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsAnimating:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsContentVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final setBackgroundAlpha(F)V
    .locals 1

    sget-object v0, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public final setContentAlpha(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setContentVisibility(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsContentVisible:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsAnimating:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public final setPointerPosition(FZZ)V
    .locals 11

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerMargin:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    int-to-float v0, v0

    if-eqz v5, :cond_2

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerMargin:I

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    add-int/2addr v2, v3

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    int-to-float v2, v2

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerOverlap:F

    sub-float/2addr v3, v4

    :goto_3
    float-to-int v0, v0

    float-to-int v3, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getPointerPosition(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v1, v2, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY(Lcom/android/wm/shell/bubbles/BubbleViewProvider;F)F

    move-result v1

    sub-float/2addr v0, v1

    :cond_4
    move v7, v0

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda2;

    move-object v3, v0

    move-object v4, p0

    move v6, p2

    move v9, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;ZZFZFZ)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setSurfaceZOrderedOnTop(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    return-void
.end method

.method public final updateDimensions()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateFontSize()V

    const v1, 0x7f070184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerMargin:I

    const v1, 0x7f070187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    const v1, 0x7f070183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerRadius:F

    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerRadius:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerOverlap:F

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v2, v2

    sget v3, Lcom/android/wm/shell/common/TriangleShape;->$r8$clinit:I

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    new-instance v4, Lcom/android/wm/shell/common/TriangleShape;

    invoke-direct {v4, v3, v1, v2}, Lcom/android/wm/shell/common/TriangleShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopPointer:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/common/TriangleShape;->createHorizontal(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mLeftPointer:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/common/TriangleShape;->createHorizontal(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mRightPointer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updatePointerViewIfExists()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateManageButtonIfExists()V

    return-void
.end method

.method public final updateFontSize()V
    .locals 3

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->updateFontSize()V

    :cond_1
    return-void
.end method

.method public final updateHeight()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainerLocation:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v1, :cond_8

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeight(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getMaxExpandedViewHeight(Z)I

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_3

    int-to-float v0, v1

    goto :goto_0

    :cond_3
    int-to-float v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    int-to-float v1, v1

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mUsingMaxHeight:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    :goto_2
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mImeVisible:Z

    if-nez v2, :cond_8

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    iput-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    :cond_8
    return-void
.end method

.method public final updateLocale()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f1311c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->updateLocale()V

    :cond_1
    return-void
.end method

.method public final updateManageButtonIfExists()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10302e3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0074

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/AlphaOptimizedButton;

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f1311c4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v1, :cond_2

    const/16 v3, 0x8

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final updatePointerViewIfExists()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mLeftPointer:Landroid/graphics/drawable/ShapeDrawable;

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mRightPointer:Landroid/graphics/drawable/ShapeDrawable;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBackgroundColorFloating:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBackgroundColorFloating:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
