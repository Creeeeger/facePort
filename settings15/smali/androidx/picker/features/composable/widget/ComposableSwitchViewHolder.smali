.class public final Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0015\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0003H\u0010\u00a2\u0006\u0002\u0008\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0003H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t@BX\u0082\u000e\u00a2\u0006\n\n\u0002\u0010\r\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;",
        "Landroidx/picker/features/composable/ActionableComposableViewHolder;",
        "frameView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "disposableHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "divider",
        "value",
        "",
        "hasCustomClickListener",
        "setHasCustomClickListener",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "switch",
        "Landroidx/appcompat/widget/SwitchCompat;",
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

.field private final divider:Landroid/view/View;

.field private hasCustomClickListener:Ljava/lang/Boolean;

.field private final switch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public static synthetic $r8$lambda$xPZ_mowdK1JMxnxwgMjlZMaPaHo(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->bindData$lambda$0(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zfUVGTPYkWFEcbwUp-_jPSO6aYA(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->bindData$lambda$1(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "frameView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0f9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f0a0f9d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->divider:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getSwitch$p(Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method private static final bindData$lambda$0(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)Z
    .locals 1

    const-string v0, "$selectableItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    return v0
.end method

.method private static final bindData$lambda$1(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;Landroid/view/View;)V
    .locals 0

    const-string p2, "$selectableItem"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setHasCustomClickListener(Ljava/lang/Boolean;)V
    .locals 1

    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->hasCustomClickListener:Ljava/lang/Boolean;

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->divider:Landroid/view/View;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
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
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_3
    new-instance v0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$bindData$1;

    invoke-direct {v0, p0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$bindData$1;-><init>(Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)V

    invoke-virtual {p1, v0}, Landroidx/picker/features/observable/ObservableProperty;->bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    new-instance v0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)V

    invoke-virtual {p0, v0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/loader/select/SelectableItem;Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBind$picker_app_release(Landroid/view/View;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->hasCustomClickListener:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->setHasCustomClickListener(Ljava/lang/Boolean;)V

    :cond_0
    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->hasCustomClickListener:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    iget-object p1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    invoke-direct {p0, v0}, Landroidx/picker/features/composable/widget/ComposableSwitchViewHolder;->setHasCustomClickListener(Ljava/lang/Boolean;)V

    return-void
.end method
