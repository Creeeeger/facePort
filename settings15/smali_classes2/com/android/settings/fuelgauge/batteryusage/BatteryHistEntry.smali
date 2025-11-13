.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppLabel:Ljava/lang/String;

.field public final mBackgroundUsageConsumePower:D

.field public final mBackgroundUsageTimeInMs:J

.field public final mBatteryHealth:I

.field public final mBatteryLevel:I

.field public final mBatteryStatus:I

.field public final mBootTimestamp:J

.field public final mCachedUsageConsumePower:D

.field public final mConsumePower:D

.field public final mConsumerType:I

.field public final mDrainType:I

.field public final mForegroundServiceUsageConsumePower:D

.field public final mForegroundServiceUsageTimeInMs:J

.field public final mForegroundUsageConsumePower:D

.field public final mForegroundUsageTimeInMs:J

.field public final mIsHidden:Z

.field public mKey:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPercentOfTotal:D

.field public final mTimestamp:J

.field public final mTotalPower:D

.field public final mUid:J

.field public final mUserId:J

.field public final mZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mKey:Ljava/lang/String;

    const-string v1, "uid"

    invoke-static {p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    const-string v1, "userId"

    invoke-static {p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    const-string v0, "timestamp"

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTimestamp:J

    const-string v0, "consumerType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    move-result-object v0

    const-string v1, "batteryInformation"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->parseProtoFromString(Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getAppLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getIsHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mIsHidden:Z

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getBootTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBootTimestamp:J

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getZoneId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getTotalPower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTotalPower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getConsumePower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getForegroundUsageConsumePower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getForegroundServiceUsageConsumePower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getBackgroundUsageConsumePower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getCachedUsageConsumePower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getPercentOfTotal()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPercentOfTotal:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getForegroundUsageTimeInMs()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getForegroundServiceUsageTimeInMs()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageTimeInMs:J

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getBackgroundUsageTimeInMs()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getDrainType()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getDeviceBatteryState()Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->getBatteryStatus()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryStatus:I

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->getBatteryHealth()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryHealth:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mKey:Ljava/lang/String;

    const-string v1, "uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    iput-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    const-string v1, "userId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    iput-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    const-string v1, "packageName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_3
    iput-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTimestamp:J

    const-string v0, "consumerType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    move-result-object v0

    const-string v1, "batteryInformation"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->parseProtoFromString(Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    :cond_5
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getAppLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getIsHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mIsHidden:Z

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getBootTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBootTimestamp:J

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getZoneId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getTotalPower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTotalPower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getConsumePower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getForegroundUsageConsumePower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getForegroundServiceUsageConsumePower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getBackgroundUsageConsumePower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getCachedUsageConsumePower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getPercentOfTotal()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPercentOfTotal:D

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getForegroundUsageTimeInMs()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getForegroundServiceUsageTimeInMs()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageTimeInMs:J

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getBackgroundUsageTimeInMs()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getDrainType()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getDeviceBatteryState()Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->getBatteryStatus()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryStatus:I

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->getBatteryHealth()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryHealth:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;JJDDDDDDJJJI)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mKey:Ljava/lang/String;

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    iget-boolean v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mIsHidden:Z

    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mIsHidden:Z

    move-wide v2, p2

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBootTimestamp:J

    move-wide v2, p4

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTimestamp:J

    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    move-wide v2, p6

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTotalPower:D

    move-wide v2, p8

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    move-wide v2, p10

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    move-wide/from16 v2, p12

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    move-wide/from16 v2, p14

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPercentOfTotal:D

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPercentOfTotal:D

    move-wide/from16 v2, p18

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-wide/from16 v2, p20

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageTimeInMs:J

    move-wide/from16 v2, p22

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    iget v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    iput v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    iget v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    iput v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    move/from16 v2, p24

    iput v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    iget v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryStatus:I

    iput v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryStatus:I

    iget v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryHealth:I

    iput v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryHealth:I

    return-void
.end method

.method public static getLong(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static interpolate(DDD)D
    .locals 0

    sub-double/2addr p2, p0

    mul-double/2addr p2, p4

    add-double/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mKey:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "U|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mKey:Ljava/lang/String;

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTimestamp:J

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nBatteryHistEntry{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mIsHidden:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    filled-new-array {v5, v6, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\n\tpackage=%s|label=%s|uid=%d|userId=%d|isHidden=%b"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBootTimestamp:J

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    filled-new-array {v0, v3, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\n\ttimestamp=%s|zoneId=%s|bootTimestamp=%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPercentOfTotal:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTotalPower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\n\tusage=%f|total=%f|consume=%f"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\n\tforeground=%f|foregroundService=%f"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\n\tbackground=%f|cached=%f"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageTimeInMs:J

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\n\telapsedTime,fg=%d|fgs=%d|bg=%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\n\tdrainType=%d|consumerType=%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryHealth:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "\n\tbattery=%d|status=%d|health=%d\n}"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
