.class public final Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SemShareDiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareDiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final blacklist entry:Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

.field private blacklist hasErrors:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareDiskLruCache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetentry(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->entry:Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputhasErrors(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->hasErrors:Z

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareDiskLruCache;
    .param p2, "entry"    # Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 783
    iput-object p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput-object p2, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->entry:Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 785
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)V

    return-void
.end method


# virtual methods
.method public blacklist abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$mcompleteEdit(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V

    .line 860
    return-void
.end method

.method public blacklist commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    iget-boolean v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$mcompleteEdit(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V

    .line 848
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->entry:Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$mcompleteEdit(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V

    .line 852
    :goto_0
    return-void
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 809
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$sminputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public blacklist newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    monitor-enter v0

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->entry:Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 796
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->entry:Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 797
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 799
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->entry:Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v0

    return-object v1

    .line 794
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .end local p1    # "index":I
    throw v1

    .line 800
    .restart local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->this$0:Lcom/samsung/android/share/SemShareDiskLruCache;

    monitor-enter v0

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->entry:Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 824
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->entry:Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Ljava/io/OutputStream;Lcom/samsung/android/share/SemShareDiskLruCache$Editor$FaultHidingOutputStream-IA;)V

    monitor-exit v0

    return-object v1

    .line 822
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .end local p1    # "index":I
    throw v1

    .line 825
    .restart local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist set(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 832
    const/4 v0, 0x0

    .line 834
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/share/SemShareDiskLruCache;->-$$Nest$sfgetUTF_8()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v1

    .line 835
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 838
    nop

    .line 839
    return-void

    .line 837
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 838
    throw v1
.end method
