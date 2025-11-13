.class public final Lcom/android/systemui/statusbar/core/StatusBarInitializer$initializeStatusBar$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/core/StatusBarInitializer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/core/StatusBarInitializer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer$initializeStatusBar$1;->this$0:Lcom/android/systemui/statusbar/core/StatusBarInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Landroid/app/Fragment;)V
    .locals 5

    check-cast p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer$initializeStatusBar$1;->this$0:Lcom/android/systemui/statusbar/core/StatusBarInitializer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->statusBarViewUpdatedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getPhoneStatusBarViewController()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getPhoneStatusBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPhoneStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPhoneStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iput-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v1}, Lcom/android/systemui/shade/ShadeSurface;->updateExpansionAndVisibility()V

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPhoneStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->setImportantForAccessibility(I)V

    :cond_1
    invoke-interface {v1, v3}, Lcom/android/systemui/shade/ShadeSurface;->setImportantForAccessibility(I)V

    invoke-interface {v1, v2}, Lcom/android/systemui/shade/ShadeSurface;->setBouncerShowing(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkBarModes$1()V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->creationListeners:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/core/StatusBarInitializer$OnStatusBarViewInitializedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/core/StatusBarInitializer$OnStatusBarViewInitializedListener;->onStatusBarViewInitialized(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final onFragmentViewDestroyed(Landroid/app/Fragment;)V
    .locals 0

    return-void
.end method
