.class public final Lcom/samsung/android/gtscell/data/GtsItemBuilder;
.super Ljava/lang/Object;
.source "GtsItemBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsItemBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsItemBuilder.kt\ncom/samsung/android/gtscell/data/GtsItemBuilder\n*L\n1#1,110:1\n*E\n"
.end annotation


# instance fields
.field private final embeddedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;"
        }
    .end annotation
.end field

.field private format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private revision:I

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:J

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/data/GtsItem;)V
    .locals 2
    .param p1    # Lcom/samsung/android/gtscell/data/GtsItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getFormat()Lcom/samsung/android/gtscell/data/GtsItemFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->value:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->tags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getEmbeddedItems()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->embeddedItems:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getRevision()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->revision:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->key:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_TEXT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const-string p1, ""

    .line 7
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->value:Ljava/lang/String;

    .line 8
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->tags:Ljava/util/Map;

    .line 9
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->embeddedItems:Ljava/util/Map;

    const-wide/16 v0, 0x3e8

    .line 10
    iput-wide v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->timeout:J

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->revision:I

    return-void
.end method


# virtual methods
.method public final addEmbeddedItem(Lcom/samsung/android/gtscell/data/GtsItem;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 2
    .param p1    # Lcom/samsung/android/gtscell/data/GtsItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->embeddedItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item should be embedded item("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "). Use GtsEmbeddedItemBuilder"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final build()Lcom/samsung/android/gtscell/data/GtsItem;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 101
    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 102
    iget-object v3, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->key:Ljava/lang/String;

    .line 103
    iget-object v4, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->value:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->tags:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 105
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->embeddedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 106
    iget-wide v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->timeout:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 107
    iget v8, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->revision:I

    const/4 v9, 0x0

    const/16 v10, 0x100

    const/4 v11, 0x0

    .line 99
    new-instance p0, Lcom/samsung/android/gtscell/data/GtsItem;

    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/gtscell/data/GtsItem;-><init>(ILcom/samsung/android/gtscell/data/GtsItemFormat;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final removeEmbeddedItem(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->embeddedItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setBoolean(Z)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setDouble(D)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_DOUBLE:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 54
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setInt(I)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_INT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setLong(J)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_LONG:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 48
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setRevision(I)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->revision:I

    return-object p0
.end method

.method public final setTag(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setText(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_TEXT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setTimeout(J)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 94
    iput-wide p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->timeout:J

    return-object p0
.end method

.method public final setUID(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_gts_item_uid"

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->setTag(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    return-object p0
.end method

.method public final setUri(Landroid/net/Uri;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URI:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 60
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "value.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsItemBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URL:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method
