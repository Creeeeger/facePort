.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    iget v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class v3, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBar;

    iget v3, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->coverWindowState:I

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v4, v3}, Lcom/android/systemui/navigationbar/NavigationBar;->setWindowState(III)V

    iget-object v0, v2, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isAttached:Z

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    const-string v2, "onNavBarAttached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateIsEnabled()V

    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isLargeCoverScreenSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTaskCache:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-static {p0, p1, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->access$updateLargeCoverNavBarVisibility(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;Lcom/android/systemui/navigationbar/bandaid/Band$Kit;I)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
