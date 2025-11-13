.class public final Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDailyConnectionTime:[J

.field public final mDailyEnabledTime:[J

.field public final mDailyRxBytes:[J

.field public final mDailyTxBytes:[J

.field public final mTotalBytesInBand:[J

.field public final mTotalBytesInStandard:[J

.field public final mTotalConnectionTimeInBand:[J

.field public final mTotalConnectionTimeInStandard:[J

.field public final mTotalRxBytesInBand:[J

.field public final mTotalRxBytesInStandard:[J

.field public final mTotalTxBytesInBand:[J

.field public final mTotalTxBytesInStandard:[J

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;

    const/4 p1, 0x7

    new-array v0, p1, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyConnectionTime:[J

    new-array v0, p1, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyEnabledTime:[J

    new-array v0, p1, [J

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyRxBytes:[J

    new-array p1, p1, [J

    fill-array-data p1, :array_3

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyTxBytes:[J

    const/4 p1, 0x4

    new-array v0, p1, [J

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalConnectionTimeInBand:[J

    new-array v0, p1, [J

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalRxBytesInBand:[J

    new-array v0, p1, [J

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalTxBytesInBand:[J

    new-array v0, p1, [J

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalBytesInBand:[J

    new-array v0, p1, [J

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalConnectionTimeInStandard:[J

    new-array v0, p1, [J

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalRxBytesInStandard:[J

    new-array v0, p1, [J

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalTxBytesInStandard:[J

    new-array p1, p1, [J

    fill-array-data p1, :array_b

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalBytesInStandard:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "###############################################################################\nWEEKLY REPORT\n"

    const/4 v2, 0x6

    :goto_0
    const-string v3, " / "

    const-string v4, "m / "

    const-wide/32 v5, 0xea60

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;

    const-wide/32 v8, 0x36ee80

    if-ltz v2, :cond_0

    const-string v10, "["

    invoke-static {v1, v10}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyConnectionTime:[J

    aget-wide v11, v10, v2

    div-long/2addr v11, v8

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "h"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v12, v10, v2

    rem-long/2addr v12, v8

    div-long/2addr v12, v5

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyEnabledTime:[J

    aget-wide v12, v10, v2

    div-long/2addr v12, v8

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v10, v10, v2

    rem-long/2addr v10, v8

    div-long/2addr v10, v5

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyRxBytes:[J

    aget-wide v5, v5, v2

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyTxBytes:[J

    aget-wide v4, v4, v2

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_0
    const-string v2, "\n"

    invoke-static {v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "BAND\n"

    invoke-static {v1, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "2.4GHz: "

    invoke-static {v1, v10}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalConnectionTimeInBand:[J

    const/4 v11, 0x0

    aget-wide v12, v10, v11

    div-long/2addr v12, v8

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "h "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v13, v10, v11

    rem-long/2addr v13, v8

    div-long/2addr v13, v5

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalRxBytesInBand:[J

    aget-wide v5, v14, v11

    invoke-static {v13, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalTxBytesInBand:[J

    aget-wide v8, v6, v11

    invoke-static {v5, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "5GHz  : "

    invoke-static {v1, v5}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x1

    aget-wide v8, v10, v5

    const-wide/32 v17, 0x36ee80

    div-long v8, v8, v17

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v10, v5

    rem-long v8, v8, v17

    const-wide/32 v15, 0xea60

    div-long/2addr v8, v15

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v13, v12

    aget-wide v11, v14, v5

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-wide v11, v6, v5

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "6GHz  : "

    invoke-static {v1, v8}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v8, 0x2

    aget-wide v11, v10, v8

    const-wide/32 v17, 0x36ee80

    div-long v11, v11, v17

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v10, v8

    rem-long v11, v11, v17

    const-wide/32 v15, 0xea60

    div-long/2addr v11, v15

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object v12, v10

    aget-wide v9, v14, v8

    invoke-static {v11, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v9

    aget-wide v10, v6, v8

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "Multi-link  : "

    invoke-static {v1, v9}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v9, 0x3

    aget-wide v10, v12, v9

    const-wide/32 v17, 0x36ee80

    div-long v10, v10, v17

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v12, v9

    rem-long v10, v10, v17

    const-wide/32 v15, 0xea60

    div-long/2addr v10, v15

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v10

    aget-wide v11, v14, v9

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v10

    aget-wide v11, v6, v9

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "STANDARD\n"

    invoke-static {v1, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Wi-Fi 4: "

    invoke-static {v1, v6}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalConnectionTimeInStandard:[J

    const/4 v10, 0x0

    aget-wide v11, v6, v10

    const-wide/32 v17, 0x36ee80

    div-long v11, v11, v17

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v6, v10

    rem-long v11, v11, v17

    const-wide/32 v14, 0xea60

    div-long/2addr v11, v14

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalRxBytesInStandard:[J

    aget-wide v8, v12, v10

    invoke-static {v11, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalTxBytesInStandard:[J

    aget-wide v9, v0, v10

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "Wi-Fi 5: "

    invoke-static {v1, v8}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v8, v6, v5

    const-wide/32 v10, 0x36ee80

    div-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v6, v5

    rem-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-wide v9, v12, v5

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-wide v9, v0, v5

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Wi-Fi 6: "

    invoke-static {v1, v5}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    aget-wide v8, v6, v5

    const-wide/32 v10, 0x36ee80

    div-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v6, v5

    rem-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-wide v9, v12, v5

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-wide v9, v0, v5

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Wi-Fi 7: "

    invoke-static {v1, v5}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x3

    aget-wide v8, v6, v5

    const-wide/32 v10, 0x36ee80

    div-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v6, v5

    rem-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    aget-wide v8, v12, v5

    invoke-static {v4, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    aget-wide v4, v0, v5

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "###############################################################################"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final update()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyConnectionTime:[J

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyEnabledTime:[J

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyRxBytes:[J

    invoke-static {v5, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mDailyTxBytes:[J

    invoke-static {v6, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalConnectionTimeInBand:[J

    invoke-static {v7, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalRxBytesInBand:[J

    invoke-static {v8, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalTxBytesInBand:[J

    invoke-static {v9, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalBytesInBand:[J

    invoke-static {v10, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalConnectionTimeInStandard:[J

    invoke-static {v11, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalRxBytesInStandard:[J

    invoke-static {v12, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalTxBytesInStandard:[J

    invoke-static {v13, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->mTotalBytesInStandard:[J

    invoke-static {v14, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference$WeeklyReport;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;

    iget-object v0, v2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v15, 0x0

    :goto_0
    const/4 v0, 0x7

    if-ge v15, v0, :cond_3

    iget-object v0, v2, Lcom/samsung/android/settings/wifi/develop/WifiLabsWeeklyReportPreference;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v15}, Lcom/samsung/android/wifi/SemWifiManager;->getDailyUsageInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v17, v2

    goto/16 :goto_2

    :cond_1
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move-object/from16 v17, v2

    const/16 v2, 0x19

    if-ge v3, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    aget-object v18, v0, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v1, v15

    const/4 v3, 0x1

    aget-object v18, v0, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v4, v15

    const/16 v18, 0x2

    aget-object v19, v0, v18

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    aput-wide v19, v5, v15

    const/16 v19, 0x3

    aget-object v20, v0, v19

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    aput-wide v20, v6, v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v16, 0x0

    :try_start_2
    aget-wide v20, v7, v16

    const/16 v22, 0x4

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v7, v16
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    aget-wide v20, v7, v3

    const/16 v22, 0x5

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v7, v3

    aget-wide v20, v7, v18

    const/16 v22, 0x6

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v7, v18

    aget-wide v20, v7, v19

    const/16 v22, 0x7

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v7, v19
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v16, 0x0

    :try_start_4
    aget-wide v20, v8, v16

    const/16 v22, 0x8

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v8, v16
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    aget-wide v20, v8, v3

    const/16 v22, 0x9

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v8, v3

    aget-wide v20, v8, v18

    const/16 v22, 0xa

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v8, v18

    aget-wide v20, v8, v19

    const/16 v22, 0xb

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v8, v19
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    const/16 v16, 0x0

    :try_start_6
    aget-wide v20, v9, v16

    const/16 v22, 0xc

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v9, v16
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    aget-wide v20, v9, v3

    const/16 v22, 0xd

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v9, v3

    aget-wide v20, v9, v18

    const/16 v22, 0xe

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v9, v18

    aget-wide v20, v9, v19

    const/16 v22, 0xf

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v9, v19
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    const/16 v16, 0x0

    :try_start_8
    aget-wide v20, v8, v16

    aget-wide v22, v9, v16

    add-long v20, v20, v22

    aput-wide v20, v10, v16
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    aget-wide v20, v8, v3

    aget-wide v22, v9, v3

    add-long v20, v20, v22

    aput-wide v20, v10, v3

    aget-wide v20, v8, v18

    aget-wide v22, v9, v18

    add-long v20, v20, v22

    aput-wide v20, v10, v18

    aget-wide v20, v8, v19

    aget-wide v22, v9, v19

    add-long v20, v20, v22

    aput-wide v20, v10, v19
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1

    const/16 v16, 0x0

    :try_start_a
    aget-wide v20, v11, v16

    const/16 v22, 0x10

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v11, v16
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2

    :try_start_b
    aget-wide v20, v11, v3

    const/16 v22, 0x11

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v11, v3

    aget-wide v20, v11, v18

    const/16 v22, 0x12

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v11, v18

    aget-wide v20, v11, v19

    const/16 v22, 0x13

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v11, v19
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_1

    const/16 v16, 0x0

    :try_start_c
    aget-wide v20, v12, v16

    const/16 v22, 0x14

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v12, v16
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2

    :try_start_d
    aget-wide v20, v12, v3

    const/16 v22, 0x15

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v12, v3

    aget-wide v20, v12, v18

    const/16 v22, 0x16

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v12, v18

    aget-wide v20, v12, v19

    const/16 v22, 0x17

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v12, v19
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1

    const/16 v16, 0x0

    :try_start_e
    aget-wide v20, v13, v16

    const/16 v22, 0x18

    aget-object v22, v0, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v13, v16
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_2

    :try_start_f
    aget-wide v20, v13, v3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v13, v3

    aget-wide v20, v13, v18

    const/16 v2, 0x1a

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v13, v18

    aget-wide v20, v13, v19

    const/16 v2, 0x1b

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    aput-wide v20, v13, v19
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_1

    const/4 v2, 0x0

    :try_start_10
    aget-wide v20, v12, v2

    aget-wide v22, v13, v2

    add-long v20, v20, v22

    aput-wide v20, v14, v2

    aget-wide v20, v12, v3

    aget-wide v22, v13, v3

    add-long v20, v20, v22

    aput-wide v20, v14, v3

    aget-wide v20, v12, v18

    aget-wide v22, v13, v18

    add-long v20, v20, v22

    aput-wide v20, v14, v18

    aget-wide v20, v12, v19

    aget-wide v22, v13, v19

    add-long v20, v20, v22

    aput-wide v20, v14, v19
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v2, v16

    goto :goto_1

    :catch_3
    move-exception v0

    move v2, v3

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "NumberFormatException "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiLabsWeeklyReport.Preference"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_3
    return-void
.end method
