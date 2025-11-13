.class public final Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final composeBouncerFlags:Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlags;

.field public final legacyBouncerDependencies:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlags;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlags;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;->composeBouncerFlags:Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlags;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;->legacyBouncerDependencies:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final bind(Landroid/view/ViewGroup;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;->composeBouncerFlags:Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlags;

    check-cast v0, Lcom/android/systemui/bouncer/shared/flag/ComposeBouncerFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;->legacyBouncerDependencies:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;

    iget-object v6, p0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    iget-object v7, p0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v2, p0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->primaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    iget-object v3, p0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->componentFactory:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    iget-object v4, p0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->messageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v5, p0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->bouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    return-void
.end method
