.class public final Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;
.super Lcom/android/systemui/navigationbar/TaskbarDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

.field public navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final pluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

.field public shouldInitializeAgain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/TaskbarDelegate;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {p4}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getNavStateManager()Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    new-instance p2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    sget-object p3, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->Companion:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->INSTANCE:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    if-nez p3, :cond_0

    new-instance p3, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-direct {p3}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;-><init>()V

    sput-object p3, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->INSTANCE:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    :cond_0
    new-instance v0, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v1, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    invoke-direct {p2, p3, p4, p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    new-instance p2, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    invoke-direct {p2, p4, p1}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->pluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iput-object p0, p2, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    iput-object p1, p2, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    return-void
.end method


# virtual methods
.method public final attributesChanged(ILjava/lang/String;Z)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0xfff

    const/16 v18, 0x0

    move-object v3, v15

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v3 .. v17}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_APPEARANCE_CHANGED:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    move-object/from16 v4, v19

    iput-object v3, v4, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    const v3, -0x200001

    and-int/2addr v3, v1

    iput v3, v4, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->appearance:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSystemBarAttributesChanged() -"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  displayId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, ", appearance:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v1, 0x10

    const-string v4, ""

    if-eqz v0, :cond_0

    const-string v0, "APPEARANCE_LIGHT_NAVIGATION_BARS "

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_1

    const-string v0, "APPEARANCE_OPAQUE_NAVIGATION_BARS "

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_2

    const-string v0, "APPEARANCE_SEMI_TRANSPARENT_NAVIGATION_BARS "

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v0, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const-string v4, "APPEARANCE_LIGHT_SEMI_TRANSPARENT_NAVIGATION_BARS "

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", navbarColorManagedByIme: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const-string v1, "com.att"

    invoke-static {v2, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ", packageName: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "TaskBarDelegate"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public final configurationChanged(Landroid/content/res/Resources;Landroid/content/res/Configuration;)V
    .locals 5

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    invoke-direct {v0, p2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;-><init>(Landroid/content/res/Configuration;)V

    iget p2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {v1, p0, v0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    new-instance p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    const v0, 0x11101e7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const v2, 0x7f050029

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const v3, 0x11101ea

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const v4, 0x10e00ef

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {p2, v0, v2, v3, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;-><init>(ZZZI)V

    iget p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    invoke-interface {v1, p0, p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    return-void
.end method

.method public final getDisabledFlags()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisabledFlags:I

    return p0
.end method

.method public final getEdgeBackGestureHandler()Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    return-object p0
.end method

.method public final getLightBarTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    return-object p0
.end method

.method public final handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "TaskBarDelegate"

    const-string p1, "handleNavigationBarEvent() TaskbarDelegate is not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TaskbarDelegate"

    const-string v0, "Failed to call handleNavigationBarEvent()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->shouldInitializeAgain:Z

    :goto_0
    return-void
.end method

.method public final initialize()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLastIMEhints:I

    iput v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationIconHints:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->shouldInitializeAgain:Z

    new-instance v1, Lcom/android/systemui/navigationbar/TaskbarDelegate$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate$4;-><init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsControllerFactory:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;->create(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/OverviewProxyService;->onNavButtonsDarkIntensityChanged(F)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->mList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideUiElement:Lcom/android/systemui/navigationbar/TaskbarDelegate$3;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->mList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LightBarController;->mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->onNavButtonsDarkIntensityChanged(F)V

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnTaskbarAttachedToWindow;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnTaskbarAttachedToWindow;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    return-void
.end method

.method public final isBackGestureAllowed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isBackGestureAllowed(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final notifyRequestedGameToolsWin(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "notifyRequestedGameToolsWin visible : %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskBarDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->notifyRequestedGameToolsWin(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyRequestedSystemKey(ZZ)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const-wide v1, 0x800000000L

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    const-wide v1, 0x1000000000L

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    :cond_0
    return-void
.end method

.method public final notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    if-ne v0, p1, :cond_1

    sget v0, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "notifySamsungPayInfo displayId : %d, visible: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskBarDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->notifyPayInfo(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to notify pay info."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    new-instance p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;-><init>(ZI)V

    iget-object p2, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_1
    return-void
.end method

.method public final onConnectionChanged(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->shouldInitializeAgain:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->shouldInitializeAgain:Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->onInitializedTaskbarNavigationBar()V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z

    move-result p1

    :cond_0
    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->isTaskbarEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnTaskbarDetachedFromWindow;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnTaskbarDetachedFromWindow;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->mList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideUiElement:Lcom/android/systemui/navigationbar/TaskbarDelegate$3;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mObserver:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarTransientObserver;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onInitializedTaskbarNavigationBar()V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    if-eqz v1, :cond_4

    const-string v1, "TaskBarDelegate"

    const-string v2, "onInitializedTaskbarNavigationBar()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->updateTaskbarButtonIconsAndHints()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getRemoteView(I)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "requestClass"

    iget-object v6, v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->remoteViews:Landroid/widget/RemoteViews;

    const-string v6, "remoteViews"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "position"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "priority"

    iget v3, v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->priority:I

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz v4, :cond_1

    new-instance v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/16 v18, 0xfff

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v19}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_NAVBAR_REMOTEVIEWS:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object v5, v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object v4, v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->remoteViewBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/16 v16, 0xfff

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v17}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_ROTATION_LOCKED_CHANGED:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object v3, v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->rotationLocked:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-eqz v2, :cond_3

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isNavBarHiddenByKnox()Z

    move-result v1

    :cond_3
    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/16 v16, 0xfff

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v15

    move-object/from16 v20, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_TASKBAR_VIS_BY_KNOX:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    move-object/from16 v3, v20

    iput-object v2, v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-boolean v1, v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->hiddenByKnox:Z

    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const-wide v3, 0x2000000000L

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v1, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    invoke-virtual {v2, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->onNavButtonsDarkIntensityChanged(F)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->pluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->updatePluginBundle()V

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSideBackGestureInsets;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget v3, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v2, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSideBackGestureInsets;-><init>(II)V

    iget v2, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisplayId:I

    iget-object v3, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_4
    return-void
.end method

.method public final onTaskbarSPluginButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->pluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->buttonDispatcherProxy:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;->pinButton:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy$TaskbarButtonDispatcher;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public final putButtonBitmapsToBundle(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/os/Bundle;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/IconDrawableUtil;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p0}, Lcom/android/systemui/navigationbar/util/IconDrawableUtil;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_LIGHT"

    invoke-static {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aget-object v0, v3, v1

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "_DARK"

    invoke-static {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aget-object p1, v3, v2

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget p2, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationIconHints:I

    iput p2, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mLastIMEhints:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canShowHideKeyboardButtonForRotation$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z

    :cond_0
    return-void
.end method

.method public final transitionModeChanged(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;-><init>(I)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    return-void
.end method

.method public final transitionStateChanged(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_0
    new-instance v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0xfff

    const/16 v17, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v17}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_TRANSIENT_SHOWING_CHANGED:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object v3, v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-boolean v1, v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->transientShowing:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V

    return-void
.end method

.method public final updateA11yStatus()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateA11yState()V

    return-void
.end method

.method public final updateActiveIndicatorSpringParams(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->updateActiveIndicatorSpringParams(FF)V

    return-void
.end method

.method public final updateTaskbarButtonIconsAndHints()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isRTL:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    xor-int/2addr v2, v3

    const-string v5, "defaultIcon"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->putButtonBitmapsToBundle(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/os/Bundle;)V

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->putButtonBitmapsToBundle(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/os/Bundle;)V

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->putButtonBitmapsToBundle(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/os/Bundle;)V

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->putButtonBitmapsToBundle(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/os/Bundle;)V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->context:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    sget-object v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-object v7, v5, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v8

    iget-object v5, v5, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    check-cast v5, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-virtual {v5, v7, v8, v4}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/systemui/navigationbar/util/IconDrawableUtil;->getBitmapFromDrawable(Landroid/content/Context;Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;)[Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v5, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget-object v8, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {v7, v6}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v9

    iget-object v7, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    check-cast v7, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-virtual {v7, v8, v9, v4}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/systemui/navigationbar/util/IconDrawableUtil;->getBitmapFromDrawable(Landroid/content/Context;Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;)[Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v7, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->context:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget-object v9, v8, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {v8, v6}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v6

    iget-object v8, v8, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    check-cast v8, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-virtual {v8, v9, v6, v4}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/systemui/navigationbar/util/IconDrawableUtil;->getBitmapFromDrawable(Landroid/content/Context;Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;)[Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v7, "TYPE_GESTURE_HANDLE_HINT_LIGHT"

    aget-object v8, v2, v4

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v7, "TYPE_GESTURE_HANDLE_HINT_DARK"

    aget-object v2, v2, v3

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "TYPE_GESTURE_HINT_LIGHT"

    aget-object v7, v5, v4

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "TYPE_GESTURE_HINT_DARK"

    aget-object v5, v5, v3

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "TYPE_GESTURE_HINT_VI_LIGHT"

    aget-object v4, v6, v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "TYPE_GESTURE_HINT_VI_DARK"

    aget-object v4, v6, v3

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->pluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_3

    iget-object v4, v2, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "extra"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_LIGHT"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v4, v2, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_DARK"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->pluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->parseAndUpdateBundle()V

    new-instance v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0xfff

    const/16 v17, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v17}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_ICON_BITMAP:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object v3, v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object v1, v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->iconBitmapBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V

    return-void
.end method
