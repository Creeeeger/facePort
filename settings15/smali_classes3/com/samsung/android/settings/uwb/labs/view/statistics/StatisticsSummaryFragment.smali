.class public Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragment;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d09df

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    const-string p0, "StatisticsSummaryFragment"

    const-string p1, "CREATE: StatisticsSummaryFragment"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d09df

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    const-string p0, "StatisticsSummaryFragment"

    const-string p1, "CREATE: StatisticsSummaryFragment"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d09df

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    const-string p0, "StatisticsSummaryFragment"

    const-string p1, "CREATE: StatisticsSummaryFragment"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f0d09df

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    const-string p0, "StatisticsSummaryFragment"

    const-string p1, "CREATE: StatisticsSummaryFragment"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    iput-object p1, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragment;->updatePreference()V

    return-void
.end method

.method public final updatePreference()V
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mStatisticsControl:Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;

    iget-object v2, v0, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->mDataManager:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    iget-object v0, v2, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mUwbDbReader:Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "UwbDbReader"

    const-string v4, "SELECT * FROM uwb_state"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "cursor is NULL"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v9, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;

    invoke-direct {v9, v3, v7, v8}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;-><init>(IJ)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v7, v4

    goto :goto_1

    :goto_0
    const-string v4, "Error reading uwb.db file using SQLite3"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    if-nez v7, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;

    iget v4, v3, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;->mUwbState:I

    sput v4, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mUwbState:I

    iget-wide v3, v3, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;->mStateChangedTime:J

    sput-wide v3, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->mStateChangedTime:J

    move v3, v6

    :goto_2
    invoke-virtual {v2}, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->getUwbUsage()Z

    move-result v2

    and-int/2addr v2, v3

    if-nez v2, :cond_4

    const-string v2, "StatisticsSummaryFragment"

    const-string v3, "fail to read database."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    iget-object v2, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    if-nez v2, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-object v2, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mStatisticsControl:Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;

    invoke-virtual {v2, v0, v0}, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->getData(II)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v8, 0x7f0a0387

    invoke-virtual {v4, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v9, 0x7f0a03f3

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    const v10, 0x7f0606de

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    const v7, 0x7f080aa1

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->startAnimation(I)V

    iget-object v4, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v7, 0x7f0a02c3

    invoke-virtual {v4, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/common/Month;->values()[Lcom/samsung/android/settings/uwb/labs/common/Month;

    move-result-object v9

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/samsung/android/settings/uwb/labs/common/Month;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->toDateFormat(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v7, 0x7f0a1063

    invoke-virtual {v4, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v8, 0x7f0a1064

    invoke-virtual {v7, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v10, 0x7f0a1065

    invoke-virtual {v8, v10}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v11, 0x7f0a1066

    invoke-virtual {v10, v11}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v2, v5, v0}, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->getData(II)J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->getHours(J)J

    move-result-wide v11

    invoke-virtual {v2, v5, v0}, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->getData(II)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->getMinutes(J)J

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f14315b

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    const-wide/16 v11, 0x0

    cmp-long v7, v13, v11

    const-string v15, ""

    const v6, 0x7f14315c

    if-nez v7, :cond_6

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v7, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v8, 0x7f0a0487

    invoke-virtual {v7, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v2, v8, v0}, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->getData(II)J

    move-result-wide v13

    cmp-long v10, v13, v11

    const/4 v5, 0x7

    const-wide/16 v16, 0x3e8

    const-wide/16 v18, 0x3c

    if-nez v10, :cond_7

    move-object v10, v7

    goto :goto_4

    :cond_7
    div-long v13, v13, v18

    div-long v13, v13, v16

    move-object v10, v7

    int-to-long v6, v5

    div-long/2addr v13, v6

    :goto_4
    div-long v13, v13, v18

    invoke-virtual {v2, v8, v0}, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->getData(II)J

    move-result-wide v6

    cmp-long v8, v6, v11

    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    div-long v6, v6, v18

    div-long v6, v6, v16

    int-to-long v4, v5

    div-long/2addr v6, v4

    :goto_5
    rem-long v6, v6, v18

    cmp-long v4, v13, v11

    if-nez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    const v6, 0x7f14315c

    invoke-static {v5, v6, v4}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    const v8, 0x7f14315b

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    cmp-long v5, v6, v11

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    const v6, 0x7f14315c

    invoke-static {v4, v6, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    :cond_a
    :goto_6
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v5, 0x7f0a03d4

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v6, 0x7f0a03d3

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v0}, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->getData(II)J

    move-result-wide v6

    const/4 v10, 0x2

    invoke-virtual {v2, v10, v0}, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->getData(II)J

    move-result-wide v13

    sub-long/2addr v13, v6

    cmp-long v6, v13, v11

    if-gez v6, :cond_b

    const-wide/16 v6, -0x1

    mul-long/2addr v13, v6

    const-string v6, " less than yesterday"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    const-string v6, " more than yesterday"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-static {v13, v14}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->getHours(J)J

    move-result-wide v5

    invoke-static {v13, v14}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->getMinutes(J)J

    move-result-wide v13

    cmp-long v7, v5, v11

    if-nez v7, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    const v7, 0x7f14315c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_c
    cmp-long v7, v13, v11

    if-nez v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    const v8, 0x7f14315b

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_d
    const v8, 0x7f14315b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v7, v9}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    const v6, 0x7f14315c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object v4, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v5, 0x7f0a03fd

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v6, 0x7f0a03fe

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v7, 0x7f0a045d

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v7, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v8, 0x7f0a03fb

    invoke-virtual {v7, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iget-object v8, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v9, 0x7f0a03fc

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v2, v9, v0}, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->getData(II)J

    move-result-wide v10

    const/16 v12, 0x8

    if-ne v3, v9, :cond_f

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v10, v11}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->getReportFormat(J)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->mDarkMode:Z

    if-eqz v2, :cond_e

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_e
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_f
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v5, 0x7f0a045c

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v1, v1, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v5, 0x7f0a045b

    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v5, 0x1

    if-ne v3, v5, :cond_10

    const-string v3, "UWB enabled at "

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_10
    const-string v3, "UWB disabled at "

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    invoke-virtual {v2, v5, v0}, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;->getData(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/settings/uwb/labs/common/UwbLabsUtils;->getReportFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    return-void
.end method
