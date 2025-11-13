.class public Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageSummaryCHN.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DataUsageSummaryCHN "

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x25

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 59
    sget p0, Lcom/android/settings/R$xml;->sec_data_usage_chn:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 40
    invoke-static {p1}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->getSMDataUsageSummaryIntent(Z)Landroid/content/Intent;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
