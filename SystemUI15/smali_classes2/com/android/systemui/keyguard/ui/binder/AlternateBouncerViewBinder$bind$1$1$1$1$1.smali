.class final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $alternateBouncerDependencies:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

.field final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1$1;->$alternateBouncerDependencies:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/MotionEvent;

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1$1;->$alternateBouncerDependencies:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    invoke-static {p1}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->onUserTouch$default(Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showPrimaryBouncer(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
