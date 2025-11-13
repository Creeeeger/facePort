.class Lcom/samsung/android/share/SemShareDiskLruCache$1;
.super Ljava/lang/Object;
.source "SemShareDiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareDiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareDiskLruCache;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/share/SemShareDiskLruCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareDiskLruCache;

    .line 273
    iput-object p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$1;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareDiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$1;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$1;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$fgetjournalWriter(Lcom/samsung/android/share/SemShareDiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 278
    monitor-exit v0

    return-object v2

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$1;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$mtrimToSize(Lcom/samsung/android/share/SemShareDiskLruCache;)V

    .line 281
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$1;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$mjournalRebuildRequired(Lcom/samsung/android/share/SemShareDiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$1;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$mrebuildJournal(Lcom/samsung/android/share/SemShareDiskLruCache;)V

    .line 283
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$1;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$fputredundantOpCount(Lcom/samsung/android/share/SemShareDiskLruCache;I)V

    .line 285
    :cond_1
    monitor-exit v0

    .line 286
    return-object v2

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
