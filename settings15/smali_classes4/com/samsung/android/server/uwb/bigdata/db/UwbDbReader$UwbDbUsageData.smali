.class public final Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mRangingDuration:J

.field public final mUpdatedTime:J


# direct methods
.method public constructor <init>(IIIJJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mPackageName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mRangingDuration:J

    iput-wide p6, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mUpdatedTime:J

    return-void
.end method
