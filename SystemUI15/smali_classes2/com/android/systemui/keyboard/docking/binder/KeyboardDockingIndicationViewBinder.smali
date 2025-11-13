.class public final Lcom/android/systemui/keyboard/docking/binder/KeyboardDockingIndicationViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final drawCallback:Lcom/android/systemui/keyboard/docking/binder/KeyboardDockingIndicationViewBinder$drawCallback$1;

.field public final glowEffectView:Lcom/android/systemui/keyboard/docking/ui/KeyboardDockingIndicationView;

.field public final stateChangedCallback:Lcom/android/systemui/keyboard/docking/binder/KeyboardDockingIndicationViewBinder$stateChangedCallback$1;

.field public final viewModel:Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;

.field public final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 p3, -0x1

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p3, -0x3

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p3, 0x7d9

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string p3, "Edge glow effect"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p3, 0x18

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    new-instance p2, Lcom/android/systemui/keyboard/docking/ui/KeyboardDockingIndicationView;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/keyboard/docking/ui/KeyboardDockingIndicationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/keyboard/docking/binder/KeyboardDockingIndicationViewBinder$drawCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyboard/docking/binder/KeyboardDockingIndicationViewBinder$drawCallback$1;-><init>(Lcom/android/systemui/keyboard/docking/binder/KeyboardDockingIndicationViewBinder;)V

    new-instance p1, Lcom/android/systemui/keyboard/docking/binder/KeyboardDockingIndicationViewBinder$stateChangedCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyboard/docking/binder/KeyboardDockingIndicationViewBinder$stateChangedCallback$1;-><init>(Lcom/android/systemui/keyboard/docking/binder/KeyboardDockingIndicationViewBinder;)V

    return-void
.end method
