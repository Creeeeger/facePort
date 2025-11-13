.class abstract Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;
.super Ljava/lang/Object;
.source "GenericEvaluator.java"

# interfaces
.implements Lcom/samsung/android/sume/core/evaluate/Evaluator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field blacklist value:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    iput-object v1, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "className":Ljava/lang/String;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    .line 98
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
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

    .line 16
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    .line 18
    return-void
.end method


# virtual methods
.method public blacklist and(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .locals 3
    .param p1, "other"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    instance-of v0, p1, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;

    if-eqz v0, :cond_0

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;->add(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/sume/core/evaluate/Evaluator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/evaluate/AndEvaluatorGroup;-><init>([Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    return-object v0
.end method

.method public blacklist compareTo(Lcom/samsung/android/sume/core/evaluate/Evaluator;)I
    .locals 2
    .param p1, "other"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    instance-of v0, p1, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 56
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->sort()V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;->front()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    check-cast p1, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->compareTo(Lcom/samsung/android/sume/core/evaluate/Evaluator;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 86
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getValue()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/Object;
    .locals 1

    .line 11
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method blacklist getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 26
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 28
    :cond_0
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 30
    :cond_1
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 32
    :cond_2
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 34
    :cond_3
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 36
    :cond_4
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 39
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown number type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented except number type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist or(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .locals 3
    .param p1, "other"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    instance-of v0, p1, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;->add(Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/evaluate/EvaluatorGroup;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/sume/core/evaluate/Evaluator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/evaluate/OrEvaluatorGroup;-><init>([Lcom/samsung/android/sume/core/evaluate/Evaluator;)V

    return-object v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 109
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;, "Lcom/samsung/android/sume/core/evaluate/GenericEvaluator<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/sume/core/evaluate/GenericEvaluator;->value:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 104
    return-void
.end method
