.class Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SemShareDiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/share/SemShareDiskLruCache$Editor;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 864
    iput-object p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    .line 865
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 866
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Ljava/io/OutputStream;Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->-$$Nest$fputhasErrors(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V

    .line 893
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public whitelist test-api flush()V
    .locals 3

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->-$$Nest$fputhasErrors(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V

    .line 902
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public whitelist test-api write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    goto :goto_0

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->-$$Nest$fputhasErrors(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V

    .line 875
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->-$$Nest$fputhasErrors(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V

    .line 884
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
