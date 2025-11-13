.class public final Lcom/android/wm/shell/common/pip/PipMediaController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActionListeners:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public mLastLocale:Ljava/util/Locale;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMediaActionReceiver:Lcom/android/wm/shell/common/pip/PipMediaController$mMediaActionReceiver$1;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public final mMetadataListeners:Ljava/util/ArrayList;

.field public mNextAction:Landroid/app/RemoteAction;

.field public mPauseAction:Landroid/app/RemoteAction;

.field public mPlayAction:Landroid/app/RemoteAction;

.field public final mPlaybackChangedListener:Lcom/android/wm/shell/common/pip/PipMediaController$mPlaybackChangedListener$1;

.field public mPrevAction:Landroid/app/RemoteAction;

.field public final mSessionsChangedListener:Lcom/android/wm/shell/common/pip/PipMediaController$mSessionsChangedListener$1;

.field public final mTokenListeners:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/common/pip/PipMediaController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/pip/PipMediaController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    new-instance v2, Lcom/android/wm/shell/common/pip/PipMediaController$mMediaActionReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/common/pip/PipMediaController$mMediaActionReceiver$1;-><init>(Lcom/android/wm/shell/common/pip/PipMediaController;)V

    new-instance v0, Lcom/android/wm/shell/common/pip/PipMediaController$mPlaybackChangedListener$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/pip/PipMediaController$mPlaybackChangedListener$1;-><init>(Lcom/android/wm/shell/common/pip/PipMediaController;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPlaybackChangedListener:Lcom/android/wm/shell/common/pip/PipMediaController$mPlaybackChangedListener$1;

    new-instance v0, Lcom/android/wm/shell/common/pip/PipMediaController$mSessionsChangedListener$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/pip/PipMediaController$mSessionsChangedListener$1;-><init>(Lcom/android/wm/shell/common/pip/PipMediaController;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mSessionsChangedListener:Lcom/android/wm/shell/common/pip/PipMediaController$mSessionsChangedListener$1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mTokenListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.wm.shell.pip.PLAY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.android.wm.shell.pip.PAUSE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "com.android.wm.shell.pip.NEXT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.android.wm.shell.pip.PREV"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.systemui.permission.SELF"

    const/4 v6, 0x2

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const p2, 0x7f130dbd

    const v1, 0x7f080db9

    invoke-virtual {p0, p2, v1, v7}, Lcom/android/wm/shell/common/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    const p2, 0x7f130dc4

    const v1, 0x7f080dba

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/wm/shell/common/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    const p2, 0x7f130dc6

    const v0, 0x7f080dbc

    invoke-virtual {p0, p2, v0, v8}, Lcom/android/wm/shell/common/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    const p2, 0x7f130dc7

    const v0, 0x7f080dbd

    invoke-virtual {p0, p2, v0, v9}, Lcom/android/wm/shell/common/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mLastLocale:Ljava/util/Locale;

    const-class p2, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-void
.end method


# virtual methods
.method public final getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p3, Landroid/app/RemoteAction;

    iget-object v1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {p3, p2, p1, p1, p0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object p3
.end method

.method public final getMediaActions()Ljava/util/List;
    .locals 12

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    const-string v1, "PipTaskOrganizer"

    if-nez v0, :cond_0

    sget p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const/4 p0, 0x7

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[PipMediaController] getMediaActions : emptyList, mMediaController=null caller="

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result v3

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "[PipMediaController] getMediaActions , isPlaying="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " actions="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v6, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mLastLocale:Ljava/util/Locale;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mLastLocale:Ljava/util/Locale;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[PipMediaController] recreate default actions last="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "cur="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mLastLocale:Ljava/util/Locale;

    const-string v0, "com.android.wm.shell.pip.PAUSE"

    const v1, 0x7f130dbd

    const v6, 0x7f080db9

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/wm/shell/common/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    const-string v0, "com.android.wm.shell.pip.PLAY"

    const v1, 0x7f130dc4

    const v6, 0x7f080dba

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/wm/shell/common/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    const-string v0, "com.android.wm.shell.pip.NEXT"

    const v1, 0x7f130dc6

    const v6, 0x7f080dbc

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/wm/shell/common/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    const-string v0, "com.android.wm.shell.pip.PREV"

    const v1, 0x7f130dc7

    const v6, 0x7f080dbd

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/wm/shell/common/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    const-wide/16 v6, 0x10

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_0

    :cond_3
    move v1, v6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_4

    const-wide/16 v0, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    const-wide/16 v0, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    const-wide/16 v10, 0x20

    and-long v3, v4, v10

    cmp-long v1, v3, v8

    if-eqz v1, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {v0, v6}, Landroid/app/RemoteAction;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public final resolveActiveMediaController(Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/common/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/common/pip/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public final setActiveMediaController(Landroid/media/session/MediaController;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mPlaybackChangedListener:Lcom/android/wm/shell/common/pip/PipMediaController$mPlaybackChangedListener$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/common/pip/PipMediaController$notifyActionsChanged$1;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/common/pip/PipMediaController$notifyActionsChanged$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/common/pip/PipMediaController$notifyMetadataChanged$1;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/common/pip/PipMediaController$notifyMetadataChanged$1;-><init>(Landroid/media/MediaMetadata;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mTokenListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mTokenListeners:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/wm/shell/common/pip/PipMediaController$notifyTokenChanged$1;

    invoke-direct {p1, v0}, Lcom/android/wm/shell/common/pip/PipMediaController$notifyTokenChanged$1;-><init>(Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    return-void
.end method
