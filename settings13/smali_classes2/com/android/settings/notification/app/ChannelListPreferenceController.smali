.class public Lcom/android/settings/notification/app/ChannelListPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "ChannelListPreferenceController.java"


# instance fields
.field private mChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static synthetic $r8$lambda$Li9K-7r5milXeDSQTHk57-TSiwo(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->lambda$addOrUpdateGroupToggle$0(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W4YVx9aTc-mgSMqNPjRhZVTmwTg(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->lambda$updateSingleChannelPrefs$1(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelGroupList(Lcom/android/settings/notification/app/ChannelListPreferenceController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/notification/app/ChannelListPreferenceController;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChannelGroupList(Lcom/android/settings/notification/app/ChannelListPreferenceController;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method private addOrUpdateGroupToggle(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)Landroidx/preference/Preference;
    .locals 8

    .line 292
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 293
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    move v3, v2

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    move v3, v1

    :goto_0
    const/4 v4, -0x1

    .line 299
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 300
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->notification_switch_label:I

    new-array v6, v1, [Ljava/lang/Object;

    .line 301
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v2

    .line 300
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v4, :cond_1

    .line 303
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    .line 302
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 304
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 305
    new-instance v1, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v3, :cond_2

    .line 314
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-object v0
.end method

.method private findOrCreateChannelPrefForKey(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;
    .locals 4

    .line 219
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 221
    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    check-cast v1, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 227
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    invoke-virtual {v2, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 230
    check-cast v2, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_2
    new-instance v0, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 235
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private findOrCreateGroupCategoryForKey(Landroidx/preference/PreferenceCategory;Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;
    .locals 4

    if-nez p2, :cond_0

    const-string p2, "categories"

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 164
    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    check-cast v1, Landroidx/preference/PreferenceCategory;

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 170
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-virtual {v2, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 173
    check-cast v2, Landroidx/preference/PreferenceCategory;

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_3
    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 178
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private synthetic lambda$addOrUpdateGroupToggle$0(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z
    .locals 3

    .line 306
    check-cast p2, Landroidx/preference/SwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 307
    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 308
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, v2, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V

    return v0
.end method

.method private synthetic lambda$updateSingleChannelPrefs$1(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 353
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 357
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v0, 0x4

    .line 358
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 359
    check-cast p2, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 364
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, v1, v0, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 366
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "from"

    const-string v0, "channel list"

    .line 367
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p0, ";on"

    goto :goto_1

    :cond_1
    const-string p0, ";off"

    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "turnOnOff"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x8cb6

    .line 369
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "NSTE0021"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateGroupList(Landroidx/preference/PreferenceCategory;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceCategory;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 187
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 190
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    .line 192
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->findOrCreateGroupCategoryForKey(Landroidx/preference/PreferenceCategory;Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v6

    .line 193
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-direct {p0, v5, v6}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    const/4 p2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eq p0, v0, :cond_2

    move v3, p2

    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    .line 204
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 205
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    .line 206
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V
    .locals 9

    .line 242
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 246
    sget v2, Lcom/android/settings/R$string;->notification_channels_other:I

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    invoke-direct {p0, p2, p1}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->addOrUpdateGroupToggle(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    .line 257
    :goto_1
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v3

    .line 258
    :goto_2
    sget-object v6, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 259
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 260
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 266
    :cond_3
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 265
    invoke-direct {p0, p2, v7, v8}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->findOrCreateChannelPrefForKey(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;

    move-result-object v7

    .line 267
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v8

    invoke-direct {p0, v7, v6, v8}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateSingleChannelPrefs(Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;Landroid/app/NotificationChannel;Z)V

    .line 268
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 270
    :cond_4
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    .line 276
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez v2, :cond_5

    if-eq v0, p1, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v5

    :goto_4
    if-eq p0, p1, :cond_6

    goto :goto_5

    :cond_6
    move v4, v5

    :goto_5
    if-nez v0, :cond_7

    if-eqz v4, :cond_8

    .line 280
    :cond_7
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 281
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    .line 282
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    :cond_8
    return-void
.end method

.method private updateSingleChannelPrefs(Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;Landroid/app/NotificationChannel;Z)V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelBlockable(Landroid/app/NotificationChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    .line 323
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    const/4 p3, 0x0

    .line 330
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x2

    .line 332
    invoke-virtual {p1, p3}, Lcom/android/settingslib/widget/TwoTargetPreference;->setIconSize(I)V

    .line 333
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-eqz p3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 339
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 340
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string/jumbo v1, "uid"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string/jumbo v1, "package"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromSettings"

    .line 343
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 344
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 345
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 346
    invoke-virtual {v0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    sget v0, Lcom/android/settings/R$string;->notification_channel_title:I

    .line 347
    invoke-virtual {p3, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    const/16 v0, 0x48

    .line 348
    invoke-virtual {p3, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    .line 349
    invoke-virtual {p3}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p3

    .line 344
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 351
    new-instance p3, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannel;)V

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "channels"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 80
    :cond_0
    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_1

    return v1

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 85
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "miscellaneous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method isIncludedInFilter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V

    :cond_1
    return-void
.end method

.method updateFullList(Landroidx/preference/PreferenceCategory;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceCategory;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    const/4 v0, 0x1

    const-string/jumbo v1, "zeroCategories"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 128
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    .line 131
    sget p1, Lcom/android/settings/R$string;->notification_channels:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 132
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->no_channels:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 137
    new-instance p2, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 138
    sget v0, Lcom/android/settings/R$string;->notification_channels:I

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 139
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 142
    new-instance p1, Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 143
    sget p0, Lcom/android/settings/R$string;->no_channels:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 144
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 145
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupList(Landroidx/preference/PreferenceCategory;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 99
    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    .line 101
    new-instance p1, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 116
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
