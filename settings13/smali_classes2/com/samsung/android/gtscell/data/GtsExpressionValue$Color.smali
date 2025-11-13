.class public final Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;
.super Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.source "GtsExpression.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Color"
.end annotation


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;->value:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;IILjava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;->value:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;->copy(I)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;->value:I

    return p0
.end method

.method public final copy(I)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;

    invoke-direct {p0, p1}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;->value:I

    iget p1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;->value:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getValue()I
    .locals 0

    .line 17
    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Color;->value:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
