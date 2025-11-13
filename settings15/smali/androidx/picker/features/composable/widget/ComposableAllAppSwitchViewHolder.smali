.class public final Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0015\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0003H\u0010\u00a2\u0006\u0002\u0008\u0012J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0003H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014\u00b2\u0006\n\u0010\u0015\u001a\u00020\tX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;",
        "Landroidx/picker/features/composable/ActionableComposableViewHolder;",
        "frameView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "disposableHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "divider",
        "fromUser",
        "",
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
        "picker-app_release",
        "selected"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty;"
        }
    .end annotation
.end field


# instance fields
.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final divider:Landroid/view/View;

.field private fromUser:Z

.field private final switch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public static synthetic $r8$lambda$_4LebAPXYsAuXcMKP8fNNRYJavQ(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/AllAppsSelectableItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda$2(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h8LOTuSmoQ-aLf_lr6U8iDaZUXE(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/AllAppsSelectableItem;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda$4(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$l0dH78cvweqHZEmr_3Ut9Xq_WcQ(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda$3(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uG0vOnss3qjb1cy9ldGIVp71_nc(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda$5(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    const-class v1, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;

    const-string/jumbo v2, "selected"

    invoke-direct {v0, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f0a0f9d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->divider:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getSwitch$p(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method public static final synthetic access$setFromUser$p(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->fromUser:Z

    return-void
.end method

.method private static final bindData$lambda$0(Landroidx/picker/loader/select/SelectableItem;)Z
    .locals 2

    sget-object v0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/picker/features/observable/ObservableProperty;->getValue$picker_app_release(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final bindData$lambda$1(Landroidx/picker/loader/select/SelectableItem;Z)V
    .locals 2

    sget-object v0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValue$picker_app_release(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private static final bindData$lambda$2(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$selected$delegate"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-static {p1, p0}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda$1(Landroidx/picker/loader/select/SelectableItem;Z)V

    return-void
.end method

.method private static final bindData$lambda$3(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->fromUser:Z

    const/4 p0, 0x0

    return p0
.end method

.method private static final bindData$lambda$4(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$selected$delegate"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->fromUser:Z

    if-eqz p2, :cond_0

    invoke-static {p1, p3}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda$1(Landroidx/picker/loader/select/SelectableItem;Z)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->fromUser:Z

    return-void
.end method

.method private static final bindData$lambda$5(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/SelectableItem;)Z
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$selected$delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    invoke-static {p1, p0}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda$1(Landroidx/picker/loader/select/SelectableItem;Z)V

    return v0
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 2

    const-string/jumbo v0, "viewData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/picker/model/viewdata/AllAppsViewData;

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    new-instance v0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$bindData$1;

    invoke-direct {v0, p0}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$bindData$1;-><init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;)V

    iget-object p1, p1, Landroidx/picker/model/viewdata/AllAppsViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    invoke-virtual {p1, v0}, Landroidx/picker/features/observable/ObservableProperty;->bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->bindData$lambda$0(Landroidx/picker/loader/select/SelectableItem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda0;

    check-cast p1, Landroidx/picker/loader/select/AllAppsSelectableItem;

    invoke-direct {v1, p0, p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/AllAppsSelectableItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda2;-><init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/AllAppsSelectableItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->divider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder$$ExternalSyntheticLambda3;-><init>(Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;Landroidx/picker/loader/select/AllAppsSelectableItem;)V

    invoke-virtual {p0, v0}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    return-void
.end method

.method public onBind$picker_app_release(Landroid/view/View;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onBind$picker_app_release(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->fromUser:Z

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableAllAppSwitchViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    return-void
.end method
