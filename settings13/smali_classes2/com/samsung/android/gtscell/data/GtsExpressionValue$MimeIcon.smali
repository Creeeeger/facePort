.class public final Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;
.super Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.source "GtsExpression.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MimeIcon"
.end annotation


# instance fields
.field private final mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/data/GtsMimeType;)V
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/data/GtsMimeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "mimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;

    return-object p0
.end method

.method public final copy(Lcom/samsung/android/gtscell/data/GtsMimeType;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;
    .locals 0
    .param p1    # Lcom/samsung/android/gtscell/data/GtsMimeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "mimeType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;-><init>(Lcom/samsung/android/gtscell/data/GtsMimeType;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MimeIcon(mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeIcon;->mimeType:Lcom/samsung/android/gtscell/data/GtsMimeType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
