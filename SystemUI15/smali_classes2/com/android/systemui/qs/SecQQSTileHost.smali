.class public final Lcom/android/systemui/qs/SecQQSTileHost;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/QSHost$Callback;


# static fields
.field public static final DEBUG:Z

.field public static final LOGGING_DEBUG:Z


# instance fields
.field public mBnRQQSTileList:Ljava/lang/String;

.field public final mCallbacks:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public final mEditor:Landroid/content/SharedPreferences$Editor;

.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public final mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

.field public mQSUserChanged:Z

.field public final mTileSpecs:Ljava/util/ArrayList;

.field public final mTileUsingByQQS:Ljava/lang/Object;

.field public final mTiles:Ljava/util/LinkedHashMap;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SecQQSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/SecQQSTileHost;->DEBUG:Z

    const-string v0, "SA_QUICK_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/SecQQSTileHost;->LOGGING_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/BootAnimationFinishedCache;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mCallbacks:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTileUsingByQQS:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSUserChanged:Z

    iput-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p3, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p6, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object p2, p2, Lcom/android/systemui/qs/QSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p2, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "SecQQSTileHost"

    const-string p1, "OPS not initialized for non-primary user, just return"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p2, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p5}, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecQQSTileHost;Ljava/util/concurrent/Executor;)V

    check-cast p4, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    invoke-virtual {p4, p2}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    const-string p2, "quick_pref"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final changeTiles(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeTiles "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQQSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    const-string/jumbo v1, "sysui_quick_qs_tiles"

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final filterAvailableTopTiles(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQsTileMinNum(Landroid/content/Context;)I

    move-result v1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_9

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v5, v4}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v6, "custom("

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object v4, v6

    :cond_4
    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v4, v5, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/qs/SecAutoTileManager;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/SecAutoTileManager;->isRemovedTileByAppIntent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    return-object v0
.end method

.method public final getQQSDefaultTileList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getSupportedAllTileList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQQSTileHost;->filterAvailableTopTiles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getQQSDefaultTileList result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQQSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    const-string v2, ","

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    :goto_0
    if-ge v1, p2, :cond_6

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    const-string/jumbo v4, "sysui_quick_qs_tiles"

    invoke-static {p2, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "SecQQSTileHost"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda5;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "loadQQSTileSpecs subTile list is already set as "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQQSTileHost;->getQQSDefaultTileList()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v5, p2

    :goto_3
    if-ge v1, v5, :cond_5

    aget-object v6, p2, v1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "loadQQSTileSpecs mUserTracker.getUserId():"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "loadQQSTileSpecs qqsTiles : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-static {p0, v4, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_6
    :goto_4
    return-object p1
.end method

.method public final onTilesChanged()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSHost$Callback;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost$Callback;->onTilesChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string/jumbo v0, "sysui_quick_qs_tiles"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Recreating QQS tiles  "

    const-string v0, "SecQQSTileHost"

    invoke-static {p1, p2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/SecQQSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "loaded tiles :"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mCurrentUser:I

    if-ne p2, v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mCurrentUser:I

    if-eq p2, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSUserChanged:Z

    if-nez v1, :cond_2

    const-string p0, "Delay recreating tiles until QS userContext change is completed"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSUserChanged:Z

    iget-object v2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda4;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v6, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTileUsingByQQS:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    iget-object v8, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    if-eqz v5, :cond_8

    instance-of v9, v5, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v9, :cond_4

    move-object v10, v5

    check-cast v10, Lcom/android/systemui/qs/external/CustomTile;

    iget v10, v10, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    if-ne v10, p2, :cond_8

    :cond_4
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_7

    sget-boolean v6, Lcom/android/systemui/qs/SecQQSTileHost;->DEBUG:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    if-nez v9, :cond_6

    iget v6, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mCurrentUser:I

    if-eq v6, p2, :cond_6

    invoke-interface {v5, p2}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    :cond_6
    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Tile not available at QQS"

    invoke-virtual {v8, v4, v5}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Destroying not available tile: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    if-eqz v5, :cond_9

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Tile for wrong user at QQS"

    invoke-virtual {v8, v4, v5}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Destroying tile for wrong user: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v5, "Creating tile: "

    invoke-static {v5, v4, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v7, v6, v4}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->requestTileUsing(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error creating tile for spec: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_a
    iput p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mCurrentUser:I

    iget-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQQSTileHost;->onTilesChanged()V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p2, p1, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_b

    iget-object p1, p1, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSHost$Callback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost$Callback;->onTilesChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/SecQQSTileHost$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecQQSTileHost;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final restoreQQSTileListIfNeeded(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "restoreQQSTileListIfNeeded : qsTileList = "

    const-string v1, "SecQQSTileHost"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    iget-object v2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    const-string/jumbo v3, "sysui_quick_qs_tiles"

    iget-object v4, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v5

    invoke-static {p1, v3, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v5

    const-string/jumbo v6, "sysui_qs_tiles"

    invoke-static {p1, v6, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileListToNewOsTileList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "restoreQQSTileList from QS "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQQSTileHost;->filterAvailableTopTiles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-static {p0, v3, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    iput-boolean p0, v2, Lcom/android/systemui/qs/QSTileHost;->mIsQQSosUpdating:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileListToNewOsTileList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQQSTileHost;->filterAvailableTopTiles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "restoreQQSTileListIfNeeded : tilesList = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-static {p0, v3, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final setRestoreData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "SecQQSTileHost"

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "qqs_has_edited"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "QQsHasEditedQuickTileList"

    invoke-static {p0, v1, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo p0, "setRestoreData  hasEdited="

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iput-object p2, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mBnRQQSTileList:Ljava/lang/String;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p2, v3

    const-string v5, "custom("

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileHost;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2, v4, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {v2, v4, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    sget-boolean p1, Lcom/android/systemui/qs/SecQQSTileHost;->DEBUG:Z

    if-eqz p1, :cond_6

    const-string/jumbo p1, "setRestoreData  QQS_TILES_SETTING="

    invoke-static {p1, v2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQQSTileHost;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    const-string/jumbo p2, "sysui_quick_qs_tiles"

    invoke-static {p1, p2, v2, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string/jumbo p0, "tag or restoreData is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
