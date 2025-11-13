.class public final synthetic Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mSafeUIBouncerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->addBouncer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;->addBouncerExpansionCallback(Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mSafeUIBouncerContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLegacyBouncerDependencies:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;

    iget-object v3, v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;

    iget-object v4, v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->primaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;

    iget-object v5, v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->componentFactory:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;

    iget-object v6, v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->messageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;

    iget-object v7, v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->bouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;

    iget-object v8, v0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;

    iget-object v9, p0, Lcom/android/systemui/bouncer/ui/binder/LegacyBouncerDependencies;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    return-void
.end method
