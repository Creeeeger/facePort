.class public Lcom/samsung/android/sume/nn/NNDescriptor;
.super Ljava/lang/Object;
.source "NNDescriptor.java"

# interfaces
.implements Lcom/samsung/android/sume/op/OpDescriptor;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/nn/NNDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "NNDescriptor"


# instance fields
.field private blacklist bufferType:Lcom/samsung/android/sume/BufferType;

.field private blacklist cache:Ljava/lang/String;

.field private blacklist evaluator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist fw:Lcom/samsung/android/sume/nn/NNFW;

.field private blacklist inputNode:Lcom/samsung/android/sume/nn/NNNode;

.field private blacklist model:Lcom/samsung/android/sume/nn/Model;

.field private blacklist nnfd:Lcom/samsung/android/sume/nn/NNFileDescriptor;

.field private blacklist outputNode:Lcom/samsung/android/sume/nn/NNNode;

.field private blacklist overlap:I

.field private blacklist runtime:Lcom/samsung/android/sume/op/OpRuntime;

.field private blacklist shapeType:Lcom/samsung/android/sume/ShapeType;

.field private blacklist subList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/NNDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist subSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/NNDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist tag:Ljava/lang/String;

.field private blacklist version:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/samsung/android/sume/nn/NNDescriptor$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/nn/NNDescriptor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/nn/NNDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/samsung/android/sume/nn/Model;->NONE:Lcom/samsung/android/sume/nn/Model;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->model:Lcom/samsung/android/sume/nn/Model;

    .line 31
    sget-object v0, Lcom/samsung/android/sume/ShapeType;->NONE:Lcom/samsung/android/sume/ShapeType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->shapeType:Lcom/samsung/android/sume/ShapeType;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->overlap:I

    .line 38
    sget-object v0, Lcom/samsung/android/sume/BufferType;->PROPRIETARY:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 39
    sget-object v0, Lcom/samsung/android/sume/nn/NNFW;->NONE:Lcom/samsung/android/sume/nn/NNFW;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->fw:Lcom/samsung/android/sume/nn/NNFW;

    .line 40
    sget-object v0, Lcom/samsung/android/sume/op/OpRuntime;->NONE:Lcom/samsung/android/sume/op/OpRuntime;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->runtime:Lcom/samsung/android/sume/op/OpRuntime;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->extra:Ljava/util/Map;

    .line 59
    new-instance v0, Lcom/samsung/android/sume/nn/NNNode;

    invoke-direct {v0}, Lcom/samsung/android/sume/nn/NNNode;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    .line 60
    new-instance v0, Lcom/samsung/android/sume/nn/NNNode;

    invoke-direct {v0}, Lcom/samsung/android/sume/nn/NNNode;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    .line 61
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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/samsung/android/sume/nn/Model;->NONE:Lcom/samsung/android/sume/nn/Model;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->model:Lcom/samsung/android/sume/nn/Model;

    .line 31
    sget-object v0, Lcom/samsung/android/sume/ShapeType;->NONE:Lcom/samsung/android/sume/ShapeType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->shapeType:Lcom/samsung/android/sume/ShapeType;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->overlap:I

    .line 38
    sget-object v0, Lcom/samsung/android/sume/BufferType;->PROPRIETARY:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 39
    sget-object v0, Lcom/samsung/android/sume/nn/NNFW;->NONE:Lcom/samsung/android/sume/nn/NNFW;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->fw:Lcom/samsung/android/sume/nn/NNFW;

    .line 40
    sget-object v0, Lcom/samsung/android/sume/op/OpRuntime;->NONE:Lcom/samsung/android/sume/op/OpRuntime;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->runtime:Lcom/samsung/android/sume/op/OpRuntime;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->extra:Ljava/util/Map;

    .line 64
    const-class v0, Lcom/samsung/android/sume/nn/Model;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/Model;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->model:Lcom/samsung/android/sume/nn/Model;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->tag:Ljava/lang/String;

    .line 66
    const-class v0, Lcom/samsung/android/sume/ShapeType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ShapeType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->shapeType:Lcom/samsung/android/sume/ShapeType;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->cache:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->cache:Ljava/lang/String;

    .line 69
    :cond_0
    const-class v0, Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/NNNode;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    .line 70
    const-class v0, Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/NNNode;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->version:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->version:Ljava/lang/String;

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->overlap:I

    .line 74
    const-class v0, Lcom/samsung/android/sume/nn/NNFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/NNFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->nnfd:Lcom/samsung/android/sume/nn/NNFileDescriptor;

    .line 75
    const-class v0, Lcom/samsung/android/sume/BufferType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 76
    const-class v0, Lcom/samsung/android/sume/nn/NNFW;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/NNFW;

    iput-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->fw:Lcom/samsung/android/sume/nn/NNFW;

    .line 77
    return-void
.end method

.method static synthetic blacklist lambda$clone$0(Lcom/samsung/android/sume/nn/NNDescriptor;)Lcom/samsung/android/sume/nn/NNDescriptor;
    .locals 2
    .param p0, "nnDescriptor"    # Lcom/samsung/android/sume/nn/NNDescriptor;

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/NNDescriptor;->toNNDescriptor()Lcom/samsung/android/sume/nn/NNDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 120
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic blacklist lambda$clone$1(Lcom/samsung/android/sume/nn/NNDescriptor;)Lcom/samsung/android/sume/nn/NNDescriptor;
    .locals 2
    .param p0, "nnDescriptor"    # Lcom/samsung/android/sume/nn/NNDescriptor;

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/NNDescriptor;->toNNDescriptor()Lcom/samsung/android/sume/nn/NNDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 131
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected whitelist test-api clone()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 106
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->nnfd:Lcom/samsung/android/sume/nn/NNFileDescriptor;

    if-eqz v1, :cond_0

    .line 108
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/nn/NNDescriptor;

    invoke-virtual {v1}, Lcom/samsung/android/sume/nn/NNFileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/nn/NNFileDescriptor;

    iput-object v1, v2, Lcom/samsung/android/sume/nn/NNDescriptor;->nnfd:Lcom/samsung/android/sume/nn/NNFileDescriptor;

    .line 110
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 111
    .local v1, "newExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->extra:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/sume/nn/NNDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/samsung/android/sume/nn/NNDescriptor$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 112
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/nn/NNDescriptor;

    iput-object v1, v2, Lcom/samsung/android/sume/nn/NNDescriptor;->extra:Ljava/util/Map;

    .line 114
    iget-object v2, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subSet:Ljava/util/List;

    const-string v3, " -> "

    const-string v4, "NNDescriptor"

    if-eqz v2, :cond_1

    .line 115
    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sume/nn/NNDescriptor;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v6, Lcom/samsung/android/sume/nn/NNDescriptor$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/samsung/android/sume/nn/NNDescriptor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 122
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v5, Lcom/samsung/android/sume/nn/NNDescriptor;->subSet:Ljava/util/List;

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clone subSet: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subSet:Ljava/util/List;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sume/nn/NNDescriptor;

    iget-object v5, v5, Lcom/samsung/android/sume/nn/NNDescriptor;->subSet:Ljava/util/List;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 126
    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sume/nn/NNDescriptor;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v6, Lcom/samsung/android/sume/nn/NNDescriptor$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/samsung/android/sume/nn/NNDescriptor$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 133
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v5, Lcom/samsung/android/sume/nn/NNDescriptor;->subList:Ljava/util/List;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clone subList: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subList:Ljava/util/List;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/sume/nn/NNDescriptor;

    iget-object v3, v3, Lcom/samsung/android/sume/nn/NNDescriptor;->subList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBufferType()Lcom/samsung/android/sume/BufferType;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->bufferType:Lcom/samsung/android/sume/BufferType;

    return-object v0
.end method

.method public blacklist getCache()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->cache:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEvaluator()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->evaluator:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->extra:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getFw()Lcom/samsung/android/sume/nn/NNFW;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->fw:Lcom/samsung/android/sume/nn/NNFW;

    return-object v0
.end method

.method public blacklist getInputNode()Lcom/samsung/android/sume/nn/NNNode;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    return-object v0
.end method

.method public blacklist getInputShape()Lcom/samsung/android/sume/Shape;
    .locals 7

    .line 251
    new-instance v0, Lcom/samsung/android/sume/Shape;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    .line 252
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v1

    .line 253
    iget-object v2, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->shapeType:Lcom/samsung/android/sume/ShapeType;

    sget-object v3, Lcom/samsung/android/sume/ShapeType;->NHWC:Lcom/samsung/android/sume/ShapeType;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {v2, v5}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v2

    .line 254
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->shapeType:Lcom/samsung/android/sume/ShapeType;

    sget-object v6, Lcom/samsung/android/sume/ShapeType;->NHWC:Lcom/samsung/android/sume/ShapeType;

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {v3, v5}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v3

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    const/4 v5, 0x3

    .line 255
    invoke-virtual {v4, v5}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/Shape;-><init>(IIII)V

    .line 251
    return-object v0
.end method

.method public blacklist getMainOp()Lcom/samsung/android/sume/op/OpDescriptor;
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/NNDescriptor;->isSingleOp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/NNDescriptor;->isSetOp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subSet:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/op/OpDescriptor;

    return-object v0

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/NNDescriptor;->isListOp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/op/OpDescriptor;

    return-object v0

    .line 317
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModel()Lcom/samsung/android/sume/nn/Model;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->model:Lcom/samsung/android/sume/nn/Model;

    return-object v0
.end method

.method public blacklist getNnfd()Lcom/samsung/android/sume/nn/NNFileDescriptor;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->nnfd:Lcom/samsung/android/sume/nn/NNFileDescriptor;

    return-object v0
.end method

.method public blacklist getOutputNode()Lcom/samsung/android/sume/nn/NNNode;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    return-object v0
.end method

.method public blacklist getOutputShape()Lcom/samsung/android/sume/Shape;
    .locals 7

    .line 261
    new-instance v0, Lcom/samsung/android/sume/Shape;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v1

    .line 263
    iget-object v2, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->shapeType:Lcom/samsung/android/sume/ShapeType;

    sget-object v3, Lcom/samsung/android/sume/ShapeType;->NHWC:Lcom/samsung/android/sume/ShapeType;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {v2, v5}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v2

    .line 264
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->shapeType:Lcom/samsung/android/sume/ShapeType;

    sget-object v6, Lcom/samsung/android/sume/ShapeType;->NHWC:Lcom/samsung/android/sume/ShapeType;

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {v3, v5}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v3

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    const/4 v5, 0x3

    .line 265
    invoke-virtual {v4, v5}, Lcom/samsung/android/sume/nn/NNNode;->getShape(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/Shape;-><init>(IIII)V

    .line 261
    return-object v0
.end method

.method public blacklist getOverlap()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->overlap:I

    return v0
.end method

.method public blacklist getRuntime()Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->runtime:Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method public blacklist getShapeType()Lcom/samsung/android/sume/ShapeType;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->shapeType:Lcom/samsung/android/sume/ShapeType;

    return-object v0
.end method

.method public blacklist getSubList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/NNDescriptor;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSubSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/NNDescriptor;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subSet:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersion()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->version:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isListOp()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSetOp()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subSet:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSingleOp()Z
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/NNDescriptor;->isSetOp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/NNDescriptor;->isListOp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setBufferType(Lcom/samsung/android/sume/BufferType;)V
    .locals 0
    .param p1, "bufferType"    # Lcom/samsung/android/sume/BufferType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferType"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 229
    return-void
.end method

.method public blacklist setCache(Ljava/lang/String;)V
    .locals 0
    .param p1, "cache"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->cache:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public blacklist setEvaluator(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evaluator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p1, "evaluator":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->evaluator:Ljava/util/Map;

    .line 276
    return-void
.end method

.method public blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->extra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public blacklist setExtra(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->extra:Ljava/util/Map;

    return-void
.end method

.method public blacklist setFw(Lcom/samsung/android/sume/nn/NNFW;)V
    .locals 0
    .param p1, "fw"    # Lcom/samsung/android/sume/nn/NNFW;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fw"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->fw:Lcom/samsung/android/sume/nn/NNFW;

    .line 237
    return-void
.end method

.method public blacklist setInputNode(Lcom/samsung/android/sume/nn/NNNode;)V
    .locals 0
    .param p1, "inputNode"    # Lcom/samsung/android/sume/nn/NNNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputNode"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    .line 187
    return-void
.end method

.method public blacklist setModel(Lcom/samsung/android/sume/nn/Model;)V
    .locals 0
    .param p1, "Model"    # Lcom/samsung/android/sume/nn/Model;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Model"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->model:Lcom/samsung/android/sume/nn/Model;

    .line 146
    return-void
.end method

.method public blacklist setNnfd(Lcom/samsung/android/sume/nn/NNFileDescriptor;)V
    .locals 0
    .param p1, "nnfd"    # Lcom/samsung/android/sume/nn/NNFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nnfd"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->nnfd:Lcom/samsung/android/sume/nn/NNFileDescriptor;

    .line 221
    return-void
.end method

.method public blacklist setOutputNode(Lcom/samsung/android/sume/nn/NNNode;)V
    .locals 0
    .param p1, "outputNode"    # Lcom/samsung/android/sume/nn/NNNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputNode"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    .line 195
    return-void
.end method

.method public blacklist setOverlap(I)V
    .locals 0
    .param p1, "overlap"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlap"
        }
    .end annotation

    .line 211
    iput p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->overlap:I

    .line 212
    return-void
.end method

.method public blacklist setRuntime(Lcom/samsung/android/sume/op/OpRuntime;)V
    .locals 0
    .param p1, "runtime"    # Lcom/samsung/android/sume/op/OpRuntime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runtime"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->runtime:Lcom/samsung/android/sume/op/OpRuntime;

    .line 162
    return-void
.end method

.method public blacklist setShapeType(Lcom/samsung/android/sume/ShapeType;)V
    .locals 0
    .param p1, "shapeType"    # Lcom/samsung/android/sume/ShapeType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapeType"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->shapeType:Lcom/samsung/android/sume/ShapeType;

    .line 170
    return-void
.end method

.method public blacklist setSubList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/NNDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p1, "subList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/nn/NNDescriptor;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subList:Ljava/util/List;

    .line 294
    return-void
.end method

.method public blacklist setSubSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/NNDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 284
    .local p1, "subSet":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/nn/NNDescriptor;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->subSet:Ljava/util/List;

    .line 285
    return-void
.end method

.method public blacklist setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->tag:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public blacklist setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->version:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public blacklist toNNDescriptor()Lcom/samsung/android/sume/nn/NNDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/NNDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/NNDescriptor;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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

    .line 86
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->model:Lcom/samsung/android/sume/nn/Model;

    invoke-virtual {v0}, Lcom/samsung/android/sume/nn/Model;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->shapeType:Lcom/samsung/android/sume/ShapeType;

    invoke-virtual {v0}, Lcom/samsung/android/sume/ShapeType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->cache:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->inputNode:Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->outputNode:Lcom/samsung/android/sume/nn/NNNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->version:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->overlap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->nnfd:Lcom/samsung/android/sume/nn/NNFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->bufferType:Lcom/samsung/android/sume/BufferType;

    invoke-virtual {v0}, Lcom/samsung/android/sume/BufferType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNDescriptor;->fw:Lcom/samsung/android/sume/nn/NNFW;

    invoke-virtual {v0}, Lcom/samsung/android/sume/nn/NNFW;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method
