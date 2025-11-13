.class public final Lcom/android/settings/applications/AppStorageSizesController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppSize:Landroidx/preference/Preference;

.field public final mCacheSize:Landroidx/preference/Preference;

.field public mCachedCleared:Z

.field public final mComputing:I

.field public mDataCleared:Z

.field public final mDataSize:Landroidx/preference/Preference;

.field public final mError:I

.field public mLastCacheSize:J

.field public mLastCodeSize:J

.field public mLastDataSize:J

.field public mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

.field public mLastResultFailed:Z

.field public mLastTotalSize:J

.field public final mTotalSize:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroidx/preference/Preference;

    iput-object p4, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroidx/preference/Preference;

    const p1, 0x7f1409d8

    iput p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mComputing:I

    const p1, 0x7f141269

    iput p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mError:I

    return-void
.end method
