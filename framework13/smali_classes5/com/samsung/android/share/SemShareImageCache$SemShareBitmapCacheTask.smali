.class Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;
.super Landroid/os/AsyncTask;
.source "SemShareImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemShareBitmapCacheTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mBitmap:Landroid/graphics/Bitmap;

.field blacklist mKey:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareImageCache;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/share/SemShareImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 583
    iput-object p1, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->this$0:Lcom/samsung/android/share/SemShareImageCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 584
    iput-object p2, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->mKey:Ljava/lang/String;

    .line 585
    iput-object p3, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 586
    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 577
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 590
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->this$0:Lcom/samsung/android/share/SemShareImageCache;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareImageCache;->-$$Nest$fgetmDiskCacheLock(Lcom/samsung/android/share/SemShareImageCache;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->this$0:Lcom/samsung/android/share/SemShareImageCache;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareImageCache;->-$$Nest$fgetmSemShareDiskLruCache(Lcom/samsung/android/share/SemShareImageCache;)Lcom/samsung/android/share/SemShareDiskLruCache;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 593
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->mKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    .local v1, "hashKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 596
    .local v2, "editor":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->this$0:Lcom/samsung/android/share/SemShareImageCache;

    invoke-static {v3}, Lcom/samsung/android/share/SemShareImageCache;->-$$Nest$fgetmSemShareDiskLruCache(Lcom/samsung/android/share/SemShareImageCache;)Lcom/samsung/android/share/SemShareDiskLruCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->edit(Ljava/lang/String;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v3

    move-object v2, v3

    .line 597
    if-eqz v2, :cond_1

    .line 598
    iget-object v3, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->this$0:Lcom/samsung/android/share/SemShareImageCache;

    iget-object v4, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v2}, Lcom/samsung/android/share/SemShareImageCache;->-$$Nest$mwriteBitmapToCache(Lcom/samsung/android/share/SemShareImageCache;Landroid/graphics/Bitmap;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->this$0:Lcom/samsung/android/share/SemShareImageCache;

    invoke-static {v3}, Lcom/samsung/android/share/SemShareImageCache;->-$$Nest$fgetmSemShareDiskLruCache(Lcom/samsung/android/share/SemShareImageCache;)Lcom/samsung/android/share/SemShareDiskLruCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->flush()V

    .line 600
    invoke-virtual {v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->commit()V

    .line 601
    const-string v3, "SemShareImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added bitmap to disk cache Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    :cond_1
    :goto_0
    goto :goto_1

    .line 606
    :catch_0
    move-exception v3

    .line 608
    .local v3, "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 609
    :try_start_2
    invoke-virtual {v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 611
    :catch_1
    move-exception v4

    nop

    .line 616
    .end local v1    # "hashKey":Ljava/lang/String;
    .end local v2    # "editor":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v0

    .line 617
    const/4 v0, 0x0

    return-object v0

    .line 616
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
