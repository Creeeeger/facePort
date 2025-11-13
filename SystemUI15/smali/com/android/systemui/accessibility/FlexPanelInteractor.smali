.class public final Lcom/android/systemui/accessibility/FlexPanelInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDesktopCallback:Lcom/android/systemui/accessibility/FlexPanelInteractor$1;

.field public final mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

.field public mIsNavBarForImmersiveSplit:Z

.field public mNavBarGestureEnabled:Z

.field public final mTaskStackChangeListener:Lcom/android/systemui/accessibility/FlexPanelInteractor$5;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mIsNavBarForImmersiveSplit:Z

    new-instance v1, Lcom/android/systemui/accessibility/FlexPanelInteractor$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor$1;-><init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v4, "navigation_mode"

    invoke-static {v2, v4, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x2

    if-gt v3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mNavBarGestureEnabled:Z

    sget-object v2, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->Companion:Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-virtual {v2}, Lcom/android/systemui/SystemUIInitializer;->getWMComponent()Lcom/android/systemui/dagger/WMComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreenController()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iput-object v2, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/accessibility/FlexPanelInteractor$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/accessibility/FlexPanelInteractor$2;-><init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;Landroid/os/Handler;)V

    invoke-virtual {p1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p1, Lcom/android/systemui/accessibility/FlexPanelInteractor$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor$3;-><init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    new-instance p1, Lcom/android/systemui/accessibility/FlexPanelInteractor$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor$4;-><init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V

    iput-object p1, p3, Lcom/android/systemui/statusbar/phone/AutoHideController;->mFlexPanel:Lcom/android/systemui/statusbar/AutoHideUiElement;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p1, v1}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mTaskStackChangeListener:Lcom/android/systemui/accessibility/FlexPanelInteractor$5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    :cond_1
    new-instance p1, Lcom/android/systemui/accessibility/FlexPanelInteractor$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor$5;-><init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mTaskStackChangeListener:Lcom/android/systemui/accessibility/FlexPanelInteractor$5;

    sget-object p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method
