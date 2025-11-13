.class public final Lcom/android/settings/spa/development/UsageStatsListModel$getComparator$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/spa/development/UsageStatsListModel$getComparator$$inlined$compareBy$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget p0, p0, Lcom/android/settings/spa/development/UsageStatsListModel$getComparator$$inlined$compareBy$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    iget-object p0, p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast p0, Lcom/android/settings/spa/development/UsageStatsAppRecord;

    iget-object p0, p0, Lcom/android/settings/spa/development/UsageStatsAppRecord;->usageStats:Landroid/app/usage/UsageStats;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    check-cast p1, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast p1, Lcom/android/settings/spa/development/UsageStatsAppRecord;

    iget-object p1, p1, Lcom/android/settings/spa/development/UsageStatsAppRecord;->usageStats:Landroid/app/usage/UsageStats;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_1
    invoke-static {p0, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    iget-object p0, p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast p0, Lcom/android/settings/spa/development/UsageStatsAppRecord;

    iget-object p0, p0, Lcom/android/settings/spa/development/UsageStatsAppRecord;->usageStats:Landroid/app/usage/UsageStats;

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, p2

    :goto_1
    check-cast p1, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast p1, Lcom/android/settings/spa/development/UsageStatsAppRecord;

    iget-object p1, p1, Lcom/android/settings/spa/development/UsageStatsAppRecord;->usageStats:Landroid/app/usage/UsageStats;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_3
    invoke-static {p0, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    invoke-static {p0, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
