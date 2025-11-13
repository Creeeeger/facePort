.class Landroid/media/MediaCas$1;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 4

    invoke-static {}, Landroid/media/MediaCas;->-$$Nest$sfgetsAidlLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaCas"

    const-string v2, "The service is dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/media/MediaCas;->-$$Nest$sfgetsService()Landroid/hardware/cas/IMediaCasService;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/cas/IMediaCasService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Landroid/media/MediaCas;->-$$Nest$sfgetsDeathListener()Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$sfputsService(Landroid/hardware/cas/IMediaCasService;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
