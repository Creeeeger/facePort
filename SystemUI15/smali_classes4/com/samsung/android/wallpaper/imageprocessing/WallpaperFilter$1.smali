.class public final Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$baseHeight:I

.field public final synthetic val$completeTable:[Z

.field public final synthetic val$filter:Ljava/util/function/Consumer;

.field public final synthetic val$tag:Ljava/lang/String;

.field public final synthetic val$threadCnt:I

.field public final synthetic val$threadCreationTime:J

.field public final synthetic val$tid:I

.field public final synthetic val$totalSize:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;IIIILjava/lang/String;Ljava/util/function/Consumer;[ZJ)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$baseHeight:I

    iput p3, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tid:I

    iput p4, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$threadCnt:I

    iput p5, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$totalSize:I

    iput-object p6, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tag:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$filter:Ljava/util/function/Consumer;

    iput-object p8, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$completeTable:[Z

    iput-wide p9, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$threadCreationTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "applyFilterOnMultiThread["

    iget v1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$baseHeight:I

    iget v2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tid:I

    mul-int v3, v1, v2

    iget v4, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$threadCnt:I

    const/4 v5, 0x1

    add-int/lit8 v6, v4, -0x1

    if-ge v2, v6, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$totalSize:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, v1

    sub-int v1, v2, v4

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;

    iget v4, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$totalSize:I

    invoke-direct {v2, v4}, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;-><init>(I)V

    iput v3, v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->start:I

    iput v1, v2, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$ProcessingRange;->length:I

    sget v1, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter;->$r8$clinit:I

    const-string v1, "WallpaperFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applyFilterOnMultiThread before ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] : tid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$filter:Ljava/util/function/Consumer;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$completeTable:[Z

    monitor-enter v1

    :try_start_0
    const-string v2, "WallpaperFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] : tid "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " finished. startDelay="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$threadCreationTime:J

    sub-long v8, v6, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", pureJniDur="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$completeTable:[Z

    iget v2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$tid:I

    aput-boolean v5, v0, v2

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$threadCnt:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$completeTable:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v0, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/wallpaper/imageprocessing/WallpaperFilter$1;->val$completeTable:[Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
