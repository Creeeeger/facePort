.class Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;
.super Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
.source "TvInteractiveAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field final blacklist mIAppServiceId:Ljava/lang/String;

.field blacklist mType:I

.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppView;


# direct methods
.method public static synthetic blacklist $r8$lambda$2ed9PMbgJHEuwDK7effeHsRbUTo(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestSelectedTrackInfo$10()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6cBpPyNIMNK_VMtJubf0InzJBoI(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestCurrentVideoBounds$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7kC_SSFkTiwqHnw4vHJZ_fzKQ_I(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestStreamVolume$8()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A6jV9lrppdFzPCIKqfTz4Ibo1bs(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestCurrentChannelLcn$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CasaKfbCXk_M9oBdSGD9RhyYZuo(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onTimeShiftCommandRequest$1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UoU3sVPPvgpfUbyRq2ffE7G9Dvk(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestTrackInfoList$9()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VTJ9EMZ6dqe8sCsIfE3N0_MLzA4(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onCommandRequest$0(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$__orhQagUlu_v4MIyZLZGaw4z0c(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onSetVideoBounds$4(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jvv68SBc9noi6CDmpdGtUbNuqag(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onBiInteractiveAppCreated$3(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$s7FXIGqCAcSVC7hAR-sNlSpl43Q(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onSessionStateChanged$2(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yvPeoUSvl77hD1A6Ki-pJ-HkOVQ(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestCurrentChannelUri$6()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppView;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;-><init>()V

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mType:I

    return-void
.end method

.method private synthetic blacklist lambda$onBiInteractiveAppCreated$3(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onBiInteractiveAppCreated(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onCommandRequest$0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onPlaybackCommandRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestCurrentChannelLcn$7()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentChannelLcn(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestCurrentChannelUri$6()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentChannelUri(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestCurrentVideoBounds$5()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentVideoBounds(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestSelectedTrackInfo$10()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestSelectedTrackInfo(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestStreamVolume$8()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestStreamVolume(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestTrackInfoList$9()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestTrackInfoList(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onSessionStateChanged$2(II)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onStateChanged(Ljava/lang/String;II)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onSetVideoBounds$4(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onSetVideoBounds(Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onTimeShiftCommandRequest$1(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onTimeShiftCommandRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist onBiInteractiveAppCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onBiInteractiveAppCreated - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda10;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onCommandRequest(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onCommandRequest - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onLayoutSurface(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;IIII)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onLayoutSurface - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p3}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewTop(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p4}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewRight(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p5}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->requestLayout()V

    return-void
.end method

.method public blacklist onRequestAvailableSpeeds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestAvailableSpeeds - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestAvailableSpeeds(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestCertificate(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestCertificate - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->tiafVApis()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCertificate(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestCurrentChannelLcn(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestCurrentChannelLcn - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestCurrentChannelUri(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestCurrentChannelUri - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestCurrentTvInputId(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestCurrentTvInputId - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentTvInputId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestCurrentVideoBounds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestCurrentVideoBounds - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestScheduleRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v1, "TvInteractiveAppView"

    const-string/jumbo v2, "onRequestScheduleRecording - session not created"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v2

    iget-object v3, v0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestScheduleRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestScheduleRecording - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestSelectedTrackInfo(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestSelectedTrackInfo - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestSigning(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 8

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestSigning - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->tiafVApis()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestSigning(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestSigning - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestStartRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestStartRecording - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestStartRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestStopRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestStopRecording - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestStopRecording(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestStreamVolume(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestStreamVolume - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestTimeShiftMode(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestTimeShiftMode - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestTimeShiftMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestTrackInfoList(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestTrackInfoList - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRequestTvRecordingInfo(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestRecordingInfo - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestTvRecordingInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist onRequestTvRecordingInfoList(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onRequestRecordingInfoList - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestTvRecordingInfoList(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public blacklist onSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onSessionCreated - session already created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->release()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSession(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$msetSessionSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result v2

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v3}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;III)V

    :cond_2
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$mcreateSessionMediaView(Landroid/media/tv/interactive/TvInteractiveAppView;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    :goto_0
    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onSessionReleased - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmMediaViewCreated(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmMediaViewFrame(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSession(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    return-void
.end method

.method public blacklist onSessionStateChanged(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;II)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onSessionStateChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda8;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onSetTvRecordingInfo(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onSetRecordingInfo - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onSetTvRecordingInfo(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    :cond_1
    return-void
.end method

.method public blacklist onSetVideoBounds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onSetVideoBounds - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda9;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/graphics/Rect;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onTeletextAppStateChanged(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onTeletextAppStateChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onTeletextAppStateChanged(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public blacklist onTimeShiftCommandRequest(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onTimeShiftCommandRequest - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
