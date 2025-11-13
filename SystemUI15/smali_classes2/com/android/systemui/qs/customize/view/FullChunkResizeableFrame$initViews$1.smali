.class public final Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame$initViews$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame$initViews$1;->this$0:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame$initViews$1;->this$0:Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;

    sget v0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p1, v0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x0

    if-eq v1, p1, :cond_10

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->recyclerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->parentView:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->gridLayout:Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    iget v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->initTouchY:I

    sub-int/2addr p2, v0

    add-int v3, v1, p2

    iget v4, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->cellHeight:I

    if-ge v3, v4, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->maximumFrameSize:I

    if-le v3, v5, :cond_5

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    div-int v4, v5, v4

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->initTouchY:I

    if-lez p2, :cond_6

    iget p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->DOWN:I

    goto :goto_2

    :cond_6
    iget p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->UP:I

    :goto_2
    iput p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->draggingDirection:I

    iget v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->DOWN:I

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->gridLayout:Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

    if-nez p2, :cond_7

    move-object p2, v2

    :cond_7
    invoke-virtual {p2}, Landroid/widget/GridLayout;->getHeight()I

    move-result p2

    if-lt p2, v3, :cond_a

    :cond_8
    iget p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->draggingDirection:I

    iget v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->UP:I

    if-ne p2, v0, :cond_16

    iget-object p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->gridLayout:Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

    if-nez p2, :cond_9

    move-object p2, v2

    :cond_9
    invoke-virtual {p2}, Landroid/widget/GridLayout;->getHeight()I

    move-result p2

    if-le p2, v3, :cond_16

    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->updateLayoutHeight(I)V

    iget p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->step:I

    if-eq p2, v4, :cond_e

    if-gt p2, v4, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_3
    if-ge p2, v4, :cond_d

    iget-object v3, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->gridLayout:Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

    if-nez v3, :cond_c

    move-object v3, v2

    :cond_c
    invoke-virtual {v3, v0, p2}, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;->setPosition(FI)V

    add-int/2addr p2, p1

    goto :goto_3

    :cond_d
    iput v4, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->step:I

    :cond_e
    iget-object p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->gridLayout:Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;

    if-nez p2, :cond_f

    goto :goto_4

    :cond_f
    move-object v2, p2

    :goto_4
    iget p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->cellHeight:I

    iget p0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->step:I

    mul-int/2addr p0, p2

    sub-int/2addr v1, p0

    int-to-float p0, v1

    int-to-float p2, p2

    div-float/2addr p0, p2

    invoke-virtual {v2, p0, v4}, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;->setPosition(FI)V

    goto :goto_8

    :cond_10
    iput v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->initTouchY:I

    iput v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->draggingDirection:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->showGreyScreen(Z)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->recyclerView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->parentView:Landroid/view/View;

    if-nez p2, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {p2, p1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :goto_5
    iget-object p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->frame:Landroid/widget/FrameLayout;

    if-nez p2, :cond_12

    goto :goto_6

    :cond_12
    move-object v2, p2

    :goto_6
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result p2

    iget v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->verticalCapSize:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->cellHeight:I

    if-ge p2, v0, :cond_13

    move p2, p1

    goto :goto_7

    :cond_13
    div-int/2addr p2, v0

    :goto_7
    iput p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->step:I

    iget v1, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->currentRow:I

    if-eqz v1, :cond_16

    mul-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->updateLayoutHeight(I)V

    iget p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->step:I

    iput p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->currentRow:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->collapsedBarRowConsumer:Ljava/util/function/IntConsumer;

    invoke-interface {p0, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_8

    :cond_14
    iput v0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->draggingDirection:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->initTouchY:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->showGreyScreen(Z)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->recyclerView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/FullChunkResizeableFrame;->parentView:Landroid/view/View;

    if-nez p0, :cond_15

    goto :goto_8

    :cond_15
    invoke-virtual {p0, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :cond_16
    :goto_8
    return p1
.end method
