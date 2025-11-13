.class public final Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$2;

.field private callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final intentFilter:Landroid/content/IntentFilter;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->intentFilter:Landroid/content/IntentFilter;

    const-string p0, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$11;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$2;-><init>(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->intentFilter:Landroid/content/IntentFilter;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x3c

    move-object v3, v0

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$2;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_1
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$5;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$5;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "wallpapertheme_state"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method
