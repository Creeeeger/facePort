.class final Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
.super Ljava/lang/Object;
.source "SemShareDiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareDiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private blacklist currentEditor:Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

.field private final blacklist key:Ljava/lang/String;

.field private final blacklist lengths:[J

.field private blacklist readable:Z

.field private blacklist sequenceNumber:J

.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareDiskLruCache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->currentEditor:Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->key:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->lengths:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->readable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsequenceNumber(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->currentEditor:Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->readable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsequenceNumber(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->sequenceNumber:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetLengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .line 922
    iput-object p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput-object p2, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->key:Ljava/lang/String;

    .line 924
    invoke-static {p1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$fgetvalueCount(Lcom/samsung/android/share/SemShareDiskLruCache;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->lengths:[J

    .line 925
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;Lcom/samsung/android/share/SemShareDiskLruCache$Entry-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setLengths([Ljava/lang/String;)V
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    array-length v0, p1

    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$fgetvalueCount(Lcom/samsung/android/share/SemShareDiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 944
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 945
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 949
    .end local v0    # "i":I
    :cond_0
    nop

    .line 950
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 940
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public blacklist getCleanFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .line 957
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$fgetdirectory(Lcom/samsung/android/share/SemShareDiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getDirtyFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .line 961
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$fgetdirectory(Lcom/samsung/android/share/SemShareDiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getLengths()Ljava/lang/String;
    .locals 7

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    .line 930
    .local v4, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 929
    .end local v4    # "size":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
