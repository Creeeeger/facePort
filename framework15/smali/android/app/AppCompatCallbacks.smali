.class public final Landroid/app/AppCompatCallbacks;
.super Ljava/lang/Object;
.source "AppCompatCallbacks.java"

# interfaces
.implements Landroid/compat/Compatibility$BehaviorChangeDelegate;


# instance fields
.field private final blacklist mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field private final blacklist mDisabledChanges:[J

.field private final blacklist mLoggableChanges:[J


# direct methods
.method private constructor blacklist <init>([J[J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Landroid/app/AppCompatCallbacks;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    return-void
.end method

.method private blacklist changeIdInChangeList([JJ)Z
    .locals 1

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist install([J[J)V
    .locals 1

    new-instance v0, Landroid/app/AppCompatCallbacks;

    invoke-direct {v0, p0, p1}, Landroid/app/AppCompatCallbacks;-><init>([J[J)V

    invoke-static {v0}, Landroid/compat/Compatibility;->setBehaviorChangeDelegate(Landroid/compat/Compatibility$BehaviorChangeDelegate;)V

    return-void
.end method

.method private blacklist reportChange(JIZ)V
    .locals 7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    move v1, v6

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZ)V

    return-void
.end method


# virtual methods
.method public blacklist test-api isChangeEnabled(J)Z
    .locals 3

    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    invoke-direct {p0, v0, p1, p2}, Landroid/app/AppCompatCallbacks;->changeIdInChangeList([JJ)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    invoke-direct {p0, v2, p1, p2}, Landroid/app/AppCompatCallbacks;->changeIdInChangeList([JJ)Z

    move-result v2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/app/AppCompatCallbacks;->reportChange(JIZ)V

    return v1

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/app/AppCompatCallbacks;->reportChange(JIZ)V

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist test-api onChangeReported(J)V
    .locals 2

    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    invoke-direct {p0, v0, p1, p2}, Landroid/app/AppCompatCallbacks;->changeIdInChangeList([JJ)Z

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/app/AppCompatCallbacks;->reportChange(JIZ)V

    return-void
.end method
