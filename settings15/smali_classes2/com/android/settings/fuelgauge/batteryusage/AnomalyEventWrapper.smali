.class public final Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCardStyleId:I

.field public final mContext:Landroid/content/Context;

.field public mHighlightSlotPair:Landroid/util/Pair;

.field public final mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

.field public mRelatedBatteryDiffEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

.field public final mResourceIndex:I

.field public mSubSettingLauncher:Lcom/android/settings/core/SubSettingLauncher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mSubSettingLauncher:Lcom/android/settings/core/SubSettingLauncher;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mRelatedBatteryDiffEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mCardStyleId:I

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getKey()Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mResourceIndex:I

    return-void
.end method


# virtual methods
.method public final getAnomalyEntryKey()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->hasWarningItemInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getWarningItemInfo()Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->hasItemKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getWarningItemInfo()Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->getItemKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getHighlightSlotPair(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)Landroid/util/Pair;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->hasWarningItemInfo()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getWarningItemInfo()Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->hasStartTimestamp()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->getStartTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->hasEndTimestamp()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->getEndTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v5, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mDailyBatteryLevels:Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-static {v5, v3, v4, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->-$$Nest$mgetIndexByTimestamps(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;JJ)I

    move-result v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_4

    move p1, v6

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-static {p1, v3, v4, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->-$$Nest$mgetIndexByTimestamps(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;JJ)I

    move-result p1

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v6, :cond_5

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_6

    :cond_5
    iput-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    :cond_6
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mHighlightSlotPair:Landroid/util/Pair;

    return-object p0
.end method

.method public final getInfo(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mPowerAnomalyEvent:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->hasWarningBannerInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getWarningBannerInfo()Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->hasWarningItemInfo()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->getWarningItemInfo()Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getResourceId(IILjava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->getStringFromArrayResource(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getStringFromArrayResource(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/AnomalyEventWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-ltz p2, :cond_1

    array-length p1, p0

    if-ge p2, p1, :cond_1

    aget-object v0, p0, p2

    :cond_1
    :goto_0
    return-object v0
.end method
