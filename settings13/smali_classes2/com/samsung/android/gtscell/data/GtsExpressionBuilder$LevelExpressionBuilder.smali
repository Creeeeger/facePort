.class public final Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
.super Ljava/lang/Object;
.source "GtsExpressionBuilder.kt"

# interfaces
.implements Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelExpressionBuilder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsExpressionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsExpressionBuilder.kt\ncom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder\n*L\n1#1,371:1\n*E\n"
.end annotation


# instance fields
.field private level:I

.field private max:I

.field private min:I

.field private name:Ljava/lang/String;

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 263
    iput v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->step:I

    const-string v0, ""

    .line 264
    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 292
    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->max:I

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->level:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->max:I

    .line 293
    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->min:I

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->level:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->min:I

    .line 294
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;-><init>()V

    .line 295
    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_LEVEL:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V

    .line 296
    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->level:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exp_value"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->min:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exp_min"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->max:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exp_max"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->step:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exp_step"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->name:Ljava/lang/String;

    const-string v2, "exp_name"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final setLevel(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 267
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->level:I

    return-object p0
.end method

.method public final setMax(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 277
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->max:I

    return-object p0
.end method

.method public final setMin(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 272
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->min:I

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final setStep(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 282
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->step:I

    return-object p0
.end method
