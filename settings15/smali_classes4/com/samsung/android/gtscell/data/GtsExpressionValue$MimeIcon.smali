.class public final Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;
.super Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MimeIcon"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;",
        "Lcom/samsung/android/gtscell/data/GtsExpressionValue;",
        "mimeType",
        "Lcom/samsung/android/gtscell/data/GtsMimeType;",
        "(Lcom/samsung/android/gtscell/data/GtsMimeType;)V",
        "getMimeType",
        "()Lcom/samsung/android/gtscell/data/GtsMimeType;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/data/GtsMimeType;)V
    .locals 1

    const-string/jumbo v0, "mimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;Lcom/samsung/android/gtscell/data/GtsMimeType;ILjava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->copy(Lcom/samsung/android/gtscell/data/GtsMimeType;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/samsung/android/gtscell/data/GtsMimeType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;

    return-object p0
.end method

.method public final copy(Lcom/samsung/android/gtscell/data/GtsMimeType;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;
    .locals 0

    const-string/jumbo p0, "mimeType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;-><init>(Lcom/samsung/android/gtscell/data/GtsMimeType;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;

    iget-object p1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getMimeType()Lcom/samsung/android/gtscell/data/GtsMimeType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MimeIcon(mimeType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
