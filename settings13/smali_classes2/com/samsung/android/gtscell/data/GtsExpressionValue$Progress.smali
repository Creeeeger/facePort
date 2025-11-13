.class public final Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;
.super Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.source "GtsExpression.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Progress"
.end annotation


# instance fields
.field private final max:I

.field private final min:I

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    iput p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    iput p3, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    iput-object p4, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;IIILjava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->copy(IIILjava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IIILjava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "name"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    iget v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    iget v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    iget v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

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

.method public final getMax()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    return p0
.end method

.method public final getMin()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Progress(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Progress;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
