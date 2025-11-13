.class public final Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "SemShareDiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareDiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final blacklist ins:[Ljava/io/InputStream;

.field private final blacklist key:Ljava/lang/String;

.field private final blacklist sequenceNumber:J

.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareDiskLruCache;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareDiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;

    .line 738
    iput-object p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p2, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 740
    iput-wide p3, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->sequenceNumber:J

    .line 741
    iput-object p5, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 742
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    .line 769
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 770
    .local v3, "in":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 769
    .end local v3    # "in":Ljava/io/InputStream;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 772
    :cond_0
    return-void
.end method

.method public blacklist edit()Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$medit(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;J)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .line 757
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$sminputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
