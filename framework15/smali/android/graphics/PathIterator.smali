.class public Landroid/graphics/PathIterator;
.super Ljava/lang/Object;
.source "PathIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PathIterator$Segment;,
        Landroid/graphics/PathIterator$Verb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/graphics/PathIterator$Segment;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist POINT_ARRAY_SIZE:I = 0x8

.field public static final whitelist VERB_CLOSE:I = 0x5

.field public static final whitelist VERB_CONIC:I = 0x3

.field public static final whitelist VERB_CUBIC:I = 0x4

.field public static final whitelist VERB_DONE:I = 0x6

.field public static final whitelist VERB_LINE:I = 0x1

.field public static final whitelist VERB_MOVE:I = 0x0

.field public static final whitelist VERB_QUAD:I = 0x2

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mCachedVerb:I

.field private blacklist mDone:Z

.field private final blacklist mNativeIterator:J

.field private final blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mPathGenerationId:I

.field private final blacklist mPointsAddress:J

.field private final blacklist mPointsArray:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    nop

    const-class v0, Landroid/graphics/PathIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/PathIterator;->nGetFinalizer()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/PathIterator;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/Path;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    iput-object p1, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    iget-wide v0, v0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/PathIterator;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    iget-object v0, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->getGenerationId()I

    move-result v0

    iput v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    iget-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    sget-object v1, Landroid/graphics/PathIterator;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    invoke-virtual {v1, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private blacklist getReturnVerb(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Landroid/graphics/PathIterator;->nextInternal()I

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_6
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static native blacklist nCreate(J)J
.end method

.method private static native blacklist nGetFinalizer()J
.end method

.method private static native blacklist nNext(JJ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nPeek(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private blacklist nextInternal()I
    .locals 6

    iget-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    iget-object v2, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->getGenerationId()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-wide v2, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    iget-wide v4, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/PathIterator;->nNext(JJ)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/PathIterator;->mDone:Z

    :cond_1
    return v0

    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Iterator cannot be used on modified Path"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .locals 2

    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/graphics/PathIterator;->nextInternal()I

    move-result v0

    iput v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    :cond_0
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist next([FI)I
    .locals 4

    array-length v0, p1

    add-int/lit8 v1, p2, 0x8

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    invoke-direct {p0, v0}, Landroid/graphics/PathIterator;->getReturnVerb(I)I

    move-result v0

    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    iget-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "points array must be able to hold at least 8 entries"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist next()Landroid/graphics/PathIterator$Segment;
    .locals 6

    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    invoke-direct {p0, v0}, Landroid/graphics/PathIterator;->getReturnVerb(I)I

    move-result v0

    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v3, 0x6

    aget v1, v2, v3

    :cond_0
    const/16 v2, 0x8

    new-array v3, v2, [F

    iget-object v4, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Landroid/graphics/PathIterator$Segment;

    invoke-direct {v2, v0, v3, v1}, Landroid/graphics/PathIterator$Segment;-><init>(I[FF)V

    return-object v2
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peek()I
    .locals 2

    iget v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    iget-object v1, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->getGenerationId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    invoke-static {v0, v1}, Landroid/graphics/PathIterator;->nPeek(J)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Iterator cannot be used on modified Path"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
