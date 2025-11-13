.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;
.super Ljava/lang/Object;
.source "UsageDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;,
        Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;,
        Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$DateChangedListener;,
        Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$TimeChangedListener;
    }
.end annotation


# instance fields
.field private mDate:J

.field private mStatus:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

.field private mType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->mType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->mDate:J

    .line 28
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;->WAITING:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->mStatus:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->mStatus:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    return-object p0
.end method

.method public getType()Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->mType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    return-object p0
.end method

.method public setStatus(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;->mStatus:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Status;

    return-void
.end method
