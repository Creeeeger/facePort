.class public final Lcom/android/settings/datausage/DataUsageListHeaderController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final configureButton:Landroid/view/View;

.field public final context:Landroid/content/Context;

.field public final cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field public final cycleListener:Lcom/android/settings/datausage/DataUsageListHeaderController$cycleListener$1;

.field public final cycleSpinner:Landroid/widget/Spinner;

.field public cycles:Ljava/util/List;

.field public isRoaming:Z

.field public final updateSelectedCycle:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/net/NetworkTemplate;ILandroidx/lifecycle/LifecycleOwner;ILkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    const-string v0, "template"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cyclesFlow"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->updateSelectedCycle:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p7

    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->context:Landroid/content/Context;

    const v0, 0x7f0a063d

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->configureButton:Landroid/view/View;

    const v2, 0x7f0a063f

    invoke-virtual {p1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycleSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleListener$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleListener$1;-><init>(Lcom/android/settings/datausage/DataUsageListHeaderController;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycleListener:Lcom/android/settings/datausage/DataUsageListHeaderController$cycleListener$1;

    new-instance v1, Lcom/android/settings/datausage/CycleAdapter;

    new-instance v3, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/settings/datausage/DataUsageListHeaderController$cycleAdapter$1;-><init>(Lcom/android/settings/datausage/DataUsageListHeaderController;)V

    invoke-direct {v1, p7, v3}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageListHeaderController;->cycles:Ljava/util/List;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    const v3, 0x7f060738

    invoke-virtual {p7, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p7

    invoke-virtual {p1, v1, p7}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    new-instance p1, Lcom/android/settings/datausage/DataUsageListHeaderController$1;

    invoke-direct {p1, p0, p2, p5, p3}, Lcom/android/settings/datausage/DataUsageListHeaderController$1;-><init>(Lcom/android/settings/datausage/DataUsageListHeaderController;Landroid/net/NetworkTemplate;II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setVisibility(I)V

    new-instance p1, Lcom/android/settings/datausage/DataUsageListHeaderController$2;

    invoke-direct {p1}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    new-instance p2, Lcom/android/settings/datausage/DataUsageListHeaderController$3;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/settings/datausage/DataUsageListHeaderController$3;-><init>(Lcom/android/settings/datausage/DataUsageListHeaderController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p6, p4, p1, p2}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
