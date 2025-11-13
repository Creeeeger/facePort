.class public final Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0003H\u0010\u00a2\u0006\u0002\u0008\u000fJ\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0003H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;",
        "Landroidx/picker/features/composable/ActionableComposableViewHolder;",
        "frameView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "disposableHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "radioButton",
        "Landroid/widget/RadioButton;",
        "bindData",
        "",
        "viewData",
        "Landroidx/picker/model/viewdata/ViewData;",
        "onBind",
        "itemView",
        "onBind$picker_app_release",
        "onViewRecycled",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final radioButton:Landroid/widget/RadioButton;


# direct methods
.method public static synthetic $r8$lambda$aFVWIwrJM0rgHD6ZlUe9BRSD_BY(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->bindData$lambda$1(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dY8hRc7ySoLXBNhSCzhuE49kw3g(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->bindData$lambda$0(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "frameView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->radioButton:Landroid/widget/RadioButton;

    return-void
.end method

.method public static final synthetic access$getRadioButton$p(Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->radioButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method private static final bindData$lambda$0(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;Landroid/view/View;)V
    .locals 0

    const-string p2, "$selectableItem"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final bindData$lambda$1(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;)Z
    .locals 1

    const-string v0, "$selectableItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

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

    const-string/jumbo v0, "viewData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_3
    new-instance v0, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder$bindData$1;

    invoke-direct {v0, p0}, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder$bindData$1;-><init>(Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;)V

    invoke-virtual {p1, v0}, Landroidx/picker/features/observable/ObservableProperty;->bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    iget-object v0, p0, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->radioButton:Landroid/widget/RadioButton;

    new-instance v1, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;)V

    invoke-virtual {p0, v0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    return-void
.end method

.method public onBind$picker_app_release(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    invoke-static {v0, v1}, Landroidx/picker/helper/CompountButtonHelperKt;->setAccessibilityFocusable(Landroid/widget/CompoundButton;Z)V

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onBind$picker_app_release(Landroid/view/View;)V

    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Landroidx/picker/features/composable/left/ComposableRadioButtonViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    return-void
.end method
