.class public Lcom/samsung/android/sume/core/buffer/BufferExtension;
.super Ljava/lang/Object;
.source "BufferExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;,
        Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;,
        Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist binaryKeySEP:Ljava/lang/String; = "->"

.field private static volatile blacklist sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;


# instance fields
.field private final blacklist allocMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist deallocMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist describeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "*",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist extensionClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist internalBufferHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist stringfyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "*",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist transformMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist wrappedTransformList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->wrappedTransformList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->internalBufferHandlerMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->newRegistry()Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/lang/Number;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda21;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addDescribe(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda26;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda26;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addDescribe(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda27;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda27;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addDescribe(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/lang/Number;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda28;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Ljava/lang/Number;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda29;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda30;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda30;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda31;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda31;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/hardware/HardwareBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda32;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda32;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda33;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda33;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda34;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda34;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda22;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Lcom/samsung/android/sume/core/UniExifInterface;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda23;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda25;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addDealloc(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getDescribe()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerDescribe(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getAlloc()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerAlloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getDealloc()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerDealloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getStringfy()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerStringfy(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getTransform()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerTransform(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getWrappedTransform()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerWrappedTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterDescribe(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1200(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterAlloc(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterDealloc(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1400(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1500(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterStringfy(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerDescribe(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerAlloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerDealloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerTransform(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerWrappedTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerStringfy(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist addToClassMap(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static blacklist alloc(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doAlloc(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist dealloc(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doDealloc(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist describe(Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doDescribe(Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private blacklist doAlloc(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method private blacklist doDealloc(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method private blacklist doDescribe(Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method private blacklist doStringfy(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private blacklist doTransform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;",
            "Ljava/lang/Class<",
            "TR;>;)TR;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-direct {p0, v0, p3, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableBinaryKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;->apply(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private blacklist findAvailableBinaryKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v8, p3

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no transform exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", find alternatives"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda38;

    move-object v9, v1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda38;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda39;

    invoke-direct {v1, v8}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda39;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda40;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object v4, v7

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object v11, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda40;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v11, v7

    :goto_0
    return-object v11
.end method

.method private blacklist findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private blacklist getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;-><init>()V

    sput-object v1, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    return-object v0
.end method

.method private blacklist getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isRequiredToRelease(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportedTransform(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static blacklist isWrappedTransform(Ljava/util/function/BiFunction;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->wrappedTransformList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$doStringfy$28(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$findAvailableBinaryKey$32(Landroid/util/Pair;Landroid/util/Pair;)Z
    .locals 2

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$findAvailableBinaryKey$35(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/UnsupportedOperationException;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no extension exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$findAvailableUnaryKey$29(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method static synthetic blacklist lambda$findAvailableUnaryKey$30(Ljava/lang/Class;)Ljava/lang/UnsupportedOperationException;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no extension exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/Number;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    const/4 v1, 0x1

    invoke-static {v1, v1}, Lcom/samsung/android/sume/core/format/Shape;->of(II)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    instance-of v1, p0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->U8C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_0

    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->U32C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->F32C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "implement not yet"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic blacklist lambda$new$1(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->NONE:Lcom/samsung/android/sume/core/types/MediaType;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/sume/core/format/Shape;->of(II)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$10(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/UniExifInterface;
    .locals 1

    const-string v0, "exif"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    invoke-static {p1}, Lcom/samsung/android/sume/core/UniExifInterface;->of(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/UniExifInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$11(Landroid/hardware/HardwareBuffer;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[w=%d, h=%d, fmt=%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$2(Landroid/graphics/Bitmap;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/Shape;->rectOf(II)Landroid/graphics/Rect;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->U8C3:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->RGB:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {p0}, Lcom/samsung/android/sume/core/types/ColorSpace;->of(Landroid/graphics/Bitmap;)Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->size()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v2, v3, v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8C4:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41200000    # 10.0f

    mul-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v3, v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U16C3:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_0

    :cond_1
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v2, 0x3ec00000    # 0.375f

    cmpl-float v2, v3, v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U16C4:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->GRAY:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :goto_0
    return-object v0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byte count +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is differ from calculated buffer size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic blacklist lambda$new$3(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Number;)Ljava/nio/ByteBuffer;
    .locals 4

    instance-of v0, p1, Ljava/lang/Integer;

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported number type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$new$4(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Ljava/lang/Number;
    .locals 4

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "media is not scala"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/sume/core/Def;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isLong()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isByte()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isShort()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported scala type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$new$5(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fd=%d, len=%ld"

    invoke-static {v1, v0}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$6(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Landroid/hardware/HardwareBuffer;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->create(Lcom/samsung/android/sume/core/format/MediaFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->copyFromByteBuffer(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;Landroid/hardware/HardwareBuffer;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$7(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/hardware/HardwareBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->copyToByteBuffer(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/hardware/HardwareBuffer;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$8(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$9(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerTransform$22(Ljava/util/Map$Entry;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .locals 4

    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/function/BiFunction;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BiFunction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;-><init>([Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$unRegisterAlloc$16(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterAlloc$17(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda10;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterDealloc$19(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterDealloc$20(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda41;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda41;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterDescribe$13(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterDescribe$14(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda15;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterStringfy$26(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterStringfy$27(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda20;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterTransform$23(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterTransform$24(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda16;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static blacklist newRegistry()Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$1;)V

    return-object v0
.end method

.method public static blacklist newUnregistry()Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$1;)V

    return-object v0
.end method

.method static blacklist popInternalBufferHandler()Ljava/util/function/Consumer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->internalBufferHandlerMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    return-object v0
.end method

.method public static blacklist putInternalBufferHandler(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->internalBufferHandlerMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist registerAlloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "*>;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda37;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method private blacklist registerDealloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "*>;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method private blacklist registerDescribe(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method private blacklist registerStringfy(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda42;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method private blacklist registerTransform(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "**>;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method private blacklist registerWrappedTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->wrappedTransformList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static blacklist reset()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static blacklist stringfy(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doStringfy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;",
            "Ljava/lang/Class<",
            "TR;>;)TR;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doTransform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist unRegisterAlloc(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda14;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method

.method private blacklist unRegisterDealloc(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda17;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method

.method private blacklist unRegisterDescribe(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda18;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method

.method private blacklist unRegisterStringfy(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method

.method private blacklist unRegisterTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method


# virtual methods
.method synthetic blacklist lambda$findAvailableBinaryKey$31$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "->"

    invoke-virtual {p6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-nez v3, :cond_1

    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find alternative for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return v0
.end method

.method synthetic blacklist lambda$findAvailableBinaryKey$33$com-samsung-android-sume-core-buffer-BufferExtension(Landroid/util/Pair;Ljava/lang/String;Ljava/util/Map;Landroid/util/Pair;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .locals 6

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find 2nd order combinations for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;-><init>([Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;)V

    return-object v2
.end method

.method synthetic blacklist lambda$findAvailableBinaryKey$34$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Landroid/util/Pair;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .locals 2

    nop

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda35;

    invoke-direct {v1, p4}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda35;-><init>(Landroid/util/Pair;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda36;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Landroid/util/Pair;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    return-object v0
.end method

.method synthetic blacklist lambda$findAvailableBinaryKey$36$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .locals 2

    nop

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda13;

    invoke-direct {v1, p5, p6}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    return-object v0
.end method

.method synthetic blacklist lambda$registerAlloc$15$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$registerDealloc$18$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$registerDescribe$12$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$registerStringfy$25$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$registerTransform$21$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
