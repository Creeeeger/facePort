.class public final Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final DEFAULT_POS:I

.field public final MOVEMENT:I

.field public dragPos:I

.field public startDrag:Z

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->DEFAULT_POS:I

    iput p1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    const/16 p1, 0xf

    iput p1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->MOVEMENT:I

    return-void
.end method


# virtual methods
.method public final canDropOver(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    move v0, p1

    :goto_0
    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {v2}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v2, v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {v2}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v2

    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v2, v4, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {v2}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v2

    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v2, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object p0

    if-ne p0, v4, :cond_5

    add-int/lit8 p1, p1, -0x1

    :cond_5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    if-gt v0, p0, :cond_6

    if-gt p0, p1, :cond_6

    move v1, v3

    :cond_6
    return v1
.end method

.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    iget-object v2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/model/MainModel;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {v2}, Lcom/android/systemui/controls/util/ControlsUtil;->isSecureLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_show_controls"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "StatefulControlAdapter"

    const-string p1, "request DismissKeyguard"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->context:Landroid/content/Context;

    const-string p1, "keyguard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    iget-object p1, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne p1, v0, :cond_4

    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    :cond_4
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->MOVEMENT:I

    invoke-static {p0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    :goto_1
    return p0
.end method

.method public final onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 7

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iget p6, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    const/4 p7, 0x0

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->DEFAULT_POS:I

    if-ne p6, v2, :cond_6

    int-to-float p2, p2

    float-to-double v3, p4

    float-to-double v5, p5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float p6, v3

    cmpg-float p2, p2, p6

    if-gez p2, :cond_6

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    iget-object p0, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/android/systemui/controls/management/model/MainControlModel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_b

    iget-object p2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v3, :cond_1

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :cond_3
    :goto_2
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v4, v4, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/controls/management/model/MainControlModel;

    iput-boolean v3, p2, Lcom/android/systemui/controls/management/model/MainModel;->needToMakeDim:Z

    goto :goto_3

    :cond_5
    iget-object p0, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sget-object p2, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    iget-object p6, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p6, v1, p0, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    cmpg-float p2, p4, p7

    if-nez p2, :cond_b

    cmpg-float p2, p5, p7

    if-nez p2, :cond_b

    iget p2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    if-eq p2, v2, :cond_a

    iget-object p2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v4, :cond_7

    invoke-virtual {p6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/systemui/controls/management/model/MainControlModel;

    iput-boolean v1, p6, Lcom/android/systemui/controls/management/model/MainModel;->needToMakeDim:Z

    goto :goto_5

    :cond_9
    iget-object p2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sget-object p6, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, v1, p2, p6}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_a
    iput v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->dragPos:I

    :cond_b
    :goto_6
    cmpg-float p0, p4, p7

    if-nez p0, :cond_c

    cmpg-float p0, p5, p7

    if-nez p0, :cond_c

    goto :goto_7

    :cond_c
    iget-object p0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const p4, 0x7f080721

    invoke-virtual {p2, p4, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-direct {p3, v1, v1, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p3, p4, p0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    if-gt v0, p1, :cond_1

    move v1, p1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved$1(II)V

    iget-object p2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    const/4 p2, 0x1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->positionChangedCallback:Lcom/android/systemui/controls/ui/SecControlsUiController$ControlsPositionChangedCallback;

    check-cast p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPositionChangedCallback$1;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPositionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isChanged:Z

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    :goto_3
    return p2
.end method

.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->startDrag:Z

    if-eqz p1, :cond_3

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p0, :cond_3

    iget-object p1, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    check-cast p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    const/16 p2, 0x6a

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    const/16 p1, 0x6c

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->startDrag:Z

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object p2, Lcom/android/systemui/controls/util/SALogger$Event$MoveCard;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$MoveCard;

    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$itemTouchHelperCallback$1;->startDrag:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method
