.class public abstract Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final fileWriter:Ljava/io/FileWriter;

.field public final jsonWriter:Landroid/util/JsonWriter;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/FileWriter;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->fileWriter:Ljava/io/FileWriter;

    new-instance p1, Landroid/util/JsonWriter;

    invoke-direct {p1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->fileWriter:Ljava/io/FileWriter;

    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final end()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordWriter;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
