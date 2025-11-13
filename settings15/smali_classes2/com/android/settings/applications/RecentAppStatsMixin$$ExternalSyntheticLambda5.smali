.class public final synthetic Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    iget p0, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/app/usage/UsageStats;

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide p0

    return-wide p0

    :pswitch_0
    check-cast p1, Lcom/android/settings/applications/RecentAppStatsMixin$UsageStatsWrapper;

    iget-object p0, p1, Lcom/android/settings/applications/RecentAppStatsMixin$UsageStatsWrapper;->mUsageStats:Landroid/app/usage/UsageStats;

    invoke-virtual {p0}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide p0

    const-wide/16 v0, -0x1

    mul-long/2addr p0, v0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
