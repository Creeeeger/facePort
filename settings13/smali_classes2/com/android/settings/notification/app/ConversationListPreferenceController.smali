.class public abstract Lcom/android/settings/notification/app/ConversationListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ConversationListPreferenceController.java"


# instance fields
.field protected final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field mConversationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public static synthetic $r8$lambda$DtzZdJKybrCkHQA0LZrvcq4mwuo(Lcom/android/settings/notification/app/ConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;)Landroidx/preference/Preference;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->createConversationPref(Landroid/service/notification/ConversationChannelWrapper;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ld4LOOZQxMRXNlMYrIRyx5j8bL8(Lcom/android/settings/notification/app/ConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->lambda$populateConversations$0(Landroid/service/notification/ConversationChannelWrapper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tvnNTd5pNCQE-u8YKSNiu_6TTJY(Lcom/android/settings/notification/app/ConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settingslib/widget/AppPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->lambda$createConversationPref$2(Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settingslib/widget/AppPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yOId1qd66--gvvfWNOBCb5TS_zg(Lcom/android/settings/notification/app/ConversationListPreferenceController;Ljava/util/concurrent/atomic/AtomicInteger;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->lambda$populateConversations$1(Ljava/util/concurrent/atomic/AtomicInteger;Landroidx/preference/Preference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance p1, Lcom/android/settings/notification/app/ConversationListPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/app/ConversationListPreferenceController$1;-><init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    .line 54
    iput-object p2, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method private createConversationPref(Landroid/service/notification/ConversationChannelWrapper;)Landroidx/preference/Preference;
    .locals 8

    .line 117
    new-instance v0, Lcom/android/settingslib/widget/AppPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->getTitle(Landroid/service/notification/ConversationChannelWrapper;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->getSummary(Landroid/service/notification/ConversationChannelWrapper;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 122
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v6

    .line 123
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v7

    .line 121
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/notification/NotificationBackend;->getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settingslib/widget/AppPreference;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method private synthetic lambda$createConversationPref$2(Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settingslib/widget/AppPreference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 126
    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->getSubSettingLauncher(Landroid/service/notification/ConversationChannelWrapper;Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$populateConversations$0(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 1

    .line 106
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$populateConversations$1(Ljava/util/concurrent/atomic/AtomicInteger;Landroidx/preference/Preference;)V
    .locals 0

    .line 111
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 112
    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method getSubSettingLauncher(Landroid/service/notification/ConversationChannelWrapper;Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 3

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CHANNEL_ID"

    .line 152
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CONVERSATION_ID"

    .line 154
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 161
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x72a

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    return-object p0
.end method

.method getSummary(Landroid/service/notification/ConversationChannelWrapper;)Ljava/lang/CharSequence;
    .locals 4

    .line 134
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->notification_conversation_summary:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v2

    .line 136
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method abstract getSummaryPreference()Lcom/samsung/android/settings/widget/SecUnclickablePreference;
.end method

.method getTitle(Landroid/service/notification/ConversationChannelWrapper;)Ljava/lang/CharSequence;
    .locals 0

    .line 141
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method abstract matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z
.end method

.method populateConversations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 105
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;)V

    .line 106
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    .line 108
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;)V

    .line 109
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/app/ConversationListPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 110
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method updateList(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;)Z"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->populateConversations(Ljava/util/List;)V

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move v1, v0

    :cond_1
    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->getSummaryPreference()Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_summary"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 89
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return v1
.end method
