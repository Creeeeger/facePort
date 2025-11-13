.class public Lcom/samsung/android/sume/evaluate/Evaluator$Any;
.super Lcom/samsung/android/sume/evaluate/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/evaluate/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Any"
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

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/sume/evaluate/Evaluator;-><init>()V

    .line 232
    sget-object v0, Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;->ANY:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    iput-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator$Any;->type:Lcom/samsung/android/sume/evaluate/Evaluator$EvaluateType;

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/evaluate/Evaluator$Any;->value:Ljava/lang/Object;

    .line 234
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

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/sume/evaluate/Evaluator$Any;-><init>()V

    .line 238
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

    .line 242
    const/4 v0, 0x1

    return v0
.end method
