.class public Lcom/samsung/android/sume/nn/NNPlugin;
.super Ljava/lang/Object;
.source "NNPlugin.java"


# instance fields
.field public blacklist loadModel:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/nn/NNFileDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field public blacklist queryEvaluator:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/MediaBuffer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/evaluate/Evaluable;",
            ">;",
            "Lcom/samsung/android/sume/evaluate/Evaluable;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist queryPostExecutor:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/MediaBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/samsung/android/sume/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field public blacklist queryPreExecutor:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/MediaBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/samsung/android/sume/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field public blacklist queryRunner:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/nn/NNRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNPlugin;->loadModel:Ljava/util/function/Function;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNPlugin;->queryRunner:Ljava/util/function/Function;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNPlugin;->queryEvaluator:Ljava/util/function/BiFunction;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNPlugin;->queryPreExecutor:Ljava/util/function/Function;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNPlugin;->queryPostExecutor:Ljava/util/function/Function;

    .line 31
    return-void
.end method
