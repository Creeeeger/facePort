.class public final Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;",
        "Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;",
        "()V",
        "level",
        "",
        "max",
        "min",
        "name",
        "",
        "step",
        "build",
        "Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;",
        "setLevel",
        "setMax",
        "setMin",
        "setName",
        "setStep",
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
.field private level:I

.field private max:I

.field private min:I

.field private name:Ljava/lang/String;

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->step:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;
    .locals 4

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->max:I

    iget v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->level:I

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->max:I

    iget v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->min:I

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->min:I

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;-><init>()V

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_LEVEL:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->level:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exp_value"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->min:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exp_min"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->max:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exp_max"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->step:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exp_step"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v1

    const-string v2, "exp_name"

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final setLevel(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->level:I

    return-object p0
.end method

.method public final setMax(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->max:I

    return-object p0
.end method

.method public final setMin(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->min:I

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final setStep(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->step:I

    return-object p0
.end method
