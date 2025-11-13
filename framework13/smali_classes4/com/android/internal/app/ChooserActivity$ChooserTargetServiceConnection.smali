.class Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChooserTargetServiceConnection"
.end annotation


# instance fields
.field private blacklist mChooserActivity:Lcom/android/internal/app/ChooserActivity;

.field private final blacklist mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

.field private blacklist mConnectedComponent:Landroid/content/ComponentName;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChooserActivity(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectedComponent(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "chooserActivity"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 7287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7263
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    .line 7265
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    .line 7288
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    .line 7289
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 7290
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mUserHandle:Landroid/os/UserHandle;

    .line 7291
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .locals 2

    .line 7357
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7358
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    .line 7359
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 7360
    monitor-exit v0

    .line 7361
    return-void

    .line 7360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 7373
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 7295
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7296
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7297
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    if-nez v1, :cond_0

    .line 7298
    const-string v1, "ChooserActivity"

    const-string v2, "destroyed ChooserTargetServiceConnection got onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7299
    monitor-exit v0

    return-void

    .line 7302
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v1, :cond_1

    const-string v1, "com.samsung.android.app.sharelive"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7303
    invoke-static {p2}, Landroid/service/chooser/IChooserTargetService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmIctsForDevice(Landroid/service/chooser/IChooserTargetService;)V

    .line 7304
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected: mIctsForDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmIctsForDevice()Landroid/service/chooser/IChooserTargetService;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7306
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmDeviceResolvedCn(Landroid/content/ComponentName;)V

    .line 7307
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmDeviceIntentFilter(Landroid/content/IntentFilter;)V

    .line 7308
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmChooserTargetResultForDevice(Landroid/service/chooser/IChooserTargetResult;)V

    .line 7309
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmIctsForDevice()Landroid/service/chooser/IChooserTargetService;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmDeviceResolvedCn()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmDeviceIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfgetmChooserTargetResultForDevice()Landroid/service/chooser/IChooserTargetResult;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/service/chooser/IChooserTargetService;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7320
    :goto_0
    goto/16 :goto_1

    .line 7311
    :catch_0
    move-exception v1

    .line 7312
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "ChooserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Querying ChooserTargetService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7313
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 7314
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7315
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 7316
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmIctsForDevice(Landroid/service/chooser/IChooserTargetService;)V

    .line 7317
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmDeviceResolvedCn(Landroid/content/ComponentName;)V

    .line 7318
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmDeviceIntentFilter(Landroid/content/IntentFilter;)V

    .line 7319
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$sfputmChooserTargetResultForDevice(Landroid/service/chooser/IChooserTargetResult;)V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 7322
    :cond_1
    invoke-static {p2}, Landroid/service/chooser/IChooserTargetService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetService;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7324
    .local v1, "icts":Landroid/service/chooser/IChooserTargetService;
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 7325
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    .line 7324
    invoke-interface {v1, v2, v3, v4}, Landroid/service/chooser/IChooserTargetService;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7331
    goto :goto_1

    .line 7326
    :catch_1
    move-exception v2

    .line 7327
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "ChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Querying ChooserTargetService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7328
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 7329
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7330
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 7333
    .end local v1    # "icts":Landroid/service/chooser/IChooserTargetService;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 7334
    return-void

    .line 7333
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 7338
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7339
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7340
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    if-nez v1, :cond_0

    .line 7341
    const-string v1, "ChooserActivity"

    const-string v2, "destroyed ChooserTargetServiceConnection got onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7343
    monitor-exit v0

    return-void

    .line 7346
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 7347
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7348
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7349
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 7351
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    .line 7352
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 7353
    monitor-exit v0

    .line 7354
    return-void

    .line 7353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 7365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooserTargetServiceConnection{service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7367
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_0

    .line 7368
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7369
    :cond_0
    const-string v1, "<connection destroyed>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7365
    return-object v0
.end method
