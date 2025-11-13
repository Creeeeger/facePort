.class public final Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/activity/OnBackPressedDispatcherOwner;


# instance fields
.field public final lifecycle:Landroidx/lifecycle/Lifecycle;

.field public final onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/compose/ui/platform/ComposeView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/activity/OnBackPressedDispatcher;->setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$1;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$1;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$1;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$1;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    return-object p0
.end method
