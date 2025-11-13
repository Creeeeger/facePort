.class public Landroid/view/SurfaceControl$Transaction;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INVALID_COLOR:[F

.field public static final greylist-max-o sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field public blacklist mDebugName:Ljava/lang/String;

.field greylist-max-o mFreeNativeResources:Ljava/lang/Runnable;

.field public blacklist mLowDebugName:Ljava/lang/String;

.field public greylist-max-o mNativeObject:J

.field private final blacklist mReparentedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mResizedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeGetNativeTransactionFinalizer()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->INVALID_COLOR:[F

    new-instance v0, Landroid/view/SurfaceControl$Transaction$2;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction$2;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeCreateTransaction()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;-><init>(J)V

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    iput-wide p1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    sget-object v0, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->initializeCallStackDebugging()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Transaction;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl$Transaction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Transaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist apply(ZZ)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->applyResizedSurfaces()V

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->notifyReparentedSurfaces()V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeApplyTransaction(JZZ)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    const-string v2, "apply"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apply, lowDebugName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static blacklist getDefaultApplyToken()Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeGetDefaultApplyToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$addTransactionCommittedListener$0(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceControl$TransactionCommittedListener;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$addTransactionCompletedListener$1(Ljava/util/function/Consumer;Landroid/view/SurfaceControl$TransactionStats;)V
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$addTransactionCompletedListener$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$TransactionStats;)V
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/view/SurfaceControl$TransactionStats;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeReadTransactionFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    sget-object v0, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static blacklist sendSurfaceFlushJankData(Landroid/view/SurfaceControl;)V
    .locals 2

    invoke-static {p0}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSurfaceFlushJankData(J)V

    return-void
.end method

.method public static blacklist setDefaultApplyToken(Landroid/os/IBinder;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultApplyToken, caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDefaultApplyToken(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public blacklist addDebugName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    return-void
.end method

.method public blacklist addLowDebugName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    return-void
.end method

.method public whitelist addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;
    .locals 3

    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V

    nop

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v1, v2, v0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V

    return-object p0
.end method

.method public whitelist addTransactionCompletedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$TransactionStats;",
            ">;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    invoke-static {}, Lcom/android/window/flags/Flags;->sdkDesiredPresentTime()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SurfaceControl"

    const-string v1, "addTransactionCompletedListener was called but flag is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v1, v2, v0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V

    return-object p0
.end method

.method public blacklist addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V

    return-object p0
.end method

.method public whitelist apply()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    return-void
.end method

.method public greylist-max-o apply(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->apply(ZZ)V

    return-void
.end method

.method public blacklist applyAsyncUnsafe()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->apply(ZZ)V

    return-void
.end method

.method protected greylist-max-o applyResizedSurfaces()V
    .locals 6

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl;->resize(II)V

    monitor-exit v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method protected blacklist checkPreconditions(Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public blacklist clear()V
    .locals 4

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeClearTransaction(J)V

    :cond_0
    return-void
.end method

.method public whitelist clearFrameRate(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRate(JJFII)V

    return-object p0
.end method

.method public whitelist clearTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeClearTrustedPresentationCallback(JJ)V

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl$TrustedPresentationCallback;->-$$Nest$fgetmFreeNativeResources(Landroid/view/SurfaceControl$TrustedPresentationCallback;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/SurfaceControl;->-$$Nest$fputmTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationCallback;)V

    :cond_0
    return-object p0
.end method

.method public whitelist test-api close()V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getId()J
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeGetTransactionId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 13

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_VISIBILITY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_VISIBILITY:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v6, v0

    const-string v2, "hide"

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :cond_3
    iget-wide v7, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v9, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static/range {v7 .. v12}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    return-object p0
.end method

.method public whitelist merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .locals 5

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ", "

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    :cond_2
    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    if-nez v0, :cond_3

    iput-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeMergeTransaction(JJ)V

    return-object p0
.end method

.method protected blacklist notifyReparentedSurfaces()V
    .locals 8

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$OnReparentListener;

    iget-object v7, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl;

    invoke-interface {v6, p0, v7}, Landroid/view/SurfaceControl$OnReparentListener;->onReparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    nop

    monitor-exit v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    return-void
.end method

.method public blacklist remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-object p0
.end method

.method public blacklist removeCurrentInputFocus(I)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeRemoveCurrentInputFocus(JI)V

    return-object p0
.end method

.method public whitelist reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_REPARENT:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newParent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_REPARENT:Z

    const-string/jumbo v2, "reparent"

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :cond_1
    const-wide/16 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {p2}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    iget-wide v0, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    :cond_2
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-wide v6, v0

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeReparent(JJJ)V

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist sanitize(II)V
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSanitize(JII)V

    return-void
.end method

.method public whitelist setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .locals 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_ALPHA:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_ALPHA:Z

    const-string/jumbo v2, "setAlpha"

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :cond_1
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetAlpha(JJF)V

    return-object p0
.end method

.method public greylist-max-o setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetAnimationTransaction(J)V

    return-object p0
.end method

.method public blacklist setBackgroundBlurColorCurve(Landroid/view/SurfaceControl;Landroid/view/SemBlurInfo$ColorCurve;)Landroid/view/SurfaceControl$Transaction;
    .locals 8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget v0, p2, Landroid/view/SemBlurInfo$ColorCurve;->mMinX:F

    iget v1, p2, Landroid/view/SemBlurInfo$ColorCurve;->mMinY:F

    iget v2, p2, Landroid/view/SemBlurInfo$ColorCurve;->mMaxX:F

    iget v3, p2, Landroid/view/SemBlurInfo$ColorCurve;->mMaxY:F

    iget v4, p2, Landroid/view/SemBlurInfo$ColorCurve;->mCurveBias:F

    iget v5, p2, Landroid/view/SemBlurInfo$ColorCurve;->mSaturation:F

    const/4 v6, 0x6

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v0, 0x1

    aput v1, v6, v0

    const/4 v0, 0x2

    aput v2, v6, v0

    const/4 v0, 0x3

    aput v3, v6, v0

    const/4 v0, 0x4

    aput v4, v6, v0

    const/4 v0, 0x5

    aput v5, v6, v0

    move-object v0, v6

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v1, v2, v3, v4, v0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBackgroundBlurColorCurve(JJ[F)V

    return-object p0
.end method

.method public blacklist setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setBackgroundBlurRadius"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBackgroundBlurRadius(JJI)V

    return-object p0
.end method

.method public blacklist setBlurRegions(Landroid/view/SurfaceControl;[[F)Landroid/view/SurfaceControl$Transaction;
    .locals 6

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    array-length v5, p2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBlurRegions(JJ[[FI)V

    return-object p0
.end method

.method public blacklist setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;)Landroid/view/SurfaceControl$Transaction;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Landroid/hardware/HardwareBuffer;",
            "Landroid/hardware/SyncFence;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/SyncFence;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-virtual {p3}, Landroid/hardware/SyncFence;->getNativeFence()J

    move-result-wide v6

    move-object v5, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v7, 0x0

    move-object v6, p2

    move-object v9, p4

    invoke-static/range {v2 .. v9}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    :goto_0
    return-object p0
.end method

.method public whitelist setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setBufferSize"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setBufferTransform(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBufferTransform(JJI)V

    return-object p0
.end method

.method public blacklist setCachingHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetCachingHint(JJI)V

    return-object p0
.end method

.method public blacklist setCanOccludePresentation(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_0

    const/16 v0, 0x1000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v6, 0x1000

    invoke-static/range {v1 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    return-object p0
.end method

.method public greylist setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " g="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reparent"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColor(JJ[F)V

    return-object p0
.end method

.method public blacklist setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x88a0000

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8810000

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    return-object p0
.end method

.method public blacklist setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColorSpaceAgnostic(JJZ)V

    return-object p0
.end method

.method public blacklist setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;
    .locals 6

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColorTransform(JJ[F[F)V

    return-object p0
.end method

.method public greylist-max-r setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cornerRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setCornerRadius"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetCornerRadius(JJF)V

    return-object p0
.end method

.method public whitelist setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_CROP:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_CROP:Z

    const-string/jumbo v1, "setCrop"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->isValid()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v9, v6, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v11, v7, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v13, v8, Landroid/graphics/Rect;->left:I

    iget v14, v8, Landroid/graphics/Rect;->top:I

    iget v15, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-static/range {v9 .. v16}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    goto :goto_0

    :cond_2
    iget-wide v0, v6, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, v7, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-static/range {v16 .. v23}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    :goto_0
    return-object v6
.end method

.method public whitelist setDamageRegion(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDamageRegion(JJLandroid/graphics/Region;)V

    return-object p0
.end method

.method public whitelist setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDataSpace(JJI)V

    return-object p0
.end method

.method public blacklist setDefaultFrameRateCompatibility(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDefaultFrameRateCompatibility(JJI)V

    return-object p0
.end method

.method public blacklist setDesintationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .locals 8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDestinationFrame(JJIIII)V

    return-object p0
.end method

.method public blacklist setDesintationFrame(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDestinationFrame(JJIIII)V

    return-object p0
.end method

.method public whitelist setDesiredHdrHeadroom(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDesiredHdrHeadroom(JJF)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredRatio must be finite && >= 1.0f or 0; got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDesiredPresentTimeNanos(J)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    invoke-static {}, Lcom/android/window/flags/Flags;->sdkDesiredPresentTime()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SurfaceControl"

    const-string v1, "addTransactionCompletedListener was called but flag is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDesiredPresentTimeNanos(JJ)V

    return-object p0
.end method

.method public blacklist setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDimmingEnabled(JJZ)V

    return-object p0
.end method

.method public blacklist setDisableSuperHDR(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 12

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_0

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/high16 v4, 0x10000000

    const/high16 v5, 0x10000000

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/high16 v11, 0x10000000

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    :goto_0
    return-object p0
.end method

.method public blacklist setDisplayDecoration(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 12

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_0

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x200

    const/16 v5, 0x200

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x200

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    :goto_0
    return-object p0
.end method

.method public blacklist setDisplayFlags(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayFlags(JLandroid/os/IBinder;I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v3 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "layerStackRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayToken must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist setDisplayReluminoEffect(JFI)Landroid/view/SurfaceControl$Transaction;
    .locals 3

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v1, v2, v0, p3, p4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayReluminoEffect(JLandroid/os/IBinder;FI)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "displayToken must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySize(JLandroid/os/IBinder;II)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;
    .locals 5

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p2, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDropInputMode(JJI)V

    return-object p0
.end method

.method public blacklist setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetEarlyWakeupEnd(J)V

    return-object p0
.end method

.method public blacklist setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetEarlyWakeupStart(J)V

    return-object p0
.end method

.method public whitelist setExtendedRangeBrightness(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .locals 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_1

    invoke-static {p3}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetExtendedRangeBrightness(JJFF)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredRatio must be finite && >= 1.0f; got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentBufferRatio must be finite && >= 1.0f; got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setFixedTransformHint"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFixedTransformHint(JJI)V

    return-object p0
.end method

.method public blacklist setFocusedWindow(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V

    return-object p0
.end method

.method public whitelist setFrameRate(Landroid/view/SurfaceControl;FI)Landroid/view/SurfaceControl$Transaction;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;
    .locals 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRate(JJFII)V

    return-object p0
.end method

.method public blacklist setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;
    .locals 6

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRateCategory(JJIZ)V

    return-object p0
.end method

.method public blacklist setFrameRateSelectionPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRateSelectionPriority(JJI)V

    return-object p0
.end method

.method public blacklist setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRateSelectionStrategy(JJI)V

    return-object p0
.end method

.method public whitelist setFrameTimeline(J)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    invoke-static {}, Lcom/android/window/flags/Flags;->sdkDesiredPresentTime()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SurfaceControl"

    const-string v1, "addTransactionCompletedListener was called but flag is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameTimelineVsync(JJ)V

    return-object p0
.end method

.method public blacklist setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameTimelineVsync(JJ)V

    return-object p0
.end method

.method public whitelist setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;
    .locals 8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v6, p4

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    return-object p0
.end method

.method public blacklist setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    return-object p0
.end method

.method public whitelist setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$fgetmIgnoreToUpdateByOtherProcess(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$fgetmOwnerPid(Landroid/view/SurfaceControl;)I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLayer, ignored due to request of other process, layer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_LAYER:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "z="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_LAYER:Z

    const-string/jumbo v2, "setLayer"

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :cond_2
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLayer(JJI)V

    return-object p0
.end method

.method public greylist-max-o setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLayerStack(JJI)V

    return-object p0
.end method

.method public greylist setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    .locals 16

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_TRANSFORM:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    move/from16 v12, p5

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v15, p2

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dtdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v14, p3

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dtdy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v13, p4

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dsdy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v12, p5

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_TRANSFORM:Z

    const-string/jumbo v1, "setMatrix"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :goto_1
    iget-wide v7, v6, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v0, p1

    iget-wide v9, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-static/range {v7 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMatrix(JJFFFF)V

    return-object v6
.end method

.method public greylist setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;
    .locals 7

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 v0, 0x3

    aget v4, p3, v0

    const/4 v0, 0x1

    aget v5, p3, v0

    const/4 v0, 0x4

    aget v6, p3, v0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x2

    aget v0, p3, v0

    const/4 v1, 0x5

    aget v1, p3, v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public blacklist setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;ILandroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object p0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public blacklist setMetadata(Landroid/view/SurfaceControl;ILandroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    .locals 6

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMetadata(JJILandroid/os/Parcel;)V

    return-object p0
.end method

.method public whitelist setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "opaque="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setOpaque"

    invoke-virtual {v3, v5, v0, v1, v4}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-wide v6, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_0

    :cond_1
    iget-wide v12, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v14, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v12 .. v17}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    :goto_0
    return-object v0
.end method

.method public whitelist setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .locals 15

    move-object v6, p0

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_TRANSFORM:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v13, p2

    move/from16 v14, p3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v13, p2

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v14, p3

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_TRANSFORM:Z

    const-string/jumbo v1, "setPosition"

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :goto_1
    iget-wide v7, v6, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v0, p1

    iget-wide v9, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-static/range {v7 .. v12}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetPosition(JJFF)V

    return-object v6
.end method

.method public greylist-max-o setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_LAYER:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v15, p3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "relTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v15, p3

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_LAYER:Z

    const-string/jumbo v1, "setRelativeLayer"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :goto_1
    iget-wide v8, v6, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v12, v7, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v14, p3

    invoke-static/range {v8 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetRelativeLayer(JJJI)V

    return-object v6
.end method

.method public whitelist setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .locals 9

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Negative value passed in for scaleX"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v0, "Negative value passed in for scaleY"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setScale"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_2
    iget-wide v3, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetScale(JJFF)V

    return-object p0
.end method

.method public greylist-max-o setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "secure="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setSecure"

    invoke-virtual {v3, v5, v0, v1, v4}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-wide v6, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v10, 0x80

    const/16 v11, 0x80

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_0

    :cond_1
    iget-wide v12, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v14, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v16, 0x0

    const/16 v17, 0x80

    invoke-static/range {v12 .. v17}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    :goto_0
    return-object v0
.end method

.method public blacklist setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setShadowRadius"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetShadowRadius(JJF)V

    return-object p0
.end method

.method public blacklist setSkipScreenshot(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 12

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_0

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x40

    const/16 v5, 0x40

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x40

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    :goto_0
    return-object p0
.end method

.method public blacklist setStretchEffect(Landroid/view/SurfaceControl;FFFFFFFFFF)Landroid/view/SurfaceControl$Transaction;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v1, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v1 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetStretchEffect(JJFFFFFFFFFF)V

    return-object v0
.end method

.method public greylist-max-o setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unsetFixedTransformHint"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-object p0
.end method

.method public blacklist setTrustedOverlay(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetTrustedOverlay(JJI)V

    return-object p0
.end method

.method public blacklist setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 1

    nop

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl$TrustedPresentationThresholds;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction$1;

    invoke-direct {v0, p0, p3, p4}, Landroid/view/SurfaceControl$Transaction$1;-><init>(Landroid/view/SurfaceControl$Transaction;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;

    move-result-object v1

    invoke-static {v1}, Landroid/view/SurfaceControl$TrustedPresentationCallback;->-$$Nest$fgetmFreeNativeResources(Landroid/view/SurfaceControl$TrustedPresentationCallback;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0}, Landroid/view/SurfaceControl$TrustedPresentationCallback;->-$$Nest$fgetmNativeObject(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J

    move-result-wide v6

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V

    invoke-static {p1, v0}, Landroid/view/SurfaceControl;->-$$Nest$fputmTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationCallback;)V

    return-object p0
.end method

.method public whitelist setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .locals 16

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_CROP:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v15, p2

    move/from16 v14, p3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v15, p2

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v14, p3

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_CROP:Z

    const-string/jumbo v1, "setWindowCrop"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :goto_1
    iget-wide v7, v6, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v0, p1

    iget-wide v9, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-static/range {v7 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    return-object v6
.end method

.method public greylist setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 24
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_CROP:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_CROP:Z

    const-string/jumbo v1, "setWindowCrop"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v8, :cond_2

    iget-wide v9, v6, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v11, v7, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v13, v8, Landroid/graphics/Rect;->left:I

    iget v14, v8, Landroid/graphics/Rect;->top:I

    iget v15, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-static/range {v9 .. v16}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    goto :goto_0

    :cond_2
    iget-wide v0, v6, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, v7, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-static/range {v16 .. v23}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    :goto_0
    return-object v6
.end method

.method public greylist show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 13

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_VISIBILITY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_VISIBILITY:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v6, v0

    const-string/jumbo v2, "show"

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Z)V

    :cond_3
    iget-wide v7, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v9, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v7 .. v12}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    return-object p0
.end method

.method public blacklist startChangeResolution(Landroid/os/IBinder;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startChangeResolution, enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeStartChangeResolution(JLandroid/os/IBinder;Z)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startSurfaceAnimation(Landroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeStartSurfaceAnimation(JJLjava/lang/String;)V

    return-object p0
.end method

.method public blacklist unsetBuffer(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeUnsetBuffer(JJ)V

    return-object p0
.end method

.method public blacklist unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 5

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string/jumbo v1, "unsetColor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    sget-object v4, Landroid/view/SurfaceControl$Transaction;->INVALID_COLOR:[F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColor(JJ[F)V

    return-object p0
.end method

.method public blacklist unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 5

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string/jumbo v1, "unsetFixedTransformHint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFixedTransformHint(JJI)V

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeClearTransaction(J)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mLowDebugName:Ljava/lang/String;

    :cond_2
    return-void
.end method
