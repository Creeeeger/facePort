.class public final Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final ANIM_DURATION:J

.field public final DOWN:I

.field public final UP:I

.field public final cellHeight:I

.field public final collapsedBarRowConsumer:Ljava/util/function/IntConsumer;

.field public currentRow:I

.field public draggingDirection:I

.field public final editButton:Landroid/view/View;

.field public final frame:Landroid/widget/FrameLayout;

.field public final greyScreen:Landroid/view/View;

.field public final gridLayout:Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

.field public final handleView:Landroid/widget/LinearLayout;

.field public final handlerBar:Landroid/widget/ImageView;

.field public initTouchY:I

.field public maximumFrameSize:I

.field public parentView:Landroid/view/View;

.field public final recyclerView:Landroid/view/ViewGroup;

.field public step:I

.field public final verticalCapSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/function/IntConsumer;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->recyclerView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->collapsedBarRowConsumer:Ljava/util/function/IntConsumer;

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->UP:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->DOWN:I

    const-wide/16 p2, 0x1f4

    iput-wide p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->ANIM_DURATION:J

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->currentRow:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->draggingDirection:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0d02f2

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070d35

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->verticalCapSize:I

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p3, p4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p3, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f071720

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->cellHeight:I

    const p1, 0x7f0a0472

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->frame:Landroid/widget/FrameLayout;

    const p1, 0x7f0a04d5

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->handleView:Landroid/widget/LinearLayout;

    const p1, 0x7f0a04d6

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->handlerBar:Landroid/widget/ImageView;

    const p1, 0x7f0a0d2b

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->editButton:Landroid/view/View;

    const p1, 0x7f0a0d2a

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->gridLayout:Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

    const p1, 0x7f0a049e

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->greyScreen:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->handleView:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance p3, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame$initViews$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame$initViews$1;-><init>(Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;)V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-class p1, Lcom/android/systemui/qs/bar/ColoredBGHelper;

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p3, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/bar/ColoredBGHelper;

    const p3, 0x7f0a0956

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/function/IntConsumer;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/function/IntConsumer;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final showGreyScreen(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->editButton:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->greyScreen:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->ANIM_DURATION:J

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->editButton:Landroid/view/View;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    const-wide/16 p0, 0x64

    goto :goto_2

    :cond_6
    iget-wide p0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->ANIM_DURATION:J

    :goto_2
    invoke-virtual {v0, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    return-void
.end method

.method public final updateLayoutHeight(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->gridLayout:Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->gridLayout:Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method
