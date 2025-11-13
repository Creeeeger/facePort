.class public final Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;


# instance fields
.field public mPrimaryBouncerAnimating:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpansionChanged(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->mPrimaryBouncerAnimating:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setPrimaryBouncerHiddenFraction(F)V

    :cond_0
    return-void
.end method

.method public final onFullyHidden()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->mPrimaryBouncerAnimating:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final onStartingToHide()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->mPrimaryBouncerAnimating:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final onStartingToShow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->mPrimaryBouncerAnimating:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsBackCallbackRegistered:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mSafeUIBouncerContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOnBackInvokedCallback:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$2;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsBackCallbackRegistered:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsBackCallbackRegistered:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mSafeUIBouncerContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOnBackInvokedCallback:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$2;

    invoke-virtual {p1, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsBackCallbackRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method
