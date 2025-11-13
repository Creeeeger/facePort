.class public final Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0011\u001a\u00020\u0003J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000bJ\u0016\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0018J\u0016\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ\u0016\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;",
        "",
        "item",
        "Lcom/samsung/android/gtscell/data/GtsItem;",
        "(Lcom/samsung/android/gtscell/data/GtsItem;)V",
        "()V",
        "format",
        "Lcom/samsung/android/gtscell/data/GtsItemFormat;",
        "key",
        "",
        "revision",
        "",
        "getRevision",
        "()I",
        "setRevision",
        "(I)V",
        "value",
        "build",
        "setBoolean",
        "",
        "setDouble",
        "",
        "setInt",
        "setLong",
        "",
        "setText",
        "setUri",
        "Landroid/net/Uri;",
        "setUrl",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

.field private key:Ljava/lang/String;

.field private revision:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_TEXT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->revision:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/gtscell/data/GtsItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getFormat()Lcom/samsung/android/gtscell/data/GtsItemFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsItem;->getRevision()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->revision:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/gtscell/data/GtsItem;
    .locals 13

    new-instance v12, Lcom/samsung/android/gtscell/data/GtsItem;

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iget-object v3, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    iget v8, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->revision:I

    const/16 v10, 0x100

    const/4 v11, 0x0

    const/4 v1, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/gtscell/data/GtsItem;-><init>(ILcom/samsung/android/gtscell/data/GtsItemFormat;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method public final getRevision()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->revision:I

    return p0
.end method

.method public final setBoolean(Ljava/lang/String;Z)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setDouble(Ljava/lang/String;D)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_DOUBLE:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setInt(Ljava/lang/String;I)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_INT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setLong(Ljava/lang/String;J)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_LONG:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setRevision(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->revision:I

    return-void
.end method

.method public final setText(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_TEXT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setUri(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URI:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "value.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URL:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->format:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/GtsEmbeddedItemBuilder;->value:Ljava/lang/String;

    return-object p0
.end method
