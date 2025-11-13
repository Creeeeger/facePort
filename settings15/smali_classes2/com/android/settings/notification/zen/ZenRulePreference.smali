.class public Lcom/android/settings/notification/zen/ZenRulePreference;
.super Landroidx/preference/SecSwitchPreferenceScreen;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field public final mContext:Landroid/content/Context;

.field public final mDayFormat:Ljava/text/SimpleDateFormat;

.field public final mId:Ljava/lang/String;

.field public mName:Ljava/lang/CharSequence;

.field public final mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

.field public mRule:Landroid/app/AutomaticZenRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map$Entry;Lcom/android/settings/notification/zen/ZenModeBackend;Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mDayFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AutomaticZenRule;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/zen/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->setPersistent()V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 14

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eqz v3, :cond_13

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_d

    array-length v7, v1

    if-lez v7, :cond_d

    array-length v7, v1

    const/4 v8, 0x7

    if-ne v7, v8, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142305

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_0
    array-length v7, v1

    if-ne v7, v4, :cond_3

    aget v4, v1, v6

    if-eq v4, v0, :cond_1

    if-ne v4, v8, :cond_3

    :cond_1
    aget v4, v1, v0

    if-eq v4, v0, :cond_2

    if-ne v4, v8, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142322

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_3
    array-length v4, v1

    const/4 v7, 0x5

    if-ne v4, v7, :cond_6

    array-length v4, v1

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_5

    aget v9, v1, v7

    if-eq v9, v0, :cond_6

    if-ne v9, v8, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr v7, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142321

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    sget v9, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->$r8$clinit:I

    new-array v9, v8, [I

    invoke-virtual {v7}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v10

    move v11, v6

    :goto_2
    if-ge v11, v8, :cond_8

    if-le v10, v8, :cond_7

    move v10, v0

    :cond_7
    aput v10, v9, v11

    add-int/2addr v10, v0

    add-int/2addr v11, v0

    goto :goto_2

    :cond_8
    move v10, v6

    :goto_3
    if-ge v10, v8, :cond_c

    aget v11, v9, v10

    move v12, v6

    :goto_4
    array-length v13, v1

    if-ge v12, v13, :cond_b

    aget v13, v1, v12

    if-ne v11, v13, :cond_a

    invoke-virtual {v7, v8, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_9

    iget-object v11, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    const v12, 0x7f142e08

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v11, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    add-int/2addr v12, v0

    goto :goto_4

    :cond_b
    :goto_5
    add-int/2addr v10, v0

    goto :goto_3

    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_d
    :goto_6
    if-eqz v2, :cond_e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    iget v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v1, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iget v2, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v2, :cond_f

    if-ne v1, v3, :cond_f

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142315

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    iget-object v7, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    const/16 v8, 0xb

    if-eqz v7, :cond_10

    move v7, v8

    goto :goto_7

    :cond_10
    move v7, v5

    :goto_7
    invoke-virtual {v6, v7, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    invoke-virtual {v6, v7, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v9, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ~ "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    iget-object v9, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_11

    move v5, v8

    :cond_11
    invoke-virtual {v6, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v7, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_12

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f143880

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    :try_start_0
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_9

    :catch_0
    move-exception p1

    goto/16 :goto_b

    :cond_14
    move-object v0, v2

    :goto_9
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "com.android.settings"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v0, "com.samsung.android.app.routines"

    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :cond_15
    if-eqz v0, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    const v1, 0x7f142300

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result p1

    if-eq p1, v4, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    move-object p1, v2

    goto :goto_a

    :cond_16
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f1438a4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_17
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f1438a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_18
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f1438a5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_a
    if-eqz p1, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f1409b2

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected package not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenRulePreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->removeZenRule(Ljava/lang/String;)V

    :cond_1a
    return-object v2
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/SecSwitchPreferenceScreen;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

    invoke-interface {p1, p0}, Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;->onPreferenceLongClick(Lcom/android/settings/notification/zen/ZenRulePreference;)V

    const/4 p0, 0x1

    return p0
.end method
