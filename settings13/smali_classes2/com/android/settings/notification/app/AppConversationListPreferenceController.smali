.class public Lcom/android/settings/notification/app/AppConversationListPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "AppConversationListPreferenceController.java"


# instance fields
.field protected mConversationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected mConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreference:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static synthetic $r8$lambda$TVu6Tn71GIm8CCWagAHQ-okl3V8(Lcom/android/settings/notification/app/AppConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->lambda$populateConversationPreference$0(Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UTQrbkuDAYn4Vm-jTolkX6dYu_Q(Landroid/service/notification/ConversationChannelWrapper;Landroid/service/notification/ConversationChannelWrapper;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->lambda$new$1(Landroid/service/notification/ConversationChannelWrapper;Landroid/service/notification/ConversationChannelWrapper;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mConversations:Ljava/util/List;

    .line 225
    new-instance p1, Lcom/android/settings/notification/app/AppConversationListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/settings/notification/app/AppConversationListPreferenceController$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/service/notification/ConversationChannelWrapper;Landroid/service/notification/ConversationChannelWrapper;)I
    .locals 2

    .line 227
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    .line 228
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p1

    .line 231
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    .line 230
    invoke-static {p1, p0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$populateConversationPreference$0(Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 182
    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->getSubSettingLauncher(Landroid/service/notification/ConversationChannelWrapper;Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private populateConversations()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ConversationChannelWrapper;

    .line 150
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->createConversationPref(Landroid/service/notification/ConversationChannelWrapper;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected createConversationPref(Landroid/service/notification/ConversationChannelWrapper;)Landroidx/preference/Preference;
    .locals 2

    .line 158
    new-instance v0, Lcom/android/settingslib/widget/AppPreference;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->populateConversationPreference(Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;)V

    return-object v0
.end method

.method protected filterAndSortConversations(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "conversations"

    return-object p0
.end method

.method getSubSettingLauncher(Landroid/service/notification/ConversationChannelWrapper;Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 3

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CHANNEL_ID"

    .line 211
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.provider.extra.CONVERSATION_ID"

    .line 213
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fromSettings"

    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 217
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 220
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x48

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    return-object p0
.end method

.method protected getTitleResId()I
    .locals 0

    .line 132
    sget p0, Lcom/android/settings/R$string;->conversations_category_title:I

    return p0
.end method

.method public hasValidConversation(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 66
    :cond_0
    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_1

    return v1

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_3

    .line 70
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 71
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->hasValidConversation(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 77
    invoke-virtual {v0, v3, v2}, Lcom/android/settings/notification/NotificationBackend;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/notification/NotificationBackend;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method isIncludedInFilter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected loadConversationsAndPopulate()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;-><init>(Lcom/android/settings/notification/app/AppConversationListPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 122
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected populateConversationPreference(Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;)V
    .locals 7

    .line 165
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->notification_conversation_summary:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 172
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 171
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 170
    :goto_1
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v5, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 176
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v6

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/notification/NotificationBackend;->getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/android/settings/notification/app/AppConversationListPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/notification/app/AppConversationListPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/AppConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method protected populateList()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->populateConversations()V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 95
    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->loadConversationsAndPopulate()V

    return-void
.end method
