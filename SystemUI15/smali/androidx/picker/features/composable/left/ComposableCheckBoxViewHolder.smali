.class public final Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final checkBox:Landroid/widget/CheckBox;

.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;


# direct methods
.method public static synthetic $r8$lambda$FyDJVv8R69JPbXfLUFb6Uf1DSJ8(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->bindData$lambda$0(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d7uhe8s93vEYjIVLOKuULbOVCNU(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->bindData$lambda$1(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-void
.end method

.method public static final synthetic access$getCheckBox$p(Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private static final bindData$lambda$0(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;Landroid/view/View;)V
    .locals 0

    iget-object p1, p1, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final bindData$lambda$1(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)Z
    .locals 1

    iget-object p1, p1, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 2

    instance-of v0, p1, Landroidx/picker/model/Selectable;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/picker/model/Selectable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/picker/model/Selectable;->getSelectableItem()Landroidx/picker/loader/select/SelectableItem;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_2
    new-instance v0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$bindData$1;

    invoke-direct {v0, p0}, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$bindData$1;-><init>(Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)V

    invoke-virtual {p1, v0}, Landroidx/picker/features/observable/ObservableProperty;->bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    iget-object v0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;)V

    invoke-virtual {p0, v0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onBind$picker_app_release(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    invoke-static {v0, v1}, Landroidx/picker/helper/CompountButtonHelperKt;->setAccessibilityFocusable(Landroid/widget/CompoundButton;Z)V

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onBind$picker_app_release(Landroid/view/View;)V

    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Landroidx/picker/features/composable/left/ComposableCheckBoxViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    return-void
.end method
