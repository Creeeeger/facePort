.class public abstract Lcom/android/systemui/pluginlock/PluginLockModule;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindPluginLockData(Lcom/android/systemui/pluginlock/PluginLockDataImpl;)Lcom/android/systemui/pluginlock/PluginLockData;
.end method

.method public abstract bindPluginLockManager(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)Lcom/android/systemui/pluginlock/PluginLockManager;
.end method

.method public abstract bindPluginLockMediator(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/PluginLockMediator;
.end method

.method public abstract bindPluginWallpaperManager(Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;)Lcom/android/systemui/pluginlock/PluginWallpaperManager;
.end method
