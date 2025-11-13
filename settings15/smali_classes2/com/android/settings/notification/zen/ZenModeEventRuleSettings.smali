.class public Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;
.super Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CALENDAR_NAME:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$3;


# instance fields
.field public mCalendar:Landroidx/preference/DropDownPreference;

.field public mCreate:Z

.field public mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

.field public mReply:Landroidx/preference/DropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->CALENDAR_NAME:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;-><init>()V

    return-void
.end method

.method public static key$1(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addCalendar(JLjava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->calendarId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    invoke-interface {p5, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x92

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1702b3

    return p0
.end method

.method public final onCreateInternal()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mCreate:Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "calendar"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    new-instance v3, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;I)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "reply"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/CharSequence;

    const v4, 0x7f143884

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f143886

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const v4, 0x7f143885

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    iput-object v2, v1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->reloadCalendar()V

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->updateControlsInternal()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mCreate:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->reloadCalendar()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mCreate:Z

    return-void
.end method

.method public final reloadCalendar()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v10, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v10, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v1

    goto :goto_1

    :catch_0
    move-object v11, v2

    :goto_1
    if-eqz v11, :cond_0

    const-string v1, "_id"

    const-string v3, "calendar_displayName"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v14

    :try_start_1
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v15, "calendar_access_level >= 500 AND sync_events = 1"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v12, :cond_2

    if-eqz v12, :cond_0

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :goto_2
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    move-result v5

    move-object/from16 v1, p0

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->addCalendar(JLjava/lang/String;ILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v12

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    sget-object v1, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->CALENDAR_NAME:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$3;

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f143882

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, ""

    invoke-static {v10, v2, v4}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->key$1(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v4, :cond_5

    iget-object v2, v4, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;

    iget-object v6, v5, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v5, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    iget-object v7, v5, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->calendarId:Ljava/lang/Long;

    iget-object v8, v5, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->key$1(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_6

    iget-object v6, v0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-nez v6, :cond_6

    iget-object v6, v5, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v5, v5, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$CalendarInfo;->calendarId:Ljava/lang/Long;

    iput-object v5, v6, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    iget-object v3, v3, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v1, v0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    iget-object v1, v1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    iput-object v2, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_9
    return-void
.end method

.method public final setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final updateControlsInternal()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->key$1(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->key$1(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget p0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
