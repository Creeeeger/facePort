.class final Lcom/android/systemui/media/CustomComposeView$contentView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $attrs:Landroid/util/AttributeSet;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/media/CustomComposeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/media/CustomComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/CustomComposeView$contentView$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/CustomComposeView$contentView$2;->$attrs:Landroid/util/AttributeSet;

    iput-object p3, p0, Lcom/android/systemui/media/CustomComposeView$contentView$2;->this$0:Lcom/android/systemui/media/CustomComposeView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    new-instance v6, Landroidx/compose/ui/platform/ComposeView;

    iget-object v1, p0, Lcom/android/systemui/media/CustomComposeView$contentView$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/media/CustomComposeView$contentView$2;->$attrs:Landroid/util/AttributeSet;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/android/systemui/media/CustomComposeView$contentView$2;->this$0:Lcom/android/systemui/media/CustomComposeView;

    invoke-static {p0}, Lcom/android/systemui/media/CustomComposeView;->access$generateDefaultLayoutParams(Lcom/android/systemui/media/CustomComposeView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v6}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v6, p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    invoke-static {v6}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v6, p0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    :cond_1
    invoke-static {v6}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v6, p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    :cond_2
    invoke-static {v6}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->get(Landroid/view/View;)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v6, p0}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->set(Landroid/view/View;Landroidx/activity/OnBackPressedDispatcherOwner;)V

    :cond_3
    new-instance v0, Lcom/android/systemui/media/CustomComposeView$contentView$2$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/CustomComposeView$contentView$2$1$1;-><init>(Lcom/android/systemui/media/CustomComposeView;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x5b52b2

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v6, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-object v6
.end method
