.class public final Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final actionContainer:Landroid/view/View;

.field public animator:Landroid/animation/Animator;

.field public final fadeUI:Ljava/util/List;

.field public final flashView:Landroid/view/View;

.field public final view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

.field public final viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;

    const p2, 0x7f0a0a4c

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p2, 0x7f0a0a51

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p2, 0x7f0a0a50

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p2, 0x7f0a0a47

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->flashView:Landroid/view/View;

    const p2, 0x7f0a00a4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->actionContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    const v2, 0x7f0a0a4e

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const v3, 0x7f0a0a40

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const v5, 0x7f0a0a44

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    aput-object p2, v1, v6

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    aput-object p2, v1, v8

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    aput-object p2, v1, v0

    const p2, 0x7f0a0a49

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->fadeUI:Ljava/util/List;

    return-void
.end method
