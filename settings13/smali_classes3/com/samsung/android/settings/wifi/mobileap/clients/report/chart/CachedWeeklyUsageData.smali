.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedWeeklyUsageData;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;
.source "CachedWeeklyUsageData.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    sget v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->MAX_WEEKS:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CachedUsageData;-><init>(I)V

    return-void
.end method
