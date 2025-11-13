.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final COMPARATOR:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$$ExternalSyntheticLambda0;

.field public static final SPECIAL_ENTRY_MAP:Ljava/util/Map;

.field public static sCurrentLocale:Ljava/util/Locale;

.field public static final sPackageNameAndUidCache:Ljava/util/Map;

.field public static final sPackageNameAndUidCacheLock:Ljava/lang/Object;

.field public static final sResourceCache:Ljava/util/Map;

.field public static final sResourceCacheLock:Ljava/lang/Object;

.field static final sValidForRestriction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final sValidForRestrictionLock:Ljava/lang/Object;


# instance fields
.field public mAdjustPercentageOffset:I

.field mAppIcon:Landroid/graphics/drawable/Drawable;

.field mAppIconId:I

.field mAppLabel:Ljava/lang/String;

.field public mBackgroundUsageConsumePower:D

.field public mBackgroundUsageTimeInMs:J

.field public mCachedUsageConsumePower:D

.field public final mComponentId:I

.field public mConsumePower:D

.field public final mConsumerType:I

.field public final mContext:Landroid/content/Context;

.field public mDefaultPackageName:Ljava/lang/String;

.field public mForegroundServiceUsageConsumePower:D

.field public mForegroundServiceUsageTimeInMs:J

.field public mForegroundUsageConsumePower:D

.field public mForegroundUsageTimeInMs:J

.field public final mIsHidden:Z

.field mIsLoaded:Z

.field public final mKey:Ljava/lang/String;

.field public final mLegacyLabel:Ljava/lang/String;

.field public final mLegacyPackageName:Ljava/lang/String;

.field public mPercentage:D

.field public mScreenOnTimeInMs:J

.field public mTotalConsumePower:D

.field public final mUid:J

.field public final mUserId:J

.field public final mUserManager:Landroid/os/UserManager;

.field mValidForRestriction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sPackageNameAndUidCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestrictionLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sPackageNameAndUidCache:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->COMPARATOR:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$$ExternalSyntheticLambda0;

    const v0, 0x7f140637

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f08056c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const v0, 0x7f14063c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f080373

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const v0, 0x7f14062f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0805d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    const-string v4, "A|UninstalledApps"

    const-string v6, "S|Others"

    const-string v2, "A|SystemApps"

    invoke-static/range {v2 .. v7}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->SPECIAL_ENTRY_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IJJJJDDDDD)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsLoaded:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    iput-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    move-wide v2, p2

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUid:J

    move-wide v2, p4

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserId:J

    move-object v2, p6

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    move v2, p7

    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsHidden:Z

    move v2, p8

    iput v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mComponentId:I

    move-object v2, p9

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mLegacyPackageName:Ljava/lang/String;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mLegacyLabel:Ljava/lang/String;

    move v2, p11

    iput v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumerType:I

    move-wide/from16 v2, p12

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    move-wide/from16 v2, p14

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageTimeInMs:J

    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    move-wide/from16 v2, p18

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    move-wide/from16 v2, p20

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    move-wide/from16 v2, p22

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    move-wide/from16 v2, p24

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    move-wide/from16 v2, p26

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    move-wide/from16 v2, p28

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    invoke-direct/range {v0 .. v29}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IJJJJDDDDD)V

    return-void
.end method

.method public static clearCache()V
    .locals 2

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestrictionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sPackageNameAndUidCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sPackageNameAndUidCache:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public static putResourceCache(Ljava/lang/String;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;)V
    .locals 2

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 32

    move-object/from16 v0, p0

    new-instance v31, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-object/from16 v1, v31

    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v13, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageTimeInMs:J

    move-wide v15, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    move-wide/from16 v17, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    move-wide/from16 v19, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    move-wide/from16 v21, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    move-wide/from16 v23, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    move-wide/from16 v25, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    move-wide/from16 v27, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    move-wide/from16 v29, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUid:J

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserId:J

    iget-object v7, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsHidden:Z

    iget v9, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mComponentId:I

    iget-object v10, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mLegacyPackageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mLegacyLabel:Ljava/lang/String;

    iget v12, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumerType:I

    invoke-direct/range {v1 .. v30}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IJJJJDDDDD)V

    return-object v31
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getAppIconId()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    return p0
.end method

.method public final getAppLabel()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mLegacyLabel:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mLegacyPackageName:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    return-object v0

    :cond_1
    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    const/4 v0, 0x0

    aget-object v0, p0, v0

    :cond_2
    return-object v0
.end method

.method public final isSystemEntry()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsHidden:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumerType:I

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final loadLabelAndIcon()V
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x1

    iget-boolean v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsLoaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sCurrentLocale:Ljava/util/Locale;

    if-eq v3, v0, :cond_1

    const-string v4, "BatteryDiffEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clearCache() locale is changed from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sCurrentLocale:Ljava/util/Locale;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clearCache()V

    :cond_1
    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCacheLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIconId:I

    iput v3, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    :cond_2
    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestrictionLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    iget-object v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    return-void

    :cond_4
    iput-boolean v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsLoaded:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->updateRestrictionFlagState()V

    monitor-enter v4

    :try_start_2
    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    iget-boolean v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->SPECIAL_ENTRY_MAP:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    iget-object v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    invoke-direct {v4, v5, v3, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-static {v2, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->putResourceCache(Ljava/lang/String;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;)V

    return-void

    :cond_5
    iget v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumerType:I

    const/4 v4, 0x0

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    goto/16 :goto_14

    :cond_6
    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mComponentId:I

    invoke-static {v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromPowerComponent(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIconId:I

    if-eqz v0, :cond_7

    iput v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    :cond_7
    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIconId:I

    invoke-direct {v2, v4, v3, v5, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-static {v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->putResourceCache(Ljava/lang/String;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;)V

    goto/16 :goto_14

    :cond_8
    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserId:J

    long-to-int v2, v5

    invoke-static {v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromUserId(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object v0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    new-instance v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    invoke-direct {v5, v0, v3, v2, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-static {v1, v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->putResourceCache(Ljava/lang/String;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;)V

    goto/16 :goto_14

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "BatteryDiffEntry"

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_a

    :try_start_3
    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    const-string v7, "failed to retrieve ApplicationInfo for: "

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    :cond_a
    :goto_0
    iget-object v7, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-eqz v7, :cond_b

    iget-object v7, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_b

    goto/16 :goto_12

    :cond_b
    iget-wide v7, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUid:J

    long-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    array-length v5, v5

    if-nez v5, :cond_13

    :cond_c
    iget-object v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    sget-object v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->BATTERY_DIMENSIONS:[Landroid/os/BatteryConsumer$Dimensions;

    const v9, 0x7f08056c

    invoke-virtual {v5, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v7, :cond_d

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f141d8a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_d
    const/4 v10, -0x4

    if-ne v7, v10, :cond_e

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f141d8e    # 1.968792E38f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_e
    const/4 v10, -0x5

    if-ne v7, v10, :cond_f

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f141d8c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_f
    const-string v10, "mediaserver"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f141d8b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_10
    const-string v10, "dex2oat"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "dex2oat32"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "dex2oat64"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_11
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f141d89

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_12
    :goto_1
    iput-object v8, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iput-object v9, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    :cond_13
    iget-object v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    sget-object v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->BATTERY_DIMENSIONS:[Landroid/os/BatteryConsumer$Dimensions;

    if-eqz v7, :cond_21

    const/4 v10, -0x1

    if-ne v7, v10, :cond_14

    goto/16 :goto_10

    :cond_14
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v10, 0x3e8

    if-ne v7, v10, :cond_15

    new-array v10, v2, [Ljava/lang/String;

    const-string v11, "android"

    aput-object v11, v10, v4

    goto :goto_2

    :cond_15
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    :goto_2
    if-eqz v10, :cond_1f

    array-length v11, v10

    new-array v12, v11, [Ljava/lang/String;

    array-length v13, v10

    invoke-static {v10, v4, v12, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    move-object v15, v0

    move v3, v4

    :goto_3
    const-string v4, ", user "

    const-string v2, "BatteryEntry"

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    const-wide/16 v8, 0x0

    if-ge v3, v11, :cond_19

    :try_start_4
    aget-object v0, v12, v3

    invoke-interface {v13, v0, v8, v9, v14}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retrieving null app info for package "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v12, v3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_16
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    if-eqz v18, :cond_17

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v3

    :cond_17
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v8, :cond_18

    aget-object v15, v10, v3

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v15

    const/4 v8, 0x1

    goto :goto_7

    :cond_18
    :goto_4
    const/4 v8, 0x1

    goto :goto_6

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error while retrieving app info for package "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v12, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_6
    add-int/2addr v3, v8

    move v2, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    goto :goto_3

    :cond_19
    const/4 v8, 0x1

    move-object v0, v15

    move-object/from16 v9, v17

    :goto_7
    if-ne v11, v8, :cond_1a

    const/4 v3, 0x0

    aget-object v8, v12, v3

    goto/16 :goto_f

    :cond_1a
    array-length v3, v10

    move-object v8, v0

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v3, :cond_1e

    aget-object v12, v10, v11

    move-object/from16 v17, v8

    move-object v15, v9

    const-wide/16 v8, 0x0

    :try_start_5
    invoke-interface {v13, v12, v8, v9, v14}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retrieving null package info for package "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_2
    move-exception v0

    :goto_9
    move-object/from16 v8, v17

    goto :goto_c

    :cond_1b
    iget v8, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_1d

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v12, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_1d

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v9, :cond_1c

    :try_start_7
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    move-object v9, v0

    move-object v0, v12

    goto :goto_f

    :catch_3
    move-exception v0

    move-object/from16 v16, v8

    move-object v8, v12

    goto :goto_c

    :cond_1c
    move-object v9, v15

    goto :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_9

    :cond_1d
    :goto_a
    move/from16 v19, v3

    move-object/from16 v8, v17

    :goto_b
    const/4 v3, 0x1

    goto :goto_d

    :goto_c
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v19, v3

    const-string v3, "Error while retrieving package info for package "

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :goto_d
    add-int/2addr v11, v3

    move-object v9, v15

    move/from16 v3, v19

    goto :goto_8

    :cond_1e
    move-object/from16 v17, v8

    move-object v15, v9

    move-object/from16 v8, v16

    :goto_e
    move-object/from16 v0, v17

    goto :goto_f

    :cond_1f
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    :goto_f
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v9, :cond_20

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :cond_20
    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$UidToDetail;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v0, v9, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_11

    :cond_21
    :goto_10
    const/4 v2, 0x0

    :goto_11
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    if-eqz v2, :cond_22

    iget-object v0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mPackageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz v0, :cond_22

    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found different package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_12
    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_23

    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    :cond_23
    iget-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUid:J

    long-to-int v2, v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_24

    goto :goto_13

    :cond_24
    iget-object v3, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserManager:Landroid/os/UserManager;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_13
    iput-object v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-nez v2, :cond_25

    if-eqz v0, :cond_26

    :cond_25
    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v0, v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-static {v1, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->putResourceCache(Ljava/lang/String;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;)V

    :cond_26
    :goto_14
    return-void

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0
.end method

.method public final setTotalConsumePower(D)V
    .locals 3

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mTotalConsumePower:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatteryDiffEntry{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n\tname="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " restrictable="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mTotalConsumePower:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\tconsume=%.2f%% %f/%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\tconsume power= foreground:%f foregroundService:%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\tconsume power= background:%f cached:%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    long-to-double v2, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageTimeInMs:J

    long-to-double v6, v6

    invoke-static {v2, v6, v7, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    long-to-double v6, v6

    invoke-static {v3, v6, v7, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    long-to-double v7, v7

    invoke-static {v6, v7, v8, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\ttime= foreground:%s foregroundService:%s background:%s screen-on:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mLegacyPackageName:Ljava/lang/String;

    filled-new-array {p0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "\n\tpackage:%s|%s uid:%d userId:%d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateRestrictionFlagState()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x401240

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getPackageInfo() error %s for package=%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryDiffEntry"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    :goto_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mValidForRestriction:Z

    return-void
.end method
