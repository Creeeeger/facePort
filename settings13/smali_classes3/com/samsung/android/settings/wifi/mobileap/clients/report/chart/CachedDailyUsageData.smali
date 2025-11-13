.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedDailyUsageData;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;
.source "CachedDailyUsageData.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    sget v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->MAX_DAYS:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;-><init>(I)V

    return-void
.end method
