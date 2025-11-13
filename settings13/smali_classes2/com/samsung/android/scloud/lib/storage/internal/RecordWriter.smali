.class abstract Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;
.super Ljava/lang/Object;
.source "RecordWriter.java"


# instance fields
.field fileWriter:Ljava/io/FileWriter;

.field jsonWriter:Landroid/util/JsonWriter;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pfd"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/io/FileWriter;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->fileWriter:Ljava/io/FileWriter;

    .line 18
    new-instance p1, Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->fileWriter:Ljava/io/FileWriter;

    invoke-direct {p1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    .line 47
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->fileWriter:Ljava/io/FileWriter;

    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public end()V
    .locals 1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 37
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    if-eqz p0, :cond_0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
