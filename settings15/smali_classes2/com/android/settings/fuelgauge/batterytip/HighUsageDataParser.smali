.class public final Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBatteryDrain:I

.field public mEndBatteryLevel:B

.field public mEndTimeMs:J

.field public mLastPeriodBatteryLevel:B

.field public final mThreshold:I

.field public final mTimePeriodMs:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mTimePeriodMs:J

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mThreshold:I

    return-void
.end method
