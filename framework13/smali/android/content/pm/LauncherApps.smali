.class public Landroid/content/pm/LauncherApps;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$AppUsageLimit;,
        Landroid/content/pm/LauncherApps$PinItemRequest;,
        Landroid/content/pm/LauncherApps$CallbackMessageHandler;,
        Landroid/content/pm/LauncherApps$ShortcutChangeCallbackProxy;,
        Landroid/content/pm/LauncherApps$ShortcutChangeCallback;,
        Landroid/content/pm/LauncherApps$ShortcutQuery;,
        Landroid/content/pm/LauncherApps$Callback;,
        Landroid/content/pm/LauncherApps$ShortcutCacheFlags;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONFIRM_PIN_APPWIDGET:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

.field public static final whitelist ACTION_CONFIRM_PIN_SHORTCUT:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

.field static final greylist-max-o DEBUG:Z = false

.field public static final whitelist EXTRA_PIN_ITEM_REQUEST:Ljava/lang/String; = "android.content.pm.extra.PIN_ITEM_REQUEST"

.field public static final blacklist FLAG_CACHE_BUBBLE_SHORTCUTS:I = 0x1

.field public static final blacklist FLAG_CACHE_NOTIFICATION_SHORTCUTS:I = 0x0

.field public static final blacklist FLAG_CACHE_PEOPLE_TILE_SHORTCUTS:I = 0x2

.field static final greylist-max-o TAG:Ljava/lang/String; = "LauncherApps"


# instance fields
.field private greylist-max-o mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

.field private final greylist-max-o mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherApps$CallbackMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mPm:Landroid/content/pm/PackageManager;

.field private final greylist-max-p mService:Landroid/content/pm/ILauncherApps;

.field private final blacklist mShortcutChangeCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/pm/LauncherApps$ShortcutChangeCallback;",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/pm/IShortcutChangeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$esoaznWa_yCnTX41NWDZ7y8enFU(Landroid/content/pm/LauncherApps;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->maybeUpdateDisabledMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 669
    nop

    .line 670
    const-string v0, "launcherapps"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 669
    invoke-static {v0}, Landroid/content/pm/ILauncherApps$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/LauncherApps;-><init>(Landroid/content/Context;Landroid/content/pm/ILauncherApps;)V

    .line 671
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ILauncherApps;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ILauncherApps;

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mDelegates:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    .line 1704
    new-instance v0, Landroid/content/pm/LauncherApps$1;

    invoke-direct {v0, p0}, Landroid/content/pm/LauncherApps$1;-><init>(Landroid/content/pm/LauncherApps;)V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    .line 660
    iput-object p1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 661
    iput-object p2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    .line 662
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    .line 663
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    .line 664
    return-void
.end method

.method private greylist-max-o addCallbackLocked(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1696
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V

    .line 1697
    if-nez p2, :cond_0

    .line 1698
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 1700
    :cond_0
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;-><init>(Landroid/os/Looper;Landroid/content/pm/LauncherApps$Callback;)V

    .line 1701
    .local v0, "toAdd":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1702
    return-void
.end method

.method private greylist-max-o convertToActivityList(Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 5
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 935
    .local p1, "internals":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/LauncherActivityInfoInternal;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 938
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v0, "lais":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 940
    .local v2, "internal":Landroid/content/pm/LauncherActivityInfoInternal;
    new-instance v3, Landroid/content/pm/LauncherActivityInfo;

    iget-object v4, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2, v2}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/pm/LauncherActivityInfoInternal;)V

    .line 945
    .local v3, "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    .end local v2    # "internal":Landroid/content/pm/LauncherActivityInfoInternal;
    .end local v3    # "lai":Landroid/content/pm/LauncherActivityInfo;
    goto :goto_0

    .line 947
    :cond_1
    return-object v0

    .line 936
    .end local v0    # "lais":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_2
    :goto_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method private greylist-max-o findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I
    .locals 3
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .line 1675
    if-eqz p1, :cond_2

    .line 1678
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1679
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1680
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-static {v2}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->-$$Nest$fgetmCallback(Landroid/content/pm/LauncherApps$CallbackMessageHandler;)Landroid/content/pm/LauncherApps$Callback;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1681
    return v1

    .line 1679
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1684
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1

    .line 1676
    .end local v0    # "size":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getLauncherActivityInfo(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/pm/LauncherActivityInfoInternal;)Landroid/content/pm/LauncherActivityInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "internal"    # Landroid/content/pm/LauncherActivityInfoInternal;

    .line 768
    new-instance v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/pm/LauncherActivityInfoInternal;)V

    return-object v0
.end method

.method private greylist-max-o getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1368
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1399
    const/4 v0, 0x0

    .line 1401
    .local v0, "uri":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1405
    nop

    .line 1406
    return-object v0

    .line 1403
    :catch_0
    move-exception v1

    .line 1404
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getShortcutsBlocked(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 4
    .param p1, "query"    # Landroid/content/pm/LauncherApps$ShortcutQuery;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/LauncherApps$ShortcutQuery;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1201
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1202
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 1203
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;>;"
    new-instance v1, Landroid/content/pm/LauncherApps$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/content/pm/LauncherApps$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/LauncherApps;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 1205
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/pm/ShortcutQueryWrapper;

    invoke-direct {v3, p1}, Landroid/content/pm/ShortcutQueryWrapper;-><init>(Landroid/content/pm/LauncherApps$ShortcutQuery;)V

    invoke-interface {v1, v2, v3, p2, v0}, Landroid/content/pm/ILauncherApps;->getShortcutsAsync(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V

    .line 1207
    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1210
    :catch_0
    move-exception v1

    .line 1211
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1208
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1209
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getUriShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1385
    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/LauncherApps;->getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1386
    .local v0, "uri":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1387
    return-object v1

    .line 1390
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1391
    :catch_0
    move-exception v2

    .line 1392
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LauncherApps"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-object v1
.end method

.method private blacklist loadDrawableFromFileDescriptor(Landroid/os/ParcelFileDescriptor;Z)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "adaptive"    # Z

    .line 1457
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1458
    return-object v0

    .line 1461
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1462
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 1463
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1464
    .local v2, "dr":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz p2, :cond_1

    .line 1465
    new-instance v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1475
    goto :goto_0

    .line 1474
    :catch_0
    move-exception v0

    .line 1465
    :goto_0
    return-object v3

    .line 1467
    :cond_1
    nop

    .line 1473
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1475
    goto :goto_1

    .line 1474
    :catch_1
    move-exception v0

    .line 1467
    :goto_1
    return-object v2

    .line 1470
    .end local v2    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    nop

    .line 1473
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1475
    goto :goto_2

    .line 1474
    :catch_2
    move-exception v2

    .line 1470
    :goto_2
    return-object v0

    .line 1472
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    .line 1473
    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1475
    goto :goto_3

    .line 1474
    :catch_3
    move-exception v1

    .line 1476
    :goto_3
    throw v0
.end method

.method private greylist-max-o loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "density"    # I

    .line 1525
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1526
    return-object v0

    .line 1528
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, p3}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1529
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1530
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, p2, p4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1531
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1532
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private greylist-max-o logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "target"    # Landroid/os/UserHandle;

    .line 680
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 681
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    const-string v0, "LauncherApps"

    const-string v1, "Accessing other profiles/users from managed profile is no longer allowed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    return-void
.end method

.method private greylist-max-o maybeUpdateDisabledMessage(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1148
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-nez p1, :cond_0

    .line 1149
    const/4 v0, 0x0

    return-object v0

    .line 1151
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1152
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1153
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1154
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v3

    .line 1153
    invoke-static {v2, v3}, Landroid/content/pm/ShortcutInfo;->getDisabledReasonForRestoreIssue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1155
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1156
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    .line 1151
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1159
    .end local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method private greylist-max-o removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .line 1688
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I

    move-result v0

    .line 1689
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 1690
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1692
    :cond_0
    return-void
.end method

.method private greylist startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "startActivityOptions"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .line 1611
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Landroid/content/pm/ILauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result v0

    .line 1614
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 1619
    .end local v0    # "success":Z
    nop

    .line 1620
    return-void

    .line 1615
    .restart local v0    # "success":Z
    :cond_0
    new-instance v1, Landroid/content/ActivityNotFoundException;

    const-string v2, "Shortcut could not be started"

    invoke-direct {v1, v2}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "shortcutId":Ljava/lang/String;
    .end local p3    # "sourceBounds":Landroid/graphics/Rect;
    .end local p4    # "startActivityOptions":Landroid/os/Bundle;
    .end local p5    # "userId":I
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    .end local v0    # "success":Z
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "shortcutId":Ljava/lang/String;
    .restart local p3    # "sourceBounds":Landroid/graphics/Rect;
    .restart local p4    # "startActivityOptions":Landroid/os/Bundle;
    .restart local p5    # "userId":I
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist cacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "cacheFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "I)V"
        }
    .end annotation

    .line 1285
    .local p2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1287
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1288
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1287
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/ILauncherApps;->cacheShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    nop

    .line 1292
    return-void

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 744
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "knoxActivityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-static {v1, v2, p1, p2}, Lcom/samsung/android/knox/KnoxHelper;->getActivityList(Landroid/content/Context;Landroid/content/pm/ILauncherApps;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_0

    .line 750
    return-object v0

    .line 754
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/content/pm/ILauncherApps;->getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/content/pm/LauncherApps;->convertToActivityList(Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 756
    :catch_0
    move-exception v1

    .line 757
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAllPackageInstallerSessions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 2023
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ILauncherApps;->getAllSessions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2024
    :catch_0
    move-exception v0

    .line 2025
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1093
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ILauncherApps;->getAppUsageLimit(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1059
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1060
    const-string/jumbo v0, "user"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1061
    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1063
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1064
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1065
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 1069
    return-object v0

    .line 1066
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1067
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "flags":I
    .restart local p3    # "user":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "startActivityOptions"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 786
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    const-string v0, "LauncherApps"

    const-string v1, "Only allowed for recents."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 795
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p3}, Landroid/content/pm/ILauncherApps;->getActivityLaunchIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2086
    const-string v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$PinItemRequest;

    return-object v0
.end method

.method public whitelist getProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 697
    .local v0, "result":Ljava/util/List;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    return-object v0

    .line 700
    .end local v0    # "result":Ljava/util/List;
    :cond_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShortcutBadgedIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "density"    # I

    .line 1552
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1554
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1555
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1554
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public whitelist getShortcutConfigActivityIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/IntentSender;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 973
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 974
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 973
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/ILauncherApps;->getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getShortcutConfigActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 923
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 925
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 926
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ILauncherApps;->getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/content/pm/LauncherApps;->convertToActivityList(Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getShortcutIcon(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Icon;
    .locals 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1483
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1484
    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1485
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    .line 1486
    return-object v1

    .line 1489
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1490
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 1491
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1492
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1502
    goto :goto_0

    .line 1501
    :catch_0
    move-exception v3

    .line 1492
    :goto_0
    return-object v1

    .line 1494
    :cond_1
    :try_start_2
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1500
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1502
    goto :goto_1

    .line 1501
    :catch_1
    move-exception v3

    .line 1494
    :goto_1
    return-object v1

    .line 1497
    :cond_2
    nop

    .line 1500
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1502
    goto :goto_2

    .line 1501
    :catch_2
    move-exception v3

    .line 1497
    :goto_2
    return-object v1

    .line 1499
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    .line 1500
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1502
    goto :goto_3

    .line 1501
    :catch_3
    move-exception v2

    .line 1503
    :goto_3
    throw v1

    .line 1504
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1505
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1506
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v3

    .line 1505
    invoke-direct {p0, v0, v2, v3}, Landroid/content/pm/LauncherApps;->getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1507
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 1508
    return-object v1

    .line 1510
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1511
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 1513
    :cond_5
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 1515
    .end local v0    # "uri":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1516
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 1518
    :cond_7
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "density"    # I

    .line 1427
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1429
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/LauncherApps;->loadDrawableFromFileDescriptor(Landroid/os/ParcelFileDescriptor;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1430
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1431
    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps;->getUriShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1432
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/LauncherApps;->loadDrawableFromFileDescriptor(Landroid/os/ParcelFileDescriptor;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1433
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1434
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 1435
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1434
    invoke-direct {p0, v0, v1, v2, p2}, Landroid/content/pm/LauncherApps;->loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1436
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1438
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1439
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1449
    :pswitch_0
    return-object v1

    .line 1441
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1441
    invoke-direct {p0, v1, v2, v3, p2}, Landroid/content/pm/LauncherApps;->loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1446
    :pswitch_2
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1452
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public greylist-max-o getShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1353
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1354
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    .line 1353
    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1362
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getShortcutIconResId(Landroid/content/pm/ShortcutInfo;)I
    .locals 1
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1330
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1339
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 1340
    .local v0, "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1341
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1342
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1343
    invoke-virtual {p0, v0, p3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 1345
    .local v1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v2

    :cond_0
    return v2
.end method

.method public greylist-max-o getShortcutInfo(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1222
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 1223
    .local v0, "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1224
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1225
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1226
    invoke-virtual {p0, v0, p3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 897
    invoke-direct {p0, p4}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 903
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 904
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 903
    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/ILauncherApps;->getShortcutIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3
    .param p1, "query"    # Landroid/content/pm/LauncherApps$ShortcutQuery;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/LauncherApps$ShortcutQuery;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1180
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1182
    :try_start_0
    iget v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mQueryFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    .line 1183
    invoke-direct {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcutsBlocked(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1191
    :cond_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ShortcutQueryWrapper;

    invoke-direct {v2, p1}, Landroid/content/pm/ShortcutQueryWrapper;-><init>(Landroid/content/pm/LauncherApps$ShortcutQuery;)V

    invoke-interface {v0, v1, v2, p2}, Landroid/content/pm/ILauncherApps;->getShortcuts(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1193
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1191
    invoke-direct {p0, v0}, Landroid/content/pm/LauncherApps;->maybeUpdateDisabledMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1017
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1019
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/ILauncherApps;->getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUriShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1380
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/LauncherApps;->getUriShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasShortcutHostPermission()Z
    .locals 2

    .line 1141
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ILauncherApps;->hasShortcutHostPermission(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1111
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1113
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ILauncherApps;->isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 989
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 991
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ILauncherApps;->isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 1248
    .local p2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1250
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    nop

    .line 1254
    return-void

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .line 1628
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    .line 1629
    return-void
.end method

.method public whitelist registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1638
    monitor-enter p0

    .line 1639
    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1640
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1641
    .local v0, "addedFirstCallback":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/LauncherApps;->addCallbackLocked(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1642
    if-eqz v0, :cond_1

    .line 1644
    :try_start_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    invoke-interface {v1, v2, v3}, Landroid/content/pm/ILauncherApps;->addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1648
    goto :goto_1

    .line 1646
    :catch_0
    move-exception v1

    .line 1647
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "callback":Landroid/content/pm/LauncherApps$Callback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 1651
    .end local v0    # "addedFirstCallback":Z
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "callback":Landroid/content/pm/LauncherApps$Callback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_1
    monitor-exit p0

    .line 1652
    return-void

    .line 1651
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist registerPackageInstallerSessionCallback(Ljava/util/concurrent/Executor;Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1978
    if-eqz p1, :cond_0

    .line 1982
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mDelegates:Ljava/util/List;

    monitor-enter v0

    .line 1983
    :try_start_0
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    invoke-direct {v1, p2, p1}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;-><init>(Landroid/content/pm/PackageInstaller$SessionCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    .local v1, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/pm/ILauncherApps;->registerPackageInstallerCallback(Ljava/lang/String;Landroid/content/pm/IPackageInstallerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1990
    nop

    .line 1991
    :try_start_2
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mDelegates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1992
    nop

    .end local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    monitor-exit v0

    .line 1993
    return-void

    .line 1988
    .restart local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :catch_0
    move-exception v2

    .line 1989
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    throw v3

    .line 1992
    .end local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1979
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;Landroid/content/pm/LauncherApps$ShortcutQuery;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$ShortcutChangeCallback;
    .param p2, "query"    # Landroid/content/pm/LauncherApps$ShortcutQuery;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 2042
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2043
    const-string v0, "Query cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2044
    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2046
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 2047
    :try_start_0
    new-instance v1, Landroid/content/pm/LauncherApps$ShortcutChangeCallbackProxy;

    invoke-direct {v1, p3, p1}, Landroid/content/pm/LauncherApps$ShortcutChangeCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V

    .line 2048
    .local v1, "proxy":Landroid/content/pm/IShortcutChangeCallback;
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    :try_start_1
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/pm/ShortcutQueryWrapper;

    invoke-direct {v4, p2}, Landroid/content/pm/ShortcutQueryWrapper;-><init>(Landroid/content/pm/LauncherApps$ShortcutQuery;)V

    invoke-interface {v2, v3, v4, v1}, Landroid/content/pm/ILauncherApps;->registerShortcutChangeCallback(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/content/pm/IShortcutChangeCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2054
    nop

    .line 2055
    .end local v1    # "proxy":Landroid/content/pm/IShortcutChangeCallback;
    :try_start_2
    monitor-exit v0

    .line 2056
    return-void

    .line 2052
    .restart local v1    # "proxy":Landroid/content/pm/IShortcutChangeCallback;
    :catch_0
    move-exception v2

    .line 2053
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "callback":Landroid/content/pm/LauncherApps$ShortcutChangeCallback;
    .end local p2    # "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    throw v3

    .line 2055
    .end local v1    # "proxy":Landroid/content/pm/IShortcutChangeCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "callback":Landroid/content/pm/LauncherApps$ShortcutChangeCallback;
    .restart local p2    # "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 810
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 812
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 813
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 812
    invoke-interface {v0, v1, v2, p2}, Landroid/content/pm/ILauncherApps;->resolveLauncherActivityInternal(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;

    move-result-object v0

    .line 814
    .local v0, "ai":Landroid/content/pm/LauncherActivityInfoInternal;
    if-nez v0, :cond_0

    .line 815
    const/4 v1, 0x0

    return-object v1

    .line 817
    :cond_0
    new-instance v1, Landroid/content/pm/LauncherActivityInfo;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/pm/LauncherActivityInfoInternal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 818
    .end local v0    # "ai":Landroid/content/pm/LauncherActivityInfoInternal;
    :catch_0
    move-exception v0

    .line 819
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1036
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1037
    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1039
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/ILauncherApps;->shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    .line 875
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 877
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 878
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 877
    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Landroid/content/pm/ILauncherApps;->showAppDetailsAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    nop

    .line 883
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    .line 833
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 838
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 839
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 838
    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Landroid/content/pm/ILauncherApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    nop

    .line 844
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startPackageInstallerSessionDetailsActivity(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 856
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 857
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 858
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    .line 856
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v7}, Landroid/content/pm/ILauncherApps;->startSessionDetailsActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    nop

    .line 862
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "startActivityOptions"    # Landroid/os/Bundle;

    .line 1601
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1603
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    .line 1601
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V

    .line 1604
    return-void
.end method

.method public whitelist startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "startActivityOptions"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 1578
    invoke-direct {p0, p5}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1580
    nop

    .line 1581
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1580
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V

    .line 1582
    return-void
.end method

.method public blacklist uncacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "cacheFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "I)V"
        }
    .end annotation

    .line 1316
    .local p2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1318
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1319
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1318
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/ILauncherApps;->uncacheShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    nop

    .line 1323
    return-void

    .line 1320
    :catch_0
    move-exception v0

    .line 1321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .line 1661
    monitor-enter p0

    .line 1662
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V

    .line 1663
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1665
    :try_start_1
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    invoke-interface {v0, v1}, Landroid/content/pm/ILauncherApps;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1668
    goto :goto_0

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "callback":Landroid/content/pm/LauncherApps$Callback;
    throw v1

    .line 1670
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "callback":Landroid/content/pm/LauncherApps$Callback;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1671
    return-void

    .line 1670
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist unregisterPackageInstallerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 2002
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mDelegates:Ljava/util/List;

    monitor-enter v0

    .line 2003
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mDelegates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2004
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    .line 2005
    .local v2, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    iget-object v3, v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    if-ne v3, p1, :cond_0

    .line 2006
    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 2007
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2009
    .end local v2    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :cond_0
    goto :goto_0

    .line 2010
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :cond_1
    monitor-exit v0

    .line 2011
    return-void

    .line 2010
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unregisterShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    .line 2067
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2069
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 2070
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2071
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/IShortcutChangeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2073
    .local v1, "proxy":Landroid/content/pm/IShortcutChangeCallback;
    :try_start_1
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/pm/ILauncherApps;->unregisterShortcutChangeCallback(Ljava/lang/String;Landroid/content/pm/IShortcutChangeCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2076
    goto :goto_0

    .line 2074
    :catch_0
    move-exception v2

    .line 2075
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "callback":Landroid/content/pm/LauncherApps$ShortcutChangeCallback;
    throw v3

    .line 2078
    .end local v1    # "proxy":Landroid/content/pm/IShortcutChangeCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "callback":Landroid/content/pm/LauncherApps$ShortcutChangeCallback;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 2079
    return-void

    .line 2078
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
