.class public final Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
.super Ljava/lang/Object;
.source "GtsEmbeddedItemBuilder.kt"


# instance fields
.field private format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

.field private key:Ljava/lang/String;

.field private revision:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_TEXT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->revision:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/gtscell/data/GtsItem;)V
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/data/GtsItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getFormat()Lcom/samsung/android/gtscell/data/GtsItemFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getRevision()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->revision:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/gtscell/data/GtsItem;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 68
    new-instance v12, Lcom/samsung/android/gtscell/data/GtsItem;

    .line 70
    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 71
    iget-object v3, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    .line 72
    iget-object v4, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    .line 73
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 76
    iget v8, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->revision:I

    const/4 v1, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x100

    const/4 v11, 0x0

    move-object v0, v12

    .line 68
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/gtscell/data/GtsItem;-><init>(ILcom/samsung/android/gtscell/data/GtsItemFormat;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method public final getRevision()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->revision:I

    return p0
.end method

.method public final setBoolean(Ljava/lang/String;Z)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    .line 28
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setDouble(Ljava/lang/String;D)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_DOUBLE:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    .line 49
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setInt(Ljava/lang/String;I)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_INT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    .line 35
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setLong(Ljava/lang/String;J)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_LONG:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    .line 42
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setRevision(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->revision:I

    return-void
.end method

.method public final setText(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
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

    .line 19
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_TEXT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setUri(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URI:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    .line 56
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "value.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
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

    .line 61
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URL:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method
