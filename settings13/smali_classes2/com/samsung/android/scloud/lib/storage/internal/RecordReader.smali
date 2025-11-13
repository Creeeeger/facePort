.class abstract Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;
.super Ljava/lang/Object;
.source "RecordReader.java"


# instance fields
.field fileReader:Ljava/io/FileReader;

.field jsonReader:Landroid/util/JsonReader;


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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/io/FileReader;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->fileReader:Ljava/io/FileReader;

    .line 25
    new-instance p1, Landroid/util/JsonReader;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->fileReader:Ljava/io/FileReader;

    invoke-direct {p1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->jsonReader:Landroid/util/JsonReader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->jsonReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 41
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->fileReader:Ljava/io/FileReader;

    invoke-virtual {p0}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method getFileList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 49
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v1, "files"

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "path"

    .line 57
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecordReader"

    invoke-static {v3, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->jsonReader:Landroid/util/JsonReader;

    if-eqz p0, :cond_0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
