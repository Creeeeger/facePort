.class public Lcom/android/settings/notification/zen/ZenRulePreference;
.super Landroidx/preference/SecSwitchPreferenceScreen;
.source "ZenRulePreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;
    }
.end annotation


# instance fields
.field final mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field final mContext:Landroid/content/Context;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field final mId:Ljava/lang/String;

.field final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field mName:Ljava/lang/CharSequence;

.field final mParent:Landroidx/fragment/app/Fragment;

.field final mPref:Landroidx/preference/Preference;

.field private mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

.field mRule:Landroid/app/AutomaticZenRule;

.field private final mScheduleHelper:Lcom/android/settings/notification/zen/ZenRuleScheduleHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map$Entry;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            "Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Landroidx/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 69
    new-instance v0, Lcom/android/settings/notification/zen/ZenRuleScheduleHelper;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenRuleScheduleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mScheduleHelper:Lcom/android/settings/notification/zen/ZenRuleScheduleHelper;

    .line 75
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    .line 76
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    .line 77
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AutomaticZenRule;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    .line 78
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    .line 79
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mParent:Landroidx/fragment/app/Fragment;

    .line 84
    iput-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mPref:Landroidx/preference/Preference;

    .line 85
    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 86
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenRulePreference;->setAttributes(Landroid/app/AutomaticZenRule;)V

    .line 87
    iput-object p5, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

    .line 91
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 7

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 150
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    const/16 v3, 0xa

    if-eqz v2, :cond_1

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    invoke-direct {p0, v2}, Lcom/android/settings/notification/zen/ZenRulePreference;->getDaysSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/zen/ZenRulePreference;->getDurationSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 164
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 165
    :goto_0
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 166
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 167
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    if-eqz v5, :cond_4

    const-string v2, "com.samsung.android.app.routines"

    .line 169
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_dnd_app_rules:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRulePreference;->computeZenModeCaption(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 187
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected package not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-object v1
.end method

.method private computeZenModeCaption(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_option_alarms:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 220
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_option_no_interruptions:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 218
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_option_important_interruptions:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDaysSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .locals 9

    .line 228
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz p1, :cond_c

    .line 229
    array-length v0, p1

    if-lez v0, :cond_c

    .line 232
    array-length v0, p1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 233
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_every_day:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 236
    :cond_0
    array-length v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_3

    aget v0, p1, v3

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_3

    :cond_1
    aget v0, p1, v4

    if-eq v0, v4, :cond_2

    if-ne v0, v1, :cond_3

    .line 238
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_week_ends:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 241
    :cond_3
    array-length v0, p1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 243
    array-length v0, p1

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_6

    aget v5, p1, v2

    if-eq v5, v4, :cond_5

    if-ne v5, v1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    move v4, v3

    :cond_6
    if-eqz v4, :cond_7

    .line 250
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_week_days:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 253
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 255
    invoke-static {v2}, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v4

    move v5, v3

    .line 256
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_b

    .line 257
    aget v6, v4, v5

    move v7, v3

    .line 258
    :goto_3
    array-length v8, p1

    if-ge v7, v8, :cond_a

    .line 259
    aget v8, p1, v7

    if-ne v6, v8, :cond_9

    .line 260
    invoke-virtual {v2, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 262
    iget-object v6, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->summary_divider_text:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_8
    iget-object v6, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 269
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_c

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDurationSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .locals 12

    .line 277
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 278
    iget v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 279
    iget v2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 280
    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v2, :cond_0

    if-ne v1, p1, :cond_0

    .line 284
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_settings_night_clock_all_day:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 287
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 288
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 289
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    const/16 v6, 0xb

    const/16 v7, 0xa

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 290
    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 291
    iget-object v8, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ~ "

    .line 292
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 295
    iget-object v8, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    invoke-virtual {v4, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 296
    invoke-virtual {v4, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 298
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, p1

    if-lt v0, v2, :cond_3

    .line 301
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->zen_mode_end_time_next_day_summary_format:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 304
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 312
    invoke-super {p0, p1}, Landroidx/preference/SeslSwitchPreferenceScreen;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 313
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected onCheckChange(Landroid/app/AutomaticZenRule;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

    invoke-interface {p1, p0}, Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;->onPreferenceLongClick(Lcom/android/settings/notification/zen/ZenRulePreference;)Z

    move-result p0

    return p0
.end method

.method protected setAttributes(Landroid/app/AutomaticZenRule;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 141
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public updatePreference(Landroid/app/AutomaticZenRule;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    .line 98
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 104
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    return-void
.end method
