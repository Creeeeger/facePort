.class public final synthetic Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>([Z[Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils$$ExternalSyntheticLambda1;->f$0:[Z

    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils$$ExternalSyntheticLambda1;->f$1:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils$$ExternalSyntheticLambda1;->f$0:[Z

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/utils/BitmapUtils$$ExternalSyntheticLambda1;->f$1:[Landroid/os/ParcelFileDescriptor;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    aget-boolean v2, v0, v1

    if-eqz v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x2710

    :try_start_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    aget-boolean v2, v0, v1

    if-eqz v2, :cond_1

    monitor-exit v0

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "BitmapUtils"

    const-string v2, "encodeBitmapToPipe: observer: timeout. closing read pfd forcefully"

    invoke-static {v0, v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "BitmapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encodeBitmapToPipe: observer: e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
