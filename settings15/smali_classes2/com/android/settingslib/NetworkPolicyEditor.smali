.class public final Lcom/android/settingslib/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPolicies:Ljava/util/ArrayList;

.field public final mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkPolicyManager;

    iput-object p1, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method


# virtual methods
.method public final getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 15

    invoke-virtual/range {p0 .. p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/util/RecurrenceRule;->buildNever()Landroid/util/RecurrenceRule;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move-object v4, v0

    move v13, v1

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/RecurrenceRule;->buildRecurringMonthly(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    new-instance v0, Landroid/net/NetworkPolicy;

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v5, -0x1

    const-wide/16 v11, -0x1

    const/4 v14, 0x1

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    move-object v1, p0

    iget-object v1, v1, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    iget-object v1, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPolicyCycleDay(Landroid/net/NetworkTemplate;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {p1}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object p0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final read()V
    .locals 11

    iget-object v0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    iget-wide v5, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-gez v5, :cond_0

    iput-wide v7, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    move v3, v6

    :cond_0
    iget-wide v9, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v5, v9, v7

    if-gez v5, :cond_1

    iput-wide v7, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    move v3, v6

    :cond_1
    iget-object v5, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    :cond_3
    return-void
.end method

.method public final setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    iget-wide v3, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, p2

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmp-long v0, p2, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    iput-boolean v3, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p1

    iput-wide p2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    iput-boolean v3, p1, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {p1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public final setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    iget-wide v3, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p1

    iput-wide p2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {p1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public final writeAsync()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkPolicy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/NetworkPolicyEditor$1;-><init>(Lcom/android/settingslib/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
