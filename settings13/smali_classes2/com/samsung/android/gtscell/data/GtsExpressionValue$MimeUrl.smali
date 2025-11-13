.class public final Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;
.super Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.source "GtsExpression.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MimeUrl"
.end annotation


# instance fields
.field private final enlargeable:Z

.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->value:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->enlargeable:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;Ljava/lang/String;ZILjava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->value:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->enlargeable:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->copy(Ljava/lang/String;Z)Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->enlargeable:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->value:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->enlargeable:Z

    iget-boolean p1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->enlargeable:Z

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

    .line 19
    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->enlargeable:Z

    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->enlargeable:Z

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

    const-string v1, "MimeUrl(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enlargeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionValue$MimeUrl;->enlargeable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
