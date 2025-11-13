.class public final Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;
.super Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.source "GtsExpression.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Icon"
.end annotation


# instance fields
.field private final enlargeable:Z

.field private final value:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->value:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->enlargeable:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;Landroid/graphics/Bitmap;ZILjava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->value:Landroid/graphics/Bitmap;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->enlargeable:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->copy(Landroid/graphics/Bitmap;Z)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->value:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->enlargeable:Z

    return p0
.end method

.method public final copy(Landroid/graphics/Bitmap;Z)Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;-><init>(Landroid/graphics/Bitmap;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->value:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->value:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->enlargeable:Z

    iget-boolean p1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->enlargeable:Z

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

.method public final getEnlargeable()Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->enlargeable:Z

    return p0
.end method

.method public final getValue()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->value:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->value:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->enlargeable:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :cond_1
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Icon(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->value:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enlargeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$Icon;->enlargeable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
