.class public final Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;

.field private callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final intentFilter:Landroid/content/IntentFilter;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public userUnlocked:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->bgHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->intentFilter:Landroid/content/IntentFilter;

    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->userUnlocked:Ljava/lang/Boolean;

    const-string p0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$prepareHandleEvent$2;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;-><init>(Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;Ljava/util/function/Consumer;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->intentFilter:Landroid/content/IntentFilter;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->bgHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/16 v8, 0x30

    move-object v3, v0

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_1
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$5;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$5;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "new_dex"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$prepareHandleEvent$2;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->userUnlocked:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNewDexModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
