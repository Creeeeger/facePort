.class public Landroidx/picker/adapter/viewholder/PickerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public disposable:Lkotlinx/coroutines/DisposableHandle;

.field public final item:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/PickerViewHolder;->item:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bindAdapter(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 0

    return-void
.end method

.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 1

    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    new-instance v0, Landroidx/picker/adapter/viewholder/PickerViewHolder$bindData$1$1;

    invoke-direct {v0, p0}, Landroidx/picker/adapter/viewholder/PickerViewHolder$bindData$1$1;-><init>(Landroidx/picker/adapter/viewholder/PickerViewHolder;)V

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->dimmedItem:Landroidx/picker/features/observable/UpdateObservableProperty;

    invoke-virtual {p1, v0}, Landroidx/picker/features/observable/ObservableProperty;->bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/PickerViewHolder;->disposable:Lkotlinx/coroutines/DisposableHandle;

    :cond_0
    return-void
.end method

.method public onViewRecycled()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p0, p0, Landroidx/picker/adapter/viewholder/PickerViewHolder;->disposable:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_1
    return-void
.end method

.method public setViewEnableState(Z)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const v1, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_3
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v1, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v1, p0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    move-object v1, p0

    check-cast v1, Landroidx/core/view/ViewGroupKt$iterator$1;

    invoke-virtual {v1}, Landroidx/core/view/ViewGroupKt$iterator$1;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/core/view/ViewGroupKt$iterator$1;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method
