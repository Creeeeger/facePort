.class public Landroid/app/servertransaction/TransactionExecutorHelper;
.super Ljava/lang/Object;
.source "TransactionExecutorHelper.java"


# static fields
.field private static final greylist-max-o DESTRUCTION_PENALTY:I = 0xa

.field private static final greylist-max-o ON_RESUME_PRE_EXCUTION_STATES:[I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mLifecycleSequence:Landroid/util/IntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-class v0, Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-void
.end method

.method private static blacklist findNextLifecycleItemIndex(Ljava/util/List;ILandroid/os/IBinder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;I",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v2}, Landroid/app/servertransaction/ClientTransactionItem;->isActivityLifecycleItem()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/app/ClientTransactionHandler;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getActivityName(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;
    .locals 3

    invoke-virtual {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Landroid/os/IBinder;ZZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/app/servertransaction/StopActivityItem;->obtain(Landroid/os/IBinder;)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/app/servertransaction/PauseActivityItem;->obtain(Landroid/os/IBinder;)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v1

    nop

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static blacklist getShortActivityName(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getActivityForToken(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getStateName(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lifecycle state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "ON_RESTART"

    return-object v0

    :pswitch_1
    const-string v0, "ON_DESTROY"

    return-object v0

    :pswitch_2
    const-string v0, "ON_STOP"

    return-object v0

    :pswitch_3
    const-string v0, "ON_PAUSE"

    return-object v0

    :pswitch_4
    const-string v0, "ON_RESUME"

    return-object v0

    :pswitch_5
    const-string v0, "ON_START"

    return-object v0

    :pswitch_6
    const-string v0, "ON_CREATE"

    return-object v0

    :pswitch_7
    const-string v0, "PRE_ON_CREATE"

    return-object v0

    :pswitch_8
    const-string v0, "UNDEFINED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static greylist-max-o lastCallbackRequestingState(Landroid/app/servertransaction/ClientTransaction;)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->getCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/servertransaction/ActivityLifecycleItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/app/servertransaction/TransactionExecutorHelper;->lastCallbackRequestingStateIndex(Ljava/util/List;IILandroid/os/IBinder;)I

    move-result v1

    return v1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist lastCallbackRequestingStateIndex(Ljava/util/List;IILandroid/os/IBinder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;II",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, -0x1

    move v2, p2

    :goto_0
    if-lt v2, p1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p3, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_2

    :cond_0
    move v0, v4

    move v1, v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static greylist-max-o pathInvolvesDestruction(Landroid/util/IntArray;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static blacklist shouldExcludeLastLifecycleState(Ljava/util/List;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v5, p1, 0x1

    invoke-static {p0, v5, v1}, Landroid/app/servertransaction/TransactionExecutorHelper;->findNextLifecycleItemIndex(Ljava/util/List;ILandroid/os/IBinder;)I

    move-result v5

    if-ne v5, v4, :cond_1

    return v3

    :cond_1
    nop

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {v4}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v6

    if-eq v2, v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 v6, v5, -0x1

    invoke-static {p0, p1, v6, v1}, Landroid/app/servertransaction/TransactionExecutorHelper;->lastCallbackRequestingStateIndex(Ljava/util/List;IILandroid/os/IBinder;)I

    move-result v6

    if-ne p1, v6, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v3
.end method

.method static blacklist tId(Landroid/app/servertransaction/ClientTransaction;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist transactionToString(Landroid/app/servertransaction/ClientTransaction;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p0}, Landroid/app/servertransaction/TransactionExecutorHelper;->tId(Landroid/app/servertransaction/ClientTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p1}, Landroid/app/servertransaction/ClientTransaction;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public greylist-max-o getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p2, :cond_5

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Landroid/app/servertransaction/TransactionExecutorHelper;->TAG:Ljava/lang/String;

    const-string v2, "ActivityClientRecord was null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_4

    aget v4, p2, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecyclePath(IIZ)Landroid/util/IntArray;

    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-static {v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->pathInvolvesDestruction(Landroid/util/IntArray;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0xa

    :cond_2
    if-le v3, v4, :cond_3

    move v3, v4

    aget v1, p2, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public greylist-max-o getClosestPreExecutionState(Landroid/app/ActivityThread$ActivityClientRecord;I)I
    .locals 3

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-execution states for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    invoke-virtual {p0, p1, v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I

    move-result v0

    return v0

    :sswitch_1
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public greylist-max-o getLifecyclePath(IIZ)Landroid/util/IntArray;
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    if-eq p2, v0, :cond_d

    const/4 v0, 0x7

    if-eq p1, v0, :cond_c

    if-eq p2, v0, :cond_c

    if-nez p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only start in pre-onCreate state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-lt p2, p1, :cond_4

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_6

    :cond_2
    add-int/lit8 v0, p1, 0x1

    :goto_1
    if-gt v0, p2, :cond_3

    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    goto :goto_6

    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    const/4 v3, 0x3

    if-ne p2, v3, :cond_5

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_6

    :cond_5
    if-gt p1, v2, :cond_8

    if-lt p2, v1, :cond_8

    add-int/lit8 v1, p1, 0x1

    :goto_2
    if-gt v1, v2, :cond_6

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    const/4 v0, 0x2

    :goto_3
    if-gt v0, p2, :cond_7

    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    goto :goto_6

    :cond_8
    add-int/lit8 v0, p1, 0x1

    :goto_4
    const/4 v1, 0x6

    if-gt v0, v1, :cond_9

    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    :goto_5
    if-gt v0, p2, :cond_a

    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz p3, :cond_b

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->remove(I)V

    :cond_b
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t start or finish in intermittent RESTART state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t resolve lifecycle path for undefined state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
