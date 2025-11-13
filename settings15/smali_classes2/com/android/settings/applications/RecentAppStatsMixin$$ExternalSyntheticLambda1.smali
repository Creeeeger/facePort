.class public final synthetic Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/applications/RecentAppStatsMixin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RecentAppStatsMixin;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    check-cast p1, Landroid/os/UserHandle;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManager;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->mContext:Landroid/content/Context;

    const-class p1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManager;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
