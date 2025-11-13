.class Lcom/android/settings/datausage/DataUsagePreference$1;
.super Ljava/lang/Object;
.source "DataUsagePreference.java"

# interfaces
.implements Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$NetworkStatsLoaderResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsagePreference;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsagePreference;

.field final synthetic val$usageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsagePreference;Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference$1;->this$0:Lcom/android/settings/datausage/DataUsagePreference;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsagePreference$1;->val$usageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setNetworkStatsData(Landroid/app/usage/NetworkStats;)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNetworkStatsData Knox Loader response -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsagePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsagePreference$1;->this$0:Lcom/android/settings/datausage/DataUsagePreference;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsagePreference;->-$$Nest$fgetmContext(Lcom/android/settings/datausage/DataUsagePreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->bindStats(Landroid/content/Context;Landroid/app/usage/NetworkStats;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsagePreference;->-$$Nest$sfputsfTotalBytes(J)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference$1;->val$usageInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    if-eqz p1, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsagePreference$1;->this$0:Lcom/android/settings/datausage/DataUsagePreference;

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsagePreference;->-$$Nest$msetSummaryAndDescription(Lcom/android/settings/datausage/DataUsagePreference;Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    :cond_0
    return-void
.end method
