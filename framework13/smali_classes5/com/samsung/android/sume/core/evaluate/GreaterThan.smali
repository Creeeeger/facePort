.class Lcom/samsung/android/sume/core/evaluate/GreaterThan;
.super Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;
.source "GreaterThan.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/evaluate/GreaterThan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/GreaterThan$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/evaluate/GreaterThan$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/evaluate/GreaterThan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
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

    .line 17
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;-><init>(Landroid/os/Parcel;)V

    .line 18
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Comparable;)V
    .locals 0
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

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;-><init>(Ljava/lang/Comparable;)V

    .line 9
    return-void
.end method


# virtual methods
.method public blacklist evaluate(Ljava/lang/Object;)Z
    .locals 2
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
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)Z"
        }
    .end annotation

    .line 13
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GreaterThan;, "Lcom/samsung/android/sume/core/evaluate/GreaterThan<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/GreaterThan;->getValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
