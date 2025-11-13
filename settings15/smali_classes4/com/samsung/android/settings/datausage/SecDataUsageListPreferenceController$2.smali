.class public final Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;

.field public final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController$2;->this$0:Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController$2;->val$preference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final setNetworkStatsData(Landroid/app/usage/NetworkStats;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController$2;->this$0:Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->access$000(Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->bindStats(Landroid/content/Context;Landroid/app/usage/NetworkStats;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->-$$Nest$sfputsSecureFolderTotalBytes(J)V

    invoke-static {}, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->-$$Nest$sfgetsSecureFolderTotalBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController$2;->val$preference:Landroidx/preference/Preference;

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->-$$Nest$fgetmDataUsageInfo(Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0, p0}, Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;->access$100(Lcom/samsung/android/settings/datausage/SecDataUsageListPreferenceController;Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method
