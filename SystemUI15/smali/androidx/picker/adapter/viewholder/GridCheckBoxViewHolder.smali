.class public final Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;
.super Landroidx/picker/adapter/viewholder/GridViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final checkBox:Landroid/widget/CheckBox;

.field public disposableHandle:Lkotlinx/coroutines/DisposableHandle;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/GridViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0287

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/picker/adapter/viewholder/GridViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V

    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    new-instance v0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$bindData$1$1;

    invoke-direct {v0, p0}, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$bindData$1$1;-><init>(Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;)V

    invoke-virtual {p1, v0}, Landroidx/picker/features/observable/ObservableProperty;->bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p1, 0x7f080d81

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->gridItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object p1, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object p1, p0, Landroidx/picker/adapter/viewholder/PickerViewHolder;->item:Landroid/view/View;

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public final onViewRecycled()V
    .locals 2

    invoke-super {p0}, Landroidx/picker/adapter/viewholder/GridViewHolder;->onViewRecycled()V

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    return-void
.end method
