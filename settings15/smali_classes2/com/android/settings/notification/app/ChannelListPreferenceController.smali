.class public final Lcom/android/settings/notification/app/ChannelListPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final channelList:Ljava/util/List;

.field public mChannelGroupList:Ljava/util/List;

.field public mPreference:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    const-string p1, "INSIGNIFICANT"

    const-string p2, "edge_lighting_chnnel_id"

    const-string v0, "ZEN_ONGOING"

    filled-new-array {p2, v0, p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->channelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "channels"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miscellaneous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_0

    const v4, 0x7f141aa7

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setTitle(I)V

    move-object/from16 v10, p1

    move-object v4, v5

    goto :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v4, :cond_1

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/RestrictedSwitchPreference;

    move v8, v6

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v8, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    move v8, v7

    :goto_0
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v9, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f141b12

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v9, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v7

    goto :goto_1

    :cond_2
    move v9, v6

    :goto_1
    invoke-virtual {v4, v9}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v9

    xor-int/2addr v9, v7

    invoke-virtual {v4, v9}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v9, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;

    move-object/from16 v10, p1

    invoke-direct {v9, v0, v10}, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v4, v9}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v8, :cond_3

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_4

    move v8, v7

    goto :goto_3

    :cond_4
    move v8, v6

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v9

    :goto_4
    sget-object v11, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_COMPARATOR:Lcom/android/settings/notification/app/NotificationPreferenceController$$ExternalSyntheticLambda0;

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannel;

    if-eqz v11, :cond_6

    iget-object v12, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v12, v12, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    if-eqz v12, :cond_6

    iget-object v12, v0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->channelList:Ljava/util/List;

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v13

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v12, v12, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v13, "com.android.systemui"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v14

    if-ge v13, v14, :cond_8

    invoke-virtual {v1, v13}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast v15, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v14, :cond_a

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v15, v13}, Landroidx/preference/Preference;->setOrder(I)V

    check-cast v15, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;

    goto :goto_7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    new-instance v15, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;

    iget-object v6, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v15, v6, v5}, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v15, v13}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v15, v12}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v6

    iget-object v7, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v7, :cond_c

    iget-object v7, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v7, :cond_b

    iget-object v12, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v7, v7, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v12, v7, v11}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockableNotificationChannel(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)Z

    move-result v7

    goto :goto_8

    :cond_b
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_c

    invoke-virtual {v0, v11}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-nez v6, :cond_c

    const/4 v6, 0x1

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v15, v6}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    invoke-virtual {v15, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x2

    iput v6, v15, Lcom/android/settingslib/widget/TwoTargetPreference;->mIconSize:I

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v15, v6}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v7, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v7, v7, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string v12, "uid"

    invoke-virtual {v6, v12, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v7, v7, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v12, "package"

    invoke-virtual {v6, v12, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "fromSettings"

    const/4 v12, 0x1

    invoke-virtual {v6, v7, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v7, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v12, v0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v12}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v12, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v7, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v12, v13, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v6, v13, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const v6, 0x7f141aa5

    invoke-virtual {v7, v6, v5}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/16 v6, 0x48

    iput v6, v13, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v7}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    new-instance v6, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v11}, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannel;)V

    invoke-virtual {v15, v6}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v8, :cond_f

    if-eq v2, v5, :cond_f

    const/4 v12, 0x1

    goto :goto_b

    :cond_f
    const/4 v12, 0x0

    :goto_b
    if-eq v0, v5, :cond_10

    const/4 v0, 0x1

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    :goto_c
    if-eqz v4, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    if-ne v5, v4, :cond_12

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_12

    const/4 v6, 0x1

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    :cond_12
    move v6, v2

    :goto_d
    if-nez v12, :cond_13

    if-eqz v0, :cond_16

    :cond_13
    if-eqz v6, :cond_14

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_e

    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_15
    :goto_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_16

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_16
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    new-instance p1, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
