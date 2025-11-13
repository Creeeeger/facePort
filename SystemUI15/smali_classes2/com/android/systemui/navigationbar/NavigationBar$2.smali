.class public final Lcom/android/systemui/navigationbar/NavigationBar$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateAccessibilityGestureDetected(Z)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$400(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$500(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setSlippery(Z)V

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$600(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    iget-object v3, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    iget-object v5, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    invoke-interface {v5, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;->abortCurrentGestureByA11yGesture(Z)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateAccessibilityServicesState()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAccessibilityStateFlags()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnButtonOrderChanged;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnButtonOrderChanged;-><init>()V

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_0
    return-void
.end method

.method public final updateAssistantAvailable(ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$000(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLongPressHomeEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onAssistantAvailable(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NavigationBar"

    const-string p2, "Unable to send assistant availability data to launcher"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->reconfigureHomeLongClick()V

    return-void
.end method

.method public final updateRotationWatcherState(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;-><init>(I)V

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mIsOnDefaultDisplay:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$100(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$200(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onRotationWatcherChanged(I)V

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$300(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar(I)V

    :cond_1
    return-void
.end method

.method public final updateWallpaperVisibility(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mWallpaperVisible:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void
.end method
