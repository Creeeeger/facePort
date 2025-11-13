.class public Landroid/telecom/Logging/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/Session$Info;
    }
.end annotation


# static fields
.field public static final blacklist CONTINUE_SUBSESSION:Ljava/lang/String; = "CONTINUE_SUBSESSION"

.field public static final blacklist CREATE_SUBSESSION:Ljava/lang/String; = "CREATE_SUBSESSION"

.field public static final blacklist END_SESSION:Ljava/lang/String; = "END_SESSION"

.field public static final blacklist END_SUBSESSION:Ljava/lang/String; = "END_SUBSESSION"

.field public static final blacklist EXTERNAL_INDICATOR:Ljava/lang/String; = "E-"

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "Session"

.field private static final blacklist SESSION_RECURSION_LIMIT:I = 0x19

.field public static final blacklist SESSION_SEPARATION_CHAR_CHILD:Ljava/lang/String; = "_"

.field public static final blacklist START_EXTERNAL_SESSION:Ljava/lang/String; = "START_EXTERNAL_SESSION"

.field public static final blacklist START_SESSION:Ljava/lang/String; = "START_SESSION"

.field public static final blacklist SUBSESSION_SEPARATION_CHAR:Ljava/lang/String; = "->"

.field public static final blacklist TRUNCATE_STRING:Ljava/lang/String; = "..."

.field public static final blacklist UNDEFINED:I = -0x1


# instance fields
.field private blacklist mChildCounter:I

.field private blacklist mChildSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutionEndTimeMs:J

.field private blacklist mExecutionStartTimeMs:J

.field private blacklist mFullMethodPathCache:Ljava/lang/String;

.field private blacklist mIsCompleted:Z

.field private blacklist mIsExternal:Z

.field private blacklist mIsStartedFromActiveSession:Z

.field private blacklist mOwnerInfo:Ljava/lang/String;

.field private blacklist mParentSession:Landroid/telecom/Logging/Session;

.field private blacklist mSessionId:Ljava/lang/String;

.field private blacklist mShortMethodName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetFullSessionId(Landroid/telecom/Logging/Session;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSessionExternal(Landroid/telecom/Logging/Session;)Z
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Logging/Session;->isSessionExternal()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    iput-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    iput v0, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    iput-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    invoke-virtual {p0, p1}, Landroid/telecom/Logging/Session;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    iput-wide p3, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    iput-boolean p5, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    iput-object p6, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized blacklist getFullMethodPath(Ljava/lang/StringBuilder;ZI)V
    .locals 4

    monitor-enter p0

    const/16 v0, 0x19

    if-lt p3, v0, :cond_0

    :try_start_0
    const-string v0, "Session"

    const-string v1, "getFullMethodPath: Hit recursion limit!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    add-int/lit8 v2, p3, 0x1

    invoke-direct {v0, p1, p2, v2}, Landroid/telecom/Logging/Session;->getFullMethodPath(Ljava/lang/StringBuilder;ZI)V

    const-string v2, "->"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    const-string v2, "..."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz v1, :cond_6

    if-nez p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist getFullSessionId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Logging/Session;->getFullSessionId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getFullSessionId(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x19

    if-lt p1, v0, :cond_0

    const-string v0, "Session"

    const-string v1, "getFullSessionId: Hit recursion limit!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-object v1

    :cond_1
    sget-boolean v1, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v0, v2}, Landroid/telecom/Logging/Session;->getFullSessionId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Landroid/telecom/Logging/Session;->getFullSessionId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v2, 0x19

    if-lt v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRootSession: Hit recursion limit from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Session"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method private blacklist isSessionExternal()Z
    .locals 1

    const-string/jumbo v0, "isSessionExternal"

    invoke-direct {p0, v0}, Landroid/telecom/Logging/Session;->getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v0

    return v0
.end method

.method private blacklist printSessionTree()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Landroid/telecom/Logging/Session;->printSessionTree(ILjava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist printSessionTree(ILjava/lang/StringBuilder;I)V
    .locals 4

    const/16 v0, 0x19

    if-lt p3, v0, :cond_0

    const-string v0, "Session"

    const-string/jumbo v1, "printSessionTree: Hit recursion limit!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1
    if-gt v2, p1, :cond_1

    const-string v3, "\t"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-direct {v1, v2, p2, v3}, Landroid/telecom/Logging/Session;->printSessionTree(ILjava/lang/StringBuilder;I)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist addChild(Landroid/telecom/Logging/Session;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telecom/Logging/Session;

    iget-wide v3, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    iget-wide v5, v2, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v1

    :cond_2
    iget-wide v3, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v5, v2, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v1

    :cond_3
    iget-boolean v3, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    iget-boolean v4, v2, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget v3, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    iget v4, v2, Landroid/telecom/Logging/Session;->mChildCounter:I

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget-boolean v3, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    iget-boolean v4, v2, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_7
    iget-object v3, v2, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    if-eqz v3, :cond_8

    :goto_0
    return v1

    :cond_8
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    iget-object v4, v2, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_9
    iget-object v3, v2, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    if-eqz v3, :cond_a

    :goto_1
    return v1

    :cond_a
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    iget-object v4, v2, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-virtual {v3, v4}, Landroid/telecom/Logging/Session;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_2

    :cond_b
    iget-object v3, v2, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-eqz v3, :cond_c

    :goto_2
    return v1

    :cond_c
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_d
    iget-object v3, v2, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    :goto_3
    return v1

    :cond_e
    iget-object v3, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    iget-object v1, v2, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_f
    iget-object v3, v2, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-nez v3, :cond_10

    goto :goto_4

    :cond_10
    move v0, v1

    :goto_4
    return v0

    :cond_11
    :goto_5
    return v1
.end method

.method public blacklist getChildSessions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getExecutionStartTimeMilliseconds()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    return-wide v0
.end method

.method public blacklist getExternalInfo(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .locals 1

    invoke-static {p0, p1}, Landroid/telecom/Logging/Session$Info;->getExternalInfo(Landroid/telecom/Logging/Session;Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFullMethodPath(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/telecom/Logging/Session;->getFullMethodPath(Ljava/lang/StringBuilder;ZI)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getInfo()Landroid/telecom/Logging/Session$Info;
    .locals 1

    invoke-static {p0}, Landroid/telecom/Logging/Session$Info;->getInfo(Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLocalExecutionTime()J
    .locals 4

    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v2, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized blacklist getNextChildId()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getOwnerInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParentSession()Landroid/telecom/Logging/Session;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    return-object v0
.end method

.method public blacklist getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShortMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-wide v3, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    iget-wide v5, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v5, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v3, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/telecom/Logging/Session;->mChildCounter:I

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v3, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v2, v1

    return v2
.end method

.method public blacklist isExternal()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    return v0
.end method

.method public blacklist isSessionCompleted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    return v0
.end method

.method public blacklist isStartedFromActiveSession()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    return v0
.end method

.method public blacklist markSessionCompleted(J)V
    .locals 1

    iput-wide p1, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    return-void
.end method

.method public blacklist printFullSessionTree()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "printFullSessionTree"

    invoke-direct {p0, v0}, Landroid/telecom/Logging/Session;->getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;

    move-result-object v0

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->printSessionTree()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeChild(Landroid/telecom/Logging/Session;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blacklist setExecutionStartTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    return-void
.end method

.method public blacklist setIsExternal(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    return-void
.end method

.method public blacklist setParentSession(Landroid/telecom/Logging/Session;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    return-void
.end method

.method public blacklist setSessionId(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "?"

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method public blacklist setShortMethodName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "toString"

    invoke-direct {p0, v1}, Landroid/telecom/Logging/Session;->getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telecom/Logging/Session;->getFullMethodPath(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
