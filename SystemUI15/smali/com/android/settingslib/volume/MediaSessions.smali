.class public final Lcom/android/settingslib/volume/MediaSessions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public mInit:Z

.field public final mMgr:Landroid/media/session/MediaSessionManager;

.field public final mRecords:Ljava/util/Map;

.field public final mRemoteSessionCallback:Lcom/android/settingslib/volume/MediaSessions$2;

.field public final mSessionsListener:Lcom/android/settingslib/volume/MediaSessions$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MediaSessions"

    const-string/jumbo v1, "vol."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    new-instance v0, Lcom/android/settingslib/volume/MediaSessions$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/volume/MediaSessions$1;-><init>(Lcom/android/settingslib/volume/MediaSessions;)V

    iput-object v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mSessionsListener:Lcom/android/settingslib/volume/MediaSessions$1;

    new-instance v0, Lcom/android/settingslib/volume/MediaSessions$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/volume/MediaSessions$2;-><init>(Lcom/android/settingslib/volume/MediaSessions;)V

    iput-object v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mRemoteSessionCallback:Lcom/android/settingslib/volume/MediaSessions$2;

    iput-object p1, p0, Lcom/android/settingslib/volume/MediaSessions;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settingslib/volume/MediaSessions$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/settingslib/volume/MediaSessions$H;-><init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    const-string p2, "media_session"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/android/settingslib/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    iput-object p3, p0, Lcom/android/settingslib/volume/MediaSessions;->mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 4

    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/settingslib/volume/MediaSessions;->mSessionsListener:Lcom/android/settingslib/volume/MediaSessions$1;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mInit:Z

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mRemoteSessionCallback:Lcom/android/settingslib/volume/MediaSessions$2;

    invoke-virtual {v0, v1, p0}, Landroid/media/session/MediaSessionManager;->registerRemoteSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$RemoteSessionCallback;)V

    return-void
.end method

.method public final onActiveSessionsUpdatedH(Ljava/util/List;)V
    .locals 9

    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    sget-object v1, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onActiveSessionsUpdatedH n="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v5

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;-><init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/media/session/MediaController;I)V

    iget-object v7, p0, Lcom/android/settingslib/volume/MediaSessions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    invoke-virtual {v7, v8, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v7, ""

    invoke-static {v3, v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v7, :cond_2

    move-object v8, v3

    :catch_0
    :cond_2
    iput-object v8, v6, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    invoke-virtual {v2, v6, v3}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    iget-object v3, v2, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->name:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/settingslib/volume/MediaSessions;->updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    iget-object v2, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;

    iget-object v4, v2, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v4, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v4, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/android/settingslib/volume/D;->BUG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sentRemote="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    invoke-static {v4, v5, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_6
    iget-boolean v4, v2, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settingslib/volume/MediaSessions;->mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;

    check-cast v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-virtual {v4, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V

    iput-boolean v3, v2, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    goto :goto_1

    :cond_7
    return-void
.end method

.method public final updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 10

    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;

    if-eqz p0, :cond_a

    check-cast p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->showForSession(Landroid/media/session/MediaSession$Token;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "onRemoteUpdate"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->addStream(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onRemoteUpdate: stream: "

    const-string v2, " volume: "

    invoke-static {v4, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0, v4, p3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-$$Nest$mupdateRemoteFixedVolumeSession(Lcom/android/systemui/volume/VolumeDialogControllerImpl;ILandroid/media/session/MediaController$PlaybackInfo;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRouter2Manager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    move-result-object v3

    const-string v5, "android.media.route.feature.LOCAL_PLAYBACK"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    move-result-object v2

    const-string v5, "android.media.route.feature.REMOTE_PLAYBACK"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.media.route.feature.REMOTE_AUDIO_PLAYBACK"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    iget-boolean v5, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteSpeaker:Z

    if-ne v5, v2, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteSpeaker:Z

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateStreamRoutedToRemoteSpeaker stream="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " remoteSpeaker="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_6

    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v2, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iput-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    iput v0, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v5

    iput v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    iget v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v6

    if-eq v5, v6, :cond_7

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result p3

    iput p3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move v1, v3

    :cond_7
    iget-object p3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    invoke-static {p3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    const/4 p3, -0x1

    iput p3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    iput-object p2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    move v1, v3

    :cond_8
    if-eqz v1, :cond_a

    sget-object p3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onRemoteUpdate: "

    const-string v5, ": "

    invoke-static {v1, p2, v5}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    invoke-static {v1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p2, p2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p2, p2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-lez p2, :cond_9

    goto :goto_4

    :cond_9
    move v3, v0

    :goto_4
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p2, p2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iget v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget-boolean v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteSpeaker:Z

    move-object v2, p2

    move-object v8, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->updateRemoteVolume(ZIIIILandroid/media/session/MediaSession$Token;Z)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    :goto_5
    return-void
.end method
