.class public final Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$createUniqueObjectHost$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $viewHost:Lcom/android/systemui/util/animation/UniqueObjectHostView;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lcom/android/systemui/util/animation/UniqueObjectHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$createUniqueObjectHost$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$createUniqueObjectHost$1;->$viewHost:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$createUniqueObjectHost$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$createUniqueObjectHost$1;->$viewHost:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->rootView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$createUniqueObjectHost$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->rootView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroupOverlay;

    iput-object v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$createUniqueObjectHost$1;->$viewHost:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
