.class public Lcom/samsung/android/sume/evaluate/Evaluator$LT;
.super Lcom/samsung/android/sume/evaluate/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/evaluate/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sume/evaluate/Evaluator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator$LT;, "Lcom/samsung/android/sume/evaluate/Evaluator$LT<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/evaluate/Evaluator;-><init>(Landroid/os/Parcel;)V

    .line 174
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator$LT;, "Lcom/samsung/android/sume/evaluate/Evaluator$LT<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/samsung/android/sume/evaluate/Evaluator;-><init>()V

    .line 168
    sget-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->LT:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    iput-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator$LT;->type:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    .line 169
    iput-object p1, p0, Lcom/samsung/android/sume/evaluate/Evaluator$LT;->value:Ljava/lang/Object;

    .line 170
    return-void
.end method


# virtual methods
.method public blacklist evaluate(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/samsung/android/sume/evaluate/Evaluator$LT;, "Lcom/samsung/android/sume/evaluate/Evaluator$LT<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/samsung/android/sume/evaluate/Evaluator$LT;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
