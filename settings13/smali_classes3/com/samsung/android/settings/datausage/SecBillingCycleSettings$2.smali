.class Lcom/samsung/android/settings/datausage/SecBillingCycleSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecBillingCycleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 126
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getAvailableBillingCycleSetting()Z

    move-result p0

    return p0
.end method
