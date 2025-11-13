.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$simpleCallback$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$simpleCallback$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$simpleCallback$1;->$context:Landroid/content/Context;

    const/16 p1, 0x33

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I
    .locals 0

    if-lez p3, :cond_0

    const/16 p0, 0x14

    goto :goto_0

    :cond_0
    const/16 p0, -0x14

    :goto_0
    return p0
.end method

.method public final onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    const/4 p2, 0x0

    cmpg-float p4, p4, p2

    if-nez p4, :cond_0

    cmpg-float p2, p5, p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$simpleCallback$1;->$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f080df3

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    const/4 p6, 0x0

    invoke-direct {p3, p6, p6, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p3, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$simpleCallback$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    if-ge p1, v0, :cond_0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    if-gt v1, p1, :cond_1

    move v2, p1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq v2, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    sget v1, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->$r8$clinit:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->notifyItemMoved(II)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSLayoutEditViewController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 p1, 0x29

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    instance-of p0, p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->releaseAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    sget-object p2, Lcom/android/systemui/util/ValueAnimatorUtil;->INSTANCE:Lcom/android/systemui/util/ValueAnimatorUtil;

    iget-object v0, p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->parentView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object p1, p1, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p0, v0, v1, p1}, Lcom/android/systemui/util/ValueAnimatorUtil;->startReleaseScaleAnim(Landroid/animation/ValueAnimator;Landroid/view/View;FLandroid/animation/ValueAnimator;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    :goto_1
    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method
