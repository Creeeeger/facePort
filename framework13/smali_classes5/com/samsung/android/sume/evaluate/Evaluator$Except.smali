.class public Lcom/samsung/android/sume/evaluate/Evaluator$Except;
.super Lcom/samsung/android/sume/evaluate/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/evaluate/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Except"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/evaluate/Evaluator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/sume/evaluate/Evaluator;-><init>()V

    .line 248
    sget-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->EXCEPT:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    iput-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator$Except;->type:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator$Except;->value:Ljava/lang/Object;

    .line 250
    return-void
.end method

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

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/sume/evaluate/Evaluator$Except;-><init>()V

    .line 254
    return-void
.end method


# virtual methods
.method public blacklist evaluate(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    return v0
.end method
