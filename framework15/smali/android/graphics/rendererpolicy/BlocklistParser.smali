.class Landroid/graphics/rendererpolicy/BlocklistParser;
.super Ljava/lang/Object;
.source "BlocklistParser.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BlocklistParser"

.field public static final blacklist UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist readBlockItem(Landroid/util/JsonReader;)Landroid/graphics/rendererpolicy/BlockItem;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "packageID"

    const-string/jumbo v1, "modelName"

    const-string v2, "chipsetName"

    const-string/jumbo v3, "osVersion"

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "packageID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->isValueNonNull(Landroid/util/JsonReader;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string/jumbo v9, "modelName"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->isValueNonNull(Landroid/util/JsonReader;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->readStringArray(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v9, "chipsetName"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->isValueNonNull(Landroid/util/JsonReader;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->readStringArray(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string/jumbo v9, "osVersion"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->isValueNonNull(Landroid/util/JsonReader;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->readIntegerArray(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    :goto_1
    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    new-instance v8, Landroid/graphics/rendererpolicy/BlockItem;

    invoke-direct {v8, v4, v5, v6, v7}, Landroid/graphics/rendererpolicy/BlockItem;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method private blacklist readBlocklist(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/rendererpolicy/BlockItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->readBlockItem(Landroid/util/JsonReader;)Landroid/graphics/rendererpolicy/BlockItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    return-object v0
.end method

.method private blacklist readIntegerArray(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    return-object v0
.end method

.method private blacklist readJsonConfiguration(Landroid/util/JsonReader;)Landroid/graphics/rendererpolicy/Blocklist;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "skiaGL"

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "skiaGL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->isValueNonNull(Landroid/util/JsonReader;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/graphics/rendererpolicy/Blocklist;

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/BlocklistParser;->readBlocklist(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/rendererpolicy/Blocklist;-><init>(Ljava/util/List;)V

    move-object v1, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    :goto_1
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v1
.end method

.method private blacklist readStringArray(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    return-object v0
.end method


# virtual methods
.method public blacklist isValueNonNull(Landroid/util/JsonReader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist parseConfigWithJsonReader(Ljava/io/InputStream;)Landroid/graphics/rendererpolicy/Blocklist;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Landroid/graphics/rendererpolicy/BlocklistParser;->readJsonConfiguration(Landroid/util/JsonReader;)Landroid/graphics/rendererpolicy/Blocklist;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BlocklistParser"

    const-string/jumbo v2, "parseConfigWithJsonReader failed. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
