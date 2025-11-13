.class public final Lcom/android/systemui/navigationbar/interactor/InteractorFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final provider:Ljava/util/Map;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/basic/util/LogWrapper;Landroid/os/Handler;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->provider:Ljava/util/Map;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    const-class v1, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    const-class v1, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;

    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    const-class v1, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    const-class v1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    const-class v1, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    sget-object v1, Lcom/android/systemui/Dependency;->NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-class v2, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    invoke-direct {p0, p3, p2}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/SettingsHelper;)V

    const-class v2, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    const-class v2, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;

    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    const-class v2, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;-><init>()V

    const-class v2, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;-><init>()V

    const-class v2, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-direct {p0, p1, p3, v2, p2}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;)V

    const-class v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-direct {p0, p1, p2, p6}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V

    const-class p6, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-interface {v0, p6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    const-class p6, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    invoke-interface {v0, p6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    invoke-direct {p0, p3}, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    const-class p6, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    invoke-interface {v0, p6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;-><init>()V

    const-class p6, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;

    invoke-interface {v0, p6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    sget-object p6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p6, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    move-object v5, p6

    check-cast v5, Landroid/os/Handler;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/basic/util/LogWrapper;)V

    const-class p5, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    invoke-interface {v0, p5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    const-class p1, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;

    invoke-direct {p0, p3, p4}, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;)V

    const-class p1, Lcom/android/systemui/navigationbar/interactor/PackageRemovedInteractor;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    const-class p1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->provider:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
