.class public Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;
.super Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private mGroupType:I

.field private mIsGroupHeader:Z

.field private mIsUnusedApps:Z

.field private mLabel:Ljava/lang/String;

.field private mLastLaunchTime:J

.field private mPackageAppByte:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mIsGroupHeader:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mGroupType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mPackageAppByte:J

    return-void
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastLaunchTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mLastLaunchTime:J

    return-wide v0
.end method

.method public final getPackageAppByte()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mPackageAppByte:J

    return-wide v0
.end method

.method public final isUnusedApps()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mIsUnusedApps:Z

    return p0
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public final setLastLaunchTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mLastLaunchTime:J

    return-void
.end method

.method public final setPackageAppByte(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mPackageAppByte:J

    return-void
.end method

.method public final setUnusedApps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->mIsUnusedApps:Z

    return-void
.end method
