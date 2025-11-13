.class public Lcom/samsung/android/sume/ContentStat;
.super Ljava/lang/Object;
.source "ContentStat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/ContentStat;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist appliedModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;"
        }
    .end annotation
.end field

.field private transient blacklist buffer:Lcom/samsung/android/sume/MediaBuffer;

.field private blacklist bufferType:Lcom/samsung/android/sume/BufferType;

.field private final transient blacklist condition:Lcom/samsung/android/sume/Utils$StrongReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/Utils$StrongReference<",
            "Ljava/util/concurrent/locks/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist cv:Landroid/content/ContentValues;

.field private final blacklist extra:Lcom/samsung/android/sume/PDKMap;

.field private blacklist id:I

.field private blacklist inputShape:Lcom/samsung/android/sume/Shape;

.field private final transient blacklist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist numParts:I

.field private blacklist numProcessedParts:I

.field private blacklist opRuntime:Lcom/samsung/android/sume/op/OpRuntime;

.field private blacklist opRuntimes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/sume/op/OpRuntime;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist outputShape:Lcom/samsung/android/sume/Shape;

.field private blacklist parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/ContentStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist parts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/ContentStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist runtimeId:I

.field private blacklist status:Lcom/samsung/android/sume/Event;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/ContentStat;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/samsung/android/sume/ContentStat$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/ContentStat$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/ContentStat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/ContentValues;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "cv"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/samsung/android/sume/Event;->OK:Lcom/samsung/android/sume/Event;

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->status:Lcom/samsung/android/sume/Event;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/ContentStat;->id:I

    .line 42
    sget-object v1, Lcom/samsung/android/sume/op/OpRuntime;->NONE:Lcom/samsung/android/sume/op/OpRuntime;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->opRuntime:Lcom/samsung/android/sume/op/OpRuntime;

    .line 43
    iput v0, p0, Lcom/samsung/android/sume/ContentStat;->runtimeId:I

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->opRuntimes:Ljava/util/HashSet;

    .line 51
    sget-object v0, Lcom/samsung/android/sume/BufferType;->NONE:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->appliedModels:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->parts:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/samsung/android/sume/PDKMap;

    invoke-direct {v0}, Lcom/samsung/android/sume/PDKMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    new-instance v0, Lcom/samsung/android/sume/Utils$StrongReference;

    invoke-direct {v0}, Lcom/samsung/android/sume/Utils$StrongReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->condition:Lcom/samsung/android/sume/Utils$StrongReference;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/sume/ContentStat;->cv:Landroid/content/ContentValues;

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/ContentStat;->setId(I)V

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(ILcom/samsung/android/sume/MediaBuffer;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "buffer"    # Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "buffer"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/samsung/android/sume/Event;->OK:Lcom/samsung/android/sume/Event;

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->status:Lcom/samsung/android/sume/Event;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/ContentStat;->id:I

    .line 42
    sget-object v1, Lcom/samsung/android/sume/op/OpRuntime;->NONE:Lcom/samsung/android/sume/op/OpRuntime;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->opRuntime:Lcom/samsung/android/sume/op/OpRuntime;

    .line 43
    iput v0, p0, Lcom/samsung/android/sume/ContentStat;->runtimeId:I

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->opRuntimes:Ljava/util/HashSet;

    .line 51
    sget-object v0, Lcom/samsung/android/sume/BufferType;->NONE:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->appliedModels:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->parts:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/samsung/android/sume/PDKMap;

    invoke-direct {v0}, Lcom/samsung/android/sume/PDKMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    new-instance v0, Lcom/samsung/android/sume/Utils$StrongReference;

    invoke-direct {v0}, Lcom/samsung/android/sume/Utils$StrongReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->condition:Lcom/samsung/android/sume/Utils$StrongReference;

    .line 83
    iput-object p2, p0, Lcom/samsung/android/sume/ContentStat;->buffer:Lcom/samsung/android/sume/MediaBuffer;

    .line 84
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/ContentStat;->setId(I)V

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(ILcom/samsung/android/sume/op/OpRuntime;ILcom/samsung/android/sume/BufferType;Lcom/samsung/android/sume/Shape;Lcom/samsung/android/sume/Shape;Lcom/samsung/android/sume/ContentStat;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "opRuntime"    # Lcom/samsung/android/sume/op/OpRuntime;
    .param p3, "runtimeId"    # I
    .param p4, "bufferType"    # Lcom/samsung/android/sume/BufferType;
    .param p5, "inShape"    # Lcom/samsung/android/sume/Shape;
    .param p6, "outShape"    # Lcom/samsung/android/sume/Shape;
    .param p7, "parent"    # Lcom/samsung/android/sume/ContentStat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "opRuntime",
            "runtimeId",
            "bufferType",
            "inShape",
            "outShape",
            "parent"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/samsung/android/sume/Event;->OK:Lcom/samsung/android/sume/Event;

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->status:Lcom/samsung/android/sume/Event;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/ContentStat;->id:I

    .line 42
    sget-object v1, Lcom/samsung/android/sume/op/OpRuntime;->NONE:Lcom/samsung/android/sume/op/OpRuntime;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->opRuntime:Lcom/samsung/android/sume/op/OpRuntime;

    .line 43
    iput v0, p0, Lcom/samsung/android/sume/ContentStat;->runtimeId:I

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->opRuntimes:Ljava/util/HashSet;

    .line 51
    sget-object v0, Lcom/samsung/android/sume/BufferType;->NONE:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->appliedModels:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->parts:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/samsung/android/sume/PDKMap;

    invoke-direct {v0}, Lcom/samsung/android/sume/PDKMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    new-instance v0, Lcom/samsung/android/sume/Utils$StrongReference;

    invoke-direct {v0}, Lcom/samsung/android/sume/Utils$StrongReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->condition:Lcom/samsung/android/sume/Utils$StrongReference;

    .line 94
    iput p1, p0, Lcom/samsung/android/sume/ContentStat;->id:I

    .line 95
    iput-object p2, p0, Lcom/samsung/android/sume/ContentStat;->opRuntime:Lcom/samsung/android/sume/op/OpRuntime;

    .line 96
    iput p3, p0, Lcom/samsung/android/sume/ContentStat;->runtimeId:I

    .line 97
    iput-object p4, p0, Lcom/samsung/android/sume/ContentStat;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 98
    iput-object p5, p0, Lcom/samsung/android/sume/ContentStat;->inputShape:Lcom/samsung/android/sume/Shape;

    .line 99
    iput-object p6, p0, Lcom/samsung/android/sume/ContentStat;->outputShape:Lcom/samsung/android/sume/Shape;

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->parent:Ljava/lang/ref/WeakReference;

    .line 101
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/samsung/android/sume/Event;->OK:Lcom/samsung/android/sume/Event;

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->status:Lcom/samsung/android/sume/Event;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/ContentStat;->id:I

    .line 42
    sget-object v1, Lcom/samsung/android/sume/op/OpRuntime;->NONE:Lcom/samsung/android/sume/op/OpRuntime;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->opRuntime:Lcom/samsung/android/sume/op/OpRuntime;

    .line 43
    iput v0, p0, Lcom/samsung/android/sume/ContentStat;->runtimeId:I

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->opRuntimes:Ljava/util/HashSet;

    .line 51
    sget-object v0, Lcom/samsung/android/sume/BufferType;->NONE:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->appliedModels:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->parts:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/samsung/android/sume/PDKMap;

    invoke-direct {v0}, Lcom/samsung/android/sume/PDKMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    .line 62
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    new-instance v1, Lcom/samsung/android/sume/Utils$StrongReference;

    invoke-direct {v1}, Lcom/samsung/android/sume/Utils$StrongReference;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->condition:Lcom/samsung/android/sume/Utils$StrongReference;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sume/Event;->from(I)Lcom/samsung/android/sume/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->status:Lcom/samsung/android/sume/Event;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sume/ContentStat;->id:I

    .line 107
    const-class v1, Lcom/samsung/android/sume/op/OpRuntime;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/op/OpRuntime;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->opRuntime:Lcom/samsung/android/sume/op/OpRuntime;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sume/ContentStat;->runtimeId:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda1;-><init>()V

    .line 111
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->opRuntimes:Ljava/util/HashSet;

    .line 113
    const-class v1, Lcom/samsung/android/sume/Shape;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/Shape;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->inputShape:Lcom/samsung/android/sume/Shape;

    .line 114
    const-class v1, Lcom/samsung/android/sume/Shape;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/Shape;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->outputShape:Lcom/samsung/android/sume/Shape;

    .line 116
    const-class v1, Landroid/content/ContentValues;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->cv:Landroid/content/ContentValues;

    .line 118
    const-class v1, Lcom/samsung/android/sume/BufferType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 119
    const-class v1, Lcom/samsung/android/sume/MediaBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/MediaBuffer;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->buffer:Lcom/samsung/android/sume/MediaBuffer;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda1;-><init>()V

    .line 122
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda2;-><init>()V

    .line 123
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/sume/ContentStat;->appliedModels:Ljava/util/List;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sume/ContentStat;->numParts:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sume/ContentStat;->numProcessedParts:I

    .line 130
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 131
    sget-object v1, Lcom/samsung/android/sume/ContentStat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " #of extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sume/PDKMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method static synthetic blacklist lambda$new$0(I)Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1
    .param p0, "it"    # I

    .line 110
    const-class v0, Lcom/samsung/android/sume/op/OpRuntime;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(I)Lcom/samsung/android/sume/nn/Model;
    .locals 1
    .param p0, "e"    # I

    .line 122
    invoke-static {p0}, Lcom/samsung/android/sume/nn/Model;->from(I)Lcom/samsung/android/sume/nn/Model;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toString$2(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 3
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 333
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/ContentStat;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppliedModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->appliedModels:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getBuffer()Lcom/samsung/android/sume/MediaBuffer;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->buffer:Lcom/samsung/android/sume/MediaBuffer;

    return-object v0
.end method

.method public blacklist getContentValues()Landroid/content/ContentValues;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->cv:Landroid/content/ContentValues;

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

    .line 279
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/PDKMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/samsung/android/sume/ContentStat;->id:I

    return v0
.end method

.method public blacklist getInputShape()Lcom/samsung/android/sume/Shape;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->inputShape:Lcom/samsung/android/sume/Shape;

    return-object v0
.end method

.method public blacklist getMetaData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/PDKMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/PDKMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/PDKMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getMetaDataOf(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/sume/ContentStat;->getMetaData()Ljava/util/Map;

    move-result-object v0

    .line 300
    .local v0, "metaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method public blacklist getNumParts()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/samsung/android/sume/ContentStat;->numParts:I

    return v0
.end method

.method public blacklist getNumProcessedParts()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/samsung/android/sume/ContentStat;->numProcessedParts:I

    return v0
.end method

.method public blacklist getOpRuntime()Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->opRuntime:Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method public blacklist getOpRuntimes()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/sume/op/OpRuntime;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->opRuntimes:Ljava/util/HashSet;

    return-object v0
.end method

.method public blacklist getOutputShape()Lcom/samsung/android/sume/Shape;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->outputShape:Lcom/samsung/android/sume/Shape;

    return-object v0
.end method

.method public blacklist getParent()Lcom/samsung/android/sume/ContentStat;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method

.method public blacklist getParts()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/ContentStat;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->parts:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist getRuntimeId()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/samsung/android/sume/ContentStat;->runtimeId:I

    return v0
.end method

.method public blacklist getStatus()Lcom/samsung/android/sume/Event;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->status:Lcom/samsung/android/sume/Event;

    return-object v0
.end method

.method public blacklist inputPath()Ljava/lang/String;
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->cv:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const-string v1, "input-path"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public blacklist outputPath()Ljava/lang/String;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->cv:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "output-path"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public blacklist runBlocking(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            "Lcom/samsung/android/sume/Utils$StrongReference<",
            "Ljava/util/concurrent/locks/Condition;",
            ">;>;)V"
        }
    .end annotation

    .line 341
    .local p1, "operator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/locks/ReentrantLock;Lcom/samsung/android/sume/Utils$StrongReference<Ljava/util/concurrent/locks/Condition;>;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Lcom/samsung/android/sume/ContentStat;->condition:Lcom/samsung/android/sume/Utils$StrongReference;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    nop

    .line 347
    return-void

    .line 345
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/ContentStat;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    throw v0
.end method

.method public blacklist setAppliedModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appliedModels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;)V"
        }
    .end annotation

    .line 273
    .local p1, "appliedModels":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/nn/Model;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/ContentStat;->appliedModels:Ljava/util/List;

    .line 274
    return-void
.end method

.method public blacklist setBuffer(Lcom/samsung/android/sume/MediaBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/samsung/android/sume/ContentStat;->buffer:Lcom/samsung/android/sume/MediaBuffer;

    .line 265
    return-void
.end method

.method public blacklist setContentValues(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cv"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/samsung/android/sume/ContentStat;->cv:Landroid/content/ContentValues;

    .line 256
    return-void
.end method

.method public blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/ContentStat;
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

    .line 282
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/PDKMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-object p0
.end method

.method public blacklist setExtra(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/samsung/android/sume/ContentStat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meta"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/ContentStat;"
        }
    .end annotation

    .line 286
    .local p1, "meta":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/PDKMap;->putAll(Ljava/util/Map;)V

    .line 287
    return-object p0
.end method

.method public blacklist setId(I)V
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 179
    iput p1, p0, Lcom/samsung/android/sume/ContentStat;->id:I

    .line 180
    return-void
.end method

.method public blacklist setInputShape(Lcom/samsung/android/sume/Shape;)V
    .locals 0
    .param p1, "inputShape"    # Lcom/samsung/android/sume/Shape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputShape"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/samsung/android/sume/ContentStat;->inputShape:Lcom/samsung/android/sume/Shape;

    .line 189
    return-void
.end method

.method public blacklist setNumParts(I)V
    .locals 0
    .param p1, "numParts"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numParts"
        }
    .end annotation

    .line 230
    iput p1, p0, Lcom/samsung/android/sume/ContentStat;->numParts:I

    .line 231
    return-void
.end method

.method public blacklist setNumProcessedParts(I)V
    .locals 0
    .param p1, "numProcessedParts"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numProcessedParts"
        }
    .end annotation

    .line 238
    iput p1, p0, Lcom/samsung/android/sume/ContentStat;->numProcessedParts:I

    .line 239
    return-void
.end method

.method public blacklist setOpRuntime(Lcom/samsung/android/sume/op/OpRuntime;)V
    .locals 0
    .param p1, "opRuntime"    # Lcom/samsung/android/sume/op/OpRuntime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opRuntime"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/samsung/android/sume/ContentStat;->opRuntime:Lcom/samsung/android/sume/op/OpRuntime;

    .line 215
    return-void
.end method

.method public blacklist setOpRuntimes(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opRuntimes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/sume/op/OpRuntime;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p1, "opRuntimes":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/samsung/android/sume/op/OpRuntime;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/ContentStat;->opRuntimes:Ljava/util/HashSet;

    .line 207
    return-void
.end method

.method public blacklist setOutputShape(Lcom/samsung/android/sume/Shape;)V
    .locals 0
    .param p1, "outputShape"    # Lcom/samsung/android/sume/Shape;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputShape"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/samsung/android/sume/ContentStat;->outputShape:Lcom/samsung/android/sume/Shape;

    .line 198
    return-void
.end method

.method public blacklist setParent(Lcom/samsung/android/sume/ContentStat;)V
    .locals 1
    .param p1, "parent"    # Lcom/samsung/android/sume/ContentStat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/ContentStat;->parent:Ljava/lang/ref/WeakReference;

    .line 312
    return-void
.end method

.method public blacklist setParts(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/ContentStat;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p1, "parts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/sume/ContentStat;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/ContentStat;->parts:Ljava/util/HashMap;

    .line 247
    return-void
.end method

.method public blacklist setRuntimeId(I)V
    .locals 0
    .param p1, "runtimeId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runtimeId"
        }
    .end annotation

    .line 222
    iput p1, p0, Lcom/samsung/android/sume/ContentStat;->runtimeId:I

    .line 223
    return-void
.end method

.method public blacklist setStatus(Lcom/samsung/android/sume/Event;)V
    .locals 0
    .param p1, "status"    # Lcom/samsung/android/sume/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/samsung/android/sume/ContentStat;->status:Lcom/samsung/android/sume/Event;

    .line 172
    return-void
.end method

.method public blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    const-string/jumbo v1, "start-time"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/PDKMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 324
    .local v0, "startTimeMs":Ljava/lang/Long;
    iget-object v2, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    const-string v3, "end-time"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/PDKMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 325
    .local v2, "endTimeMs":Ljava/lang/Long;
    iget-object v3, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    const-string/jumbo v4, "save-time"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/PDKMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 327
    .local v1, "storeTimeMs":Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 328
    const-string v7, "========== stat[%s] ==========\n"

    invoke-static {v7, v5}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/sume/ContentStat;->inputShape:Lcom/samsung/android/sume/Shape;

    .line 329
    invoke-virtual {v8}, Lcom/samsung/android/sume/Shape;->getCols()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/samsung/android/sume/ContentStat;->inputShape:Lcom/samsung/android/sume/Shape;

    invoke-virtual {v8}, Lcom/samsung/android/sume/Shape;->getRows()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p0}, Lcom/samsung/android/sume/ContentStat;->inputPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string v8, "input [%dx%d]: %s\n"

    invoke-static {v8, v7}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/sume/ContentStat;->outputShape:Lcom/samsung/android/sume/Shape;

    .line 330
    invoke-virtual {v8}, Lcom/samsung/android/sume/Shape;->getCols()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/samsung/android/sume/ContentStat;->outputShape:Lcom/samsung/android/sume/Shape;

    invoke-virtual {v8}, Lcom/samsung/android/sume/Shape;->getRows()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p0}, Lcom/samsung/android/sume/ContentStat;->outputPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const-string/jumbo v8, "output [%dx%d]: %s\n"

    invoke-static {v8, v7}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/sume/ContentStat;->opRuntimes:Ljava/util/HashSet;

    .line 331
    invoke-virtual {v8}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v10, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v8, v10}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v8

    const-string v10, ","

    invoke-static {v10}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    const-string/jumbo v8, "runtimes: %s\n"

    invoke-static {v8, v7}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/sume/ContentStat;->numParts:I

    .line 332
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "# of parts: %s\n"

    invoke-static {v8, v7}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/sume/ContentStat;->parts:Ljava/util/HashMap;

    .line 333
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda4;

    invoke-direct {v8}, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    const-string v8, "\n"

    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    .line 334
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v0, v5, v4

    aput-object v2, v5, v9

    const-string/jumbo v7, "total processing time: %dms (Ts: %dms -> %dms)\n"

    invoke-static {v7, v5}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    .line 335
    const-string/jumbo v5, "time to writing output[ms]: %s\n"

    invoke-static {v5, v4}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    const-string v4, "==================================\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
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

    .line 141
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->status:Lcom/samsung/android/sume/Event;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Event;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/samsung/android/sume/ContentStat;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->opRuntime:Lcom/samsung/android/sume/op/OpRuntime;

    invoke-virtual {v0}, Lcom/samsung/android/sume/op/OpRuntime;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lcom/samsung/android/sume/ContentStat;->runtimeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->opRuntimes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->inputShape:Lcom/samsung/android/sume/Shape;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->outputShape:Lcom/samsung/android/sume/Shape;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->cv:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->bufferType:Lcom/samsung/android/sume/BufferType;

    invoke-virtual {v0}, Lcom/samsung/android/sume/BufferType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->buffer:Lcom/samsung/android/sume/MediaBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->appliedModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/ContentStat$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    iget v0, p0, Lcom/samsung/android/sume/ContentStat;->numParts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/samsung/android/sume/ContentStat;->numProcessedParts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    sget-object v0, Lcom/samsung/android/sume/ContentStat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# of extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {v2}, Lcom/samsung/android/sume/PDKMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/samsung/android/sume/ContentStat;->extra:Lcom/samsung/android/sume/PDKMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 164
    return-void
.end method
