.class public Landroid/window/WindowTokenClient;
.super Landroid/app/IWindowToken$Stub;
.source "WindowTokenClient.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAttachToWindowContainer:Z

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mResourcesManager:Landroid/app/ResourcesManager;

.field private blacklist mShouldDumpConfigForIme:Z

.field private blacklist mWms:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$I5OMsDS9iNEE-FDunNhBpT9eO-c(Landroid/window/WindowTokenClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/window/WindowTokenClient;->onWindowTokenRemovedInner()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 69
    const-class v0, Landroid/window/WindowTokenClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/app/IWindowToken$Stub;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 77
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 81
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    .line 88
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist getWindowManagerService()Landroid/view/IWindowManager;
    .locals 2

    .line 185
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    if-nez v0, :cond_1

    .line 187
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 188
    nop

    .line 189
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    .line 190
    return-object v0

    .line 193
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    .line 195
    :cond_1
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mWms:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private blacklist onWindowTokenRemovedInner()V
    .locals 2

    .line 317
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 318
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/content/Context;->destroy()V

    .line 320
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist attachContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 105
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/inputmethodservice/AbstractInputMethodService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    .line 107
    return-void

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context is already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist attachToDisplayArea(IILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "displayId"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 120
    :try_start_0
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 121
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/view/IWindowManager;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 122
    .local v0, "configuration":Landroid/content/res/Configuration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    return v1

    .line 125
    :cond_0
    invoke-virtual {p0, v0, p2, v1}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return v1

    .line 128
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist attachToDisplayContent(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 140
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 142
    .local v0, "wms":Landroid/view/IWindowManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 143
    return v1

    .line 146
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 147
    .local v2, "configuration":Landroid/content/res/Configuration;
    if-nez v2, :cond_1

    .line 148
    return v1

    .line 150
    :cond_1
    invoke-virtual {p0, v2, p1, v1}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    return v1

    .line 153
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist attachToWindowToken(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 165
    :try_start_0
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    nop

    .line 170
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist detachFromWindowContainerIfNeeded()V
    .locals 2

    .line 174
    iget-boolean v0, p0, Landroid/window/WindowTokenClient;->mAttachToWindowContainer:Z

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/window/WindowTokenClient;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    nop

    .line 182
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I

    .line 209
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    .line 210
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged, displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    .line 212
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    .line 216
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowTokenClient;)V

    .line 221
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 220
    invoke-static {v2, p1, v3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 221
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;IZ)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I
    .param p3, "shouldReportConfigChange"    # Z

    .line 247
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 248
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 249
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    monitor-enter v1

    .line 257
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-static {v2, p2}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v2

    .line 258
    .local v2, "displayChanged":Z
    iget-object v4, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p1

    move v7, v2

    invoke-static/range {v3 .. v8}, Landroid/window/ConfigurationHelper;->shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z

    move-result v3

    .line 261
    .local v3, "shouldUpdateResources":Z
    iget-object v4, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v4

    .line 262
    .local v4, "diff":I
    iget-boolean v5, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v5, :cond_1

    new-instance v5, Landroid/content/res/Configuration;

    iget-object v6, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 263
    .local v5, "currentConfig":Landroid/content/res/Configuration;
    :goto_0
    if-eqz v3, :cond_2

    .line 264
    iget-object v6, p0, Landroid/window/WindowTokenClient;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 266
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    if-nez v3, :cond_3

    iget-boolean v1, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v1, :cond_3

    .line 269
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration not dispatch to IME because configuration is up to date. Current config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 270
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reported config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_3
    if-eqz v3, :cond_7

    .line 276
    iget-object v1, p0, Landroid/window/WindowTokenClient;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v1, p0, p1, p2}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 278
    if-eqz p3, :cond_4

    instance-of v1, v0, Landroid/window/WindowContext;

    if-eqz v1, :cond_4

    .line 279
    move-object v1, v0

    check-cast v1, Landroid/window/WindowContext;

    .line 280
    .local v1, "windowContext":Landroid/window/WindowContext;
    invoke-virtual {v1, p1}, Landroid/window/WindowContext;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    .end local v1    # "windowContext":Landroid/window/WindowContext;
    :cond_4
    if-eqz p3, :cond_5

    if-eqz v4, :cond_5

    instance-of v1, v0, Landroid/window/WindowProviderService;

    if-eqz v1, :cond_5

    .line 286
    move-object v1, v0

    check-cast v1, Landroid/window/WindowProviderService;

    .line 287
    .local v1, "windowProviderService":Landroid/window/WindowProviderService;
    invoke-virtual {v1, p1}, Landroid/window/WindowProviderService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 289
    .end local v1    # "windowProviderService":Landroid/window/WindowProviderService;
    :cond_5
    invoke-static {v4}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 290
    iget-boolean v1, p0, Landroid/window/WindowTokenClient;->mShouldDumpConfigForIme:Z

    if-eqz v1, :cond_7

    .line 291
    if-nez p3, :cond_6

    .line 292
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Only apply configuration update to Resources because shouldReportConfigChange is false.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    .line 293
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 292
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    :cond_6
    if-nez v4, :cond_7

    .line 295
    sget-object v1, Landroid/window/WindowTokenClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration not dispatch to IME because configuration has no  public difference with updated config.  Current config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 297
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reported config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    .line 304
    invoke-virtual {v0, p2}, Landroid/content/Context;->updateDisplay(I)V

    .line 306
    :cond_8
    return-void

    .line 266
    .end local v2    # "displayChanged":Z
    .end local v3    # "shouldUpdateResources":Z
    .end local v4    # "diff":I
    .end local v5    # "currentConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist onWindowTokenRemoved()V
    .locals 2

    .line 311
    iget-object v0, p0, Landroid/window/WindowTokenClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/window/WindowTokenClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 312
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    return-void
.end method
