.class public final Lcom/android/wm/shell/bubbles/BubbleOverflow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleViewProvider;


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

.field public final context:Landroid/content/Context;

.field public dotColor:I

.field public dotPath:Landroid/graphics/Path;

.field public expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public final inflater:Landroid/view/LayoutInflater;

.field public overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

.field public final positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public showDot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleOverflow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleOverflow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    return-void
.end method


# virtual methods
.method public final getAppBadge()Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    return-object p0
.end method

.method public final getBubbleIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getDotColor()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->dotColor:I

    return p0
.end method

.method public final getDotPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->dotPath:Landroid/graphics/Path;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    return-object p0
.end method

.method public final getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0d0076

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->initialize(Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130322

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget v0, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateBtnTheme()V

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    return-object p0
.end method

.method public final bridge synthetic getIconView$1()Lcom/android/wm/shell/bubbles/BadgedImageView;
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "Overflow"

    return-object p0
.end method

.method public final getTaskId()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskId:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final setTaskViewVisibility()V
    .locals 0

    return-void
.end method

.method public final showDot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->showDot:Z

    return p0
.end method

.method public final updateBtnTheme()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    const v2, 0x11200c1

    const v3, 0x11200b0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const v1, 0x7f060616

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->dotColor:I

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;->getCircledBubble(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bitmap:Landroid/graphics/Bitmap;

    const v2, 0x1040369

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->dotPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v1, v0, v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->dotPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setRenderedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    :cond_3
    return-void
.end method

.method public final updateResources()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v2, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateDimensions()V

    :cond_1
    return-void
.end method
