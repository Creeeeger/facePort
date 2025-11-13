.class final Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
.super Ljava/lang/Object;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mSession:Landroid/media/tv/ad/TvAdManager$Session;

.field private final blacklist mSessionCallback:Landroid/media/tv/ad/TvAdManager$SessionCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$Session;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$SessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/ad/TvAdManager$SessionCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/ad/TvAdManager$SessionCallback;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method blacklist postLayoutSurface(IIII)V
    .locals 8

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$3;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;IIII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postRequestCurrentChannelUri()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$5;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$5;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postRequestCurrentTvInputId()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$7;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$7;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postRequestCurrentVideoBounds()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$4;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$4;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postRequestTrackInfoList()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$6;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$6;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postSessionCreated(Landroid/media/tv/ad/TvAdManager$Session;)V
    .locals 2

    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$1;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;Landroid/media/tv/ad/TvAdManager$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postSessionReleased()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$2;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$2;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$9;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$9;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
