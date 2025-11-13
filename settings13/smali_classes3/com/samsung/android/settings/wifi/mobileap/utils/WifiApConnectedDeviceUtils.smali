.class public Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;
.super Ljava/lang/Object;
.source "WifiApConnectedDeviceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApConnectedDeviceUtils"

.field private static mMonthlyCount:I

.field private static mWeeklyCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getTopHotspotClientsForEachDay(Landroid/content/Context;JJ)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    .line 229
    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopHotspotClientsForEachDay - startDateInMillis: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", endDateInMillis: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 231
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTopHotspotClientsForEachDay - startDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", endDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v7

    .line 236
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/wifi/SemWifiManager;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "\\r?\\n"

    .line 240
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 241
    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 242
    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTopHotspotClientsForEachDay - lines[0] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/util/Date;

    aget-object v11, v1, v2

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x2

    move v10, v2

    move v11, v9

    :goto_1
    if-ge v10, v7, :cond_0

    .line 245
    aget-object v12, v1, v11

    const-string v13, " "

    invoke-virtual {v12, v13, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 246
    aget-object v13, v12, v2

    .line 247
    aget-object v12, v12, v3

    .line 248
    new-instance v14, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move/from16 p1, v10

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v14, v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    .line 249
    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    invoke-virtual {v14}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v13

    double-to-float v10, v13

    invoke-direct {v9, v12, v10}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;F)V

    .line 250
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v3

    add-int/lit8 v10, p1, 0x1

    const/4 v9, 0x2

    goto :goto_1

    .line 253
    :cond_0
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v3, v1, v2, v8}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;-><init>(JLjava/util/List;)V

    .line 254
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 259
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 260
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 261
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, 0x5

    .line 262
    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 263
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 264
    sput v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->mWeeklyCount:I

    .line 265
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 267
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;

    .line 268
    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getCalendar()Ljava/util/Calendar;

    move-result-object v9

    .line 269
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v10, v9, :cond_2

    move-object v2, v8

    :cond_3
    if-eqz v2, :cond_4

    .line 275
    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTopHotspotClientsForEachDay - Adding List for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Entries==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    sget v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->mWeeklyCount:I

    add-int/2addr v2, v3

    sput v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->mWeeklyCount:I

    goto :goto_3

    .line 279
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTopHotspotClientsForEachDay - Adding EMPTY List for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;-><init>(JLjava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_3
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_2

    :cond_5
    return-object v6
.end method

.method public static getTopHotspotClientsForEachMonth(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getMonthlyDataUsage()Ljava/util/List;

    move-result-object p0

    .line 178
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, " "

    .line 180
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 181
    aget-object v2, v1, v2

    .line 182
    aget-object v1, v1, v3

    .line 183
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    .line 184
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;F)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;-><init>(JLjava/util/List;)V

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 190
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 191
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 193
    invoke-virtual {v5, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, -0x5

    .line 194
    invoke-virtual {v1, v4, p0}, Ljava/util/Calendar;->add(II)V

    .line 196
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    sput v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->mMonthlyCount:I

    .line 198
    :goto_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gtz v2, :cond_4

    const/4 v2, 0x0

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;

    .line 201
    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    .line 202
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v9, v8, :cond_1

    move-object v2, v7

    :cond_2
    if-eqz v2, :cond_3

    .line 208
    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTopHotspotClientsForEachMonth - Adding List for : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Entries==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->mMonthlyCount:I

    add-int/2addr v2, v3

    sput v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->mMonthlyCount:I

    goto :goto_2

    .line 212
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTopHotspotClientsForEachMonth - Adding EMPTY List for : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;-><init>(JLjava/util/List;)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_2
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_1

    :cond_4
    return-object p0
.end method

.method public static getTopHotspotClientsToday(Landroid/content/Context;II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->getTopHotspotClientsToday(II)Ljava/util/List;

    move-result-object p0

    .line 112
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 113
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopHotspotClientsToday: i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\ngetClientDeviceName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\ngetClientIpAddress(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nisClientConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\ngetClientDataLimit(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDataLimit()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\ngetClientTimeLimit(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTimeLimit()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\ngetClientActiveSessionMobileDataConsumed(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientActiveSessionMobileDataConsumed()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\ngetClientTodayTotalMobileDataUsage(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\nisClientDataPausedByUser(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\nisClientInternetPaused(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientInternetPaused()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\ngetClientTodayTotalTime(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\ngetClientRecentConnectionTimeStamp(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientRecentConnectionTimeStamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v0, p2

    goto/16 :goto_0

    :cond_0
    return-object p0
.end method

.method public static getTopHotspotClientsToday(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 134
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    .line 138
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getValidMonthlyCount()I
    .locals 1

    .line 222
    sget v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->mMonthlyCount:I

    return v0
.end method

.method public static getValidWeeklyCount()I
    .locals 1

    .line 225
    sget v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->mWeeklyCount:I

    return v0
.end method

.method public static getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApDailyDataLimit()J

    move-result-wide v5

    .line 42
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiApActiveSessionDataLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(JJJ)V

    return-object p0
.end method

.method public static getWifiApClientDataLimitDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
    .locals 7

    .line 87
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDataLimit()J

    move-result-wide v5

    .line 89
    new-instance p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(JJJ)V

    return-object p0
.end method

.method public static getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .locals 3

    .line 56
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiApClientDetails requesting mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p0

    if-nez p0, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiApClientDetails is NULL: for mac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiApClientDetails sent mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SemWifiApClientDetails: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public static getWifiApClientMobileDataConsumedDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
    .locals 7

    .line 70
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v5

    .line 72
    new-instance p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(JJJ)V

    return-object p0
.end method

.method public static getWifiApClientTimeLimit(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    .line 150
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTimeLimit()J

    move-result-wide v0

    .line 151
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApClientTimeLimit - mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", timeInMillis"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getWifiApClientTodayTotalTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    .line 156
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    move-result-wide v0

    .line 157
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApClientTodayTotalTime - mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", timeInMillis"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApTodaysTotalDataUsage()J

    move-result-wide v5

    .line 31
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiApTodayTotalDataUsage (Byte): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(JJJ)V

    return-object p0
.end method

.method public static isDataLimitReached(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 289
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v0

    .line 290
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p0

    .line 291
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    double-to-int v0, v0

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v1

    double-to-int p0, v1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWifiApClientDataPausedSet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    move-result p0

    return p0
.end method

.method public static setWifiApActiveSessionDataLimit(Landroid/content/Context;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiApActiveSessionDataLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApDailyDataLimit(J)V

    return-void
.end method

.method public static setWifiApClientDataPaused(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiApClientDataPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApClientDataPaused(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setWifiApClientMobileDataLimit(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApClientMobileDataLimit(Ljava/lang/String;J)V

    return-void
.end method

.method public static setWifiApClientTimeLimit(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3

    .line 144
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiApClientTimeLimit - mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timeInMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApClientTimeLimit(Ljava/lang/String;J)V

    return-void
.end method
