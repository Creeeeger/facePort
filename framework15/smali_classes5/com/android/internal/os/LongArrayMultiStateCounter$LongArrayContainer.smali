.class public Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;
.super Ljava/lang/Object;
.source "LongArrayMultiStateCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LongArrayMultiStateCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongArrayContainer"
.end annotation


# static fields
.field private static blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mLength:I

.field final blacklist mNativeObject:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLength(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    return p0
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    invoke-static {p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->native_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    invoke-direct {p0}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->registerNativeAllocation()V

    return-void
.end method

.method private static native blacklist native_combineValues(J[J[I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_getReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_getValues(J[J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_init(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_setValues(J[J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private blacklist registerNativeAllocation()V
    .locals 4

    sget-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->native_getReleaseFunc()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->sRegistry:Llibcore/util/NativeAllocationRegistry;

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
    sget-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private blacklist registerNativeAllocation$ravenwood()V
    .locals 0

    return-void
.end method


# virtual methods
.method public blacklist combineValues([J[I)Z
    .locals 3

    array-length v0, p2

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->native_combineValues(J[J[I)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong index map size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getValues([J)V
    .locals 3

    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->native_getValues(J[J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setValues([J)V
    .locals 3

    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->native_setValues(J[J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    new-array v0, v0, [J

    invoke-virtual {p0, v0}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->getValues([J)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
