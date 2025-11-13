.class public final Lcom/android/internal/compat/ChangeReporter;
.super Ljava/lang/Object;
.source "ChangeReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/ChangeReporter$ChangeReport;,
        Lcom/android/internal/compat/ChangeReporter$Source;,
        Lcom/android/internal/compat/ChangeReporter$State;
    }
.end annotation


# static fields
.field private static final blacklist NEW_CHANGE_REPORT_SET:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/internal/compat/ChangeReporter$ChangeReport;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist SOURCE_APP_PROCESS:I = 0x1

.field public static final blacklist SOURCE_SYSTEM_SERVER:I = 0x2

.field public static final blacklist SOURCE_UNKNOWN_SOURCE:I = 0x0

.field public static final blacklist STATE_DISABLED:I = 0x2

.field public static final blacklist STATE_ENABLED:I = 0x1

.field public static final blacklist STATE_LOGGED:I = 0x3

.field public static final blacklist STATE_UNKNOWN_STATE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CompatChangeReporter"


# instance fields
.field private blacklist mDebugLogAll:Z

.field private final blacklist mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/internal/compat/ChangeReporter$ChangeReport;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSource:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/compat/ChangeReporter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/compat/ChangeReporter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/compat/ChangeReporter;->NEW_CHANGE_REPORT_SET:Ljava/util/function/Function;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/compat/ChangeReporter;->mSource:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    return-void
.end method

.method private blacklist checkAndSetIsAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/compat/ChangeReporter;->isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/compat/ChangeReporter;->markAsReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)V

    :cond_0
    return v0
.end method

.method private blacklist debugLog(IJI)V
    .locals 4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Lcom/android/internal/compat/ChangeReporter;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Compat change id reported: %d; UID %d; state: %s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/compat/ChangeReporter;->mSource:I

    const/4 v2, 0x2

    const-string v3, "CompatChangeReporter"

    if-ne v1, v2, :cond_0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private blacklist markAsReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/internal/compat/ChangeReporter;->NEW_CHANGE_REPORT_SET:Ljava/util/function/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist shouldWriteToDebug(ZIZ)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/android/internal/compat/flags/Flags;->skipOldAndDisabledCompatLogging()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v3, "CompatChangeReporter"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method private static blacklist stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "LOGGED"

    return-object v0

    :pswitch_1
    const-string v0, "DISABLED"

    return-object v0

    :pswitch_2
    const-string v0, "ENABLED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist reportChange(IJI)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZ)V

    return-void
.end method

.method public blacklist reportChange(IJIZ)V
    .locals 7

    new-instance v0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/compat/ChangeReporter$ChangeReport;-><init>(JI)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/ChangeReporter;->checkAndSetIsAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0xe4

    iget v6, p0, Lcom/android/internal/compat/ChangeReporter;->mSource:I

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJII)V

    :cond_0
    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/compat/ChangeReporter;->shouldWriteToDebug(ZIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/compat/ChangeReporter;->debugLog(IJI)V

    :cond_1
    return-void
.end method

.method public blacklist resetReportedChanges(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method blacklist shouldWriteToDebug(IJI)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/compat/ChangeReporter;->shouldWriteToDebug(IJIZ)Z

    move-result v0

    return v0
.end method

.method blacklist shouldWriteToDebug(IJIZ)Z
    .locals 1

    new-instance v0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/compat/ChangeReporter$ChangeReport;-><init>(JI)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/ChangeReporter;->isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result v0

    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/compat/ChangeReporter;->shouldWriteToDebug(ZIZ)Z

    move-result v0

    return v0
.end method

.method blacklist shouldWriteToStatsLog(IJI)Z
    .locals 1

    new-instance v0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/compat/ChangeReporter$ChangeReport;-><init>(JI)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/ChangeReporter;->isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist startDebugLogAll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    return-void
.end method

.method public blacklist stopDebugLogAll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    return-void
.end method
