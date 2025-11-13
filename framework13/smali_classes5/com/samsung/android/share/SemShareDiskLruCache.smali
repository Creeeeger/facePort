.class public final Lcom/samsung/android/share/SemShareDiskLruCache;
.super Ljava/lang/Object;
.source "SemShareDiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SemShareDiskLruCache$Entry;,
        Lcom/samsung/android/share/SemShareDiskLruCache$Editor;,
        Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field private static final blacklist ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final blacklist CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final blacklist DIRTY:Ljava/lang/String; = "DIRTY"

.field public static final blacklist IO_BUFFER_SIZE:I = 0x2000

.field private static final blacklist JOURNAL_FILE:Ljava/lang/String; = "journal"

.field private static final blacklist JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field private static final blacklist MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final blacklist READ:Ljava/lang/String; = "READ"

.field private static final blacklist REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final blacklist UTF_8:Ljava/nio/charset/Charset;

.field private static final blacklist VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final blacklist appVersion:I

.field private final blacklist cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist directory:Ljava/io/File;

.field private final blacklist executorService:Ljava/util/concurrent/ExecutorService;

.field private final blacklist journalFile:Ljava/io/File;

.field private final blacklist journalFileTmp:Ljava/io/File;

.field private blacklist journalWriter:Ljava/io/Writer;

.field private final blacklist lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/share/SemShareDiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist maxSize:J

.field private blacklist nextSequenceNumber:J

.field private blacklist redundantOpCount:I

.field private blacklist size:J

.field private final blacklist valueCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdirectory(Lcom/samsung/android/share/SemShareDiskLruCache;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetjournalWriter(Lcom/samsung/android/share/SemShareDiskLruCache;)Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalueCount(Lcom/samsung/android/share/SemShareDiskLruCache;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputredundantOpCount(Lcom/samsung/android/share/SemShareDiskLruCache;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcompleteEdit(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/SemShareDiskLruCache;->completeEdit(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$medit(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;J)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/share/SemShareDiskLruCache;->edit(Ljava/lang/String;J)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mjournalRebuildRequired(Lcom/samsung/android/share/SemShareDiskLruCache;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrebuildJournal(Lcom/samsung/android/share/SemShareDiskLruCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtrimToSize(Lcom/samsung/android/share/SemShareDiskLruCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->trimToSize()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUTF_8()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lcom/samsung/android/share/SemShareDiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sminputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 112
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/share/SemShareDiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/File;IIJ)V
    .locals 15
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 290
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    .line 163
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 172
    iput-wide v2, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->nextSequenceNumber:J

    .line 271
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 273
    new-instance v2, Lcom/samsung/android/share/SemShareDiskLruCache$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/share/SemShareDiskLruCache$1;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;)V

    iput-object v2, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 291
    iput-object v1, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->directory:Ljava/io/File;

    .line 292
    move/from16 v2, p2

    iput v2, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->appVersion:I

    .line 293
    new-instance v3, Ljava/io/File;

    const-string v4, "journal"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    .line 294
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.tmp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 295
    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    .line 296
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->maxSize:J

    .line 297
    return-void
.end method

.method private blacklist checkNotClosed()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 672
    return-void

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 241
    if-eqz p0, :cond_0

    .line 243
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0

    .line 244
    :catch_1
    move-exception v0

    .line 245
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 249
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized blacklist completeEdit(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V
    .locals 10
    .param p1, "editor"    # Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 568
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->-$$Nest$fgetentry(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    move-result-object v0

    .line 569
    .local v0, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_9

    .line 574
    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_1

    .line 576
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->abort()V

    .line 578
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit didn\'t create file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 583
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_4

    .line 584
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    .line 585
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_2

    .line 586
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 587
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 588
    .local v3, "clean":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 589
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    .line 590
    .local v4, "oldLength":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 591
    .local v6, "newLength":J
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 592
    iget-wide v8, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    .line 593
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_2

    .line 595
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 583
    .end local v2    # "dirty":Ljava/io/File;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 599
    .end local v1    # "i":I
    :cond_4
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    .line 600
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V

    .line 601
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    if-eqz v1, :cond_5

    .line 602
    invoke-static {v0, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Z)V

    .line 603
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 604
    if-eqz p2, :cond_6

    .line 605
    iget-wide v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->nextSequenceNumber:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputsequenceNumber(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;J)V

    goto :goto_3

    .line 608
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REMOVE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 612
    :cond_6
    :goto_3
    iget-wide v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    iget-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 613
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :cond_8
    monitor-exit p0

    return-void

    .line 570
    :cond_9
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    .end local v0    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .end local p1    # "editor":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static blacklist copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 177
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    .line 178
    .local v0, "originalLength":I
    if-gt p1, p2, :cond_1

    .line 181
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 184
    sub-int v1, p2, p1

    .line 185
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 186
    .local v2, "copyLength":I
    nop

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 188
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    return-object v3

    .line 182
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static blacklist deleteContents(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 257
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 260
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 261
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 264
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .restart local v3    # "file":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    .end local v3    # "file":Ljava/io/File;
    :cond_2
    return-void

    .line 258
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 468
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized blacklist edit(Ljava/lang/String;J)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->checkNotClosed()V

    .line 521
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 523
    .local v0, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetsequenceNumber(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v3, p2

    if-eqz v1, :cond_1

    .line 525
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_0
    monitor-exit p0

    return-object v2

    .line 527
    .restart local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_1
    if-nez v0, :cond_2

    .line 528
    :try_start_1
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;Lcom/samsung/android/share/SemShareDiskLruCache$Entry-IA;)V

    move-object v0, v1

    .line 529
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 530
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 531
    monitor-exit p0

    return-object v2

    .line 534
    .restart local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_3
    :goto_0
    :try_start_2
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor-IA;)V

    .line 535
    .local v1, "editor":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V

    .line 538
    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 539
    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    monitor-exit p0

    return-object v1

    .line 519
    .end local v0    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .end local v1    # "editor":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static blacklist inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/samsung/android/share/SemShareDiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist journalRebuildRequired()Z
    .locals 3

    .line 622
    const/16 v0, 0x7d0

    .line 623
    .local v0, "REDUNDANT_OP_COMPACT_THRESHOLD":I
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 624
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 623
    :goto_0
    return v1
.end method

.method public static blacklist open(Ljava/io/File;IIJ)Lcom/samsung/android/share/SemShareDiskLruCache;
    .locals 8
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    .line 314
    if-lez p2, :cond_1

    .line 319
    new-instance v0, Lcom/samsung/android/share/SemShareDiskLruCache;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/share/SemShareDiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 320
    .local v0, "cache":Lcom/samsung/android/share/SemShareDiskLruCache;
    iget-object v1, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    invoke-direct {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->readJournal()V

    .line 323
    invoke-direct {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->processJournal()V

    .line 324
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    return-object v0

    .line 327
    :catch_0
    move-exception v1

    .line 330
    .local v1, "journalIsCorrupt":Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->delete()V

    .line 335
    .end local v1    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 336
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/share/SemShareDiskLruCache;-><init>(Ljava/io/File;IIJ)V

    move-object v0, v1

    .line 337
    invoke-direct {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->rebuildJournal()V

    .line 338
    return-object v0

    .line 315
    .end local v0    # "cache":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/share/SemShareDiskLruCache$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 409
    .local v1, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 410
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 411
    iget-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "t":I
    :cond_0
    goto :goto_3

    .line 414
    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V

    .line 415
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 416
    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 417
    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 419
    .end local v2    # "t":I
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 421
    .end local v1    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    :goto_3
    goto :goto_0

    .line 422
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/share/SemShareDiskLruCache$Entry;>;"
    :cond_3
    return-void
.end method

.method public static blacklist readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 222
    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 224
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 225
    nop

    .line 230
    .end local v1    # "c":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 231
    .local v1, "length":I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 232
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 228
    .local v1, "c":I
    :cond_1
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .end local v1    # "c":I
    goto :goto_0

    .line 223
    .restart local v1    # "c":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static blacklist readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 198
    .local v0, "writer":Ljava/io/StringWriter;
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 200
    .local v1, "buffer":[C
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 201
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 203
    return-object v2

    .line 205
    .end local v0    # "writer":Ljava/io/StringWriter;
    .end local v1    # "buffer":[C
    .end local v3    # "count":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 206
    throw v0
.end method

.method private blacklist readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    const-string v0, ", "

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 344
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "magic":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "version":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "appVersionString":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 350
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->appVersion:I

    .line 351
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    .line 352
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    .line 353
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 360
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "endOfJournal":Ljava/io/EOFException;
    nop

    .line 366
    .end local v0    # "endOfJournal":Ljava/io/EOFException;
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 367
    nop

    .line 368
    return-void

    .line 354
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 367
    throw v0
.end method

.method private blacklist readJournalLine(Ljava/lang/String;)V
    .locals 10
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const-string/jumbo v2, "unexpected journal line: "

    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    .line 376
    const/4 v1, 0x1

    aget-object v4, v0, v1

    .line 377
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v0, v5

    const-string v7, "REMOVE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    array-length v6, v0

    if-ne v6, v3, :cond_0

    .line 378
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void

    .line 382
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 383
    .local v6, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 384
    new-instance v8, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    invoke-direct {v8, p0, v4, v7}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;Lcom/samsung/android/share/SemShareDiskLruCache$Entry-IA;)V

    move-object v6, v8

    .line 385
    iget-object v8, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_1
    aget-object v8, v0, v5

    const-string v9, "CLEAN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    array-length v8, v0

    iget v9, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    add-int/2addr v9, v3

    if-ne v8, v9, :cond_2

    .line 389
    invoke-static {v6, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Z)V

    .line 390
    invoke-static {v6, v7}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V

    .line 391
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$msetLengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_2
    aget-object v1, v0, v5

    const-string v8, "DIRTY"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-ne v1, v3, :cond_3

    .line 393
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    invoke-direct {v1, p0, v6, v7}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor-IA;)V

    invoke-static {v6, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V

    goto :goto_0

    .line 394
    :cond_3
    aget-object v1, v0, v5

    const-string v5, "READ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, v0

    if-ne v1, v3, :cond_4

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized blacklist rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 433
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 434
    .local v0, "writer":Ljava/io/Writer;
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 440
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 441
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 445
    .local v3, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v4

    const/16 v5, 0xa

    if-eqz v4, :cond_1

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DIRTY "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEAN "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    .end local v3    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    :goto_1
    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 453
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 454
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 428
    .end local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist trimToSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    iget-wide v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 704
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->remove(Ljava/lang/String;)Z

    .line 705
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;>;"
    goto :goto_0

    .line 706
    :cond_0
    return-void
.end method

.method private blacklist validateKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 719
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    return-void

    .line 720
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 688
    monitor-exit p0

    return-void

    .line 690
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 691
    .local v1, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 692
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->abort()V

    .line 694
    .end local v1    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_1
    goto :goto_0

    .line 695
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->trimToSize()V

    .line 696
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    monitor-exit p0

    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->close()V

    .line 715
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 716
    return-void
.end method

.method public blacklist edit(Ljava/lang/String;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->edit(Ljava/lang/String;J)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 678
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->checkNotClosed()V

    .line 679
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->trimToSize()V

    .line 680
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    .line 677
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist get(Ljava/lang/String;)Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 476
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->checkNotClosed()V

    .line 477
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .local v0, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 480
    monitor-exit p0

    return-object v1

    .line 483
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 484
    monitor-exit p0

    return-object v1

    .line 492
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    new-array v2, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    .local v2, "ins":[Ljava/io/InputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_3
    iget v4, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_2

    .line 495
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v2, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 494
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 500
    .end local v3    # "i":I
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_2
    nop

    .line 502
    :try_start_4
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    .line 503
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v3, "READ "

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 504
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 505
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 508
    :cond_3
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetsequenceNumber(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot-IA;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 497
    :catch_0
    move-exception v3

    .line 499
    .local v3, "e":Ljava/io/FileNotFoundException;
    monitor-exit p0

    return-object v1

    .line 475
    .end local v0    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .end local v2    # "ins":[Ljava/io/InputStream;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getDirectory()Ljava/io/File;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public blacklist isClosed()Z
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist maxSize()J
    .locals 2

    .line 555
    iget-wide v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized blacklist remove(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 634
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->checkNotClosed()V

    .line 635
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 637
    .local v0, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 641
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_2

    .line 642
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 643
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    iget-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    .line 647
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 641
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 650
    .end local v1    # "i":I
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    .line 651
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 652
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 655
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :cond_3
    monitor-exit p0

    return v2

    .line 638
    :cond_4
    :goto_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 633
    .end local v0    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist size()J
    .locals 2

    monitor-enter p0

    .line 564
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 564
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
