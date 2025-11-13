.class public final Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;

.field public final mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mConnectionCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;

.field public final mContext:Landroid/content/Context;

.field public final mLogger:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;

.field public mMediaBrowser:Landroid/media/browse/MediaBrowser;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaControllerCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;

.field public final mSubscriptionCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;-><init>(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;I)V

    iput-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaControllerCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;

    new-instance v0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;-><init>(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V

    iput-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mSubscriptionCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;

    new-instance v0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;-><init>(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V

    iput-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mConnectionCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;

    iput-object p5, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;

    iput p6, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mUserId:I

    return-void
.end method


# virtual methods
.method public final connectBrowser(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger$logConnection$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger$logConnection$2;

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v5, "MediaBrowser"

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->disconnect()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p1}, Landroid/media/browse/MediaBrowser;->connect()V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->updateMediaController()V

    return-void
.end method

.method public createMediaController(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;
    .locals 1

    new-instance v0, Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method

.method public final disconnect()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger$logDisconnect$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger$logDisconnect$2;

    const-string v5, "MediaBrowser"

    iget-object v2, v2, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->updateMediaController()V

    return-void
.end method

.method public final isBrowserConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateMediaController()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->isBrowserConnected()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaController:Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaControllerCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$SessionDestroyCallback;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->createMediaController(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0, v3}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_2

    :cond_6
    iput-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaController:Landroid/media/session/MediaController;

    :goto_2
    return-void
.end method
