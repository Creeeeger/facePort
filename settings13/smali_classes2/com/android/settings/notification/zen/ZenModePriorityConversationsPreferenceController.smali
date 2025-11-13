.class public Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModePriorityConversationsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final KEY_ALL:Ljava/lang/String; = "conversations_all"

.field static final KEY_IMPORTANT:Ljava/lang/String; = "conversations_important"

.field static final KEY_NONE:Ljava/lang/String; = "conversations_none"


# instance fields
.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mNumConversations:I

.field private mNumImportantConversations:I

.field private mPreference:Landroidx/preference/SecDropDownPreference;

.field private mSelectorWithWidgetPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/SelectorWithWidgetPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNumImportantConversations:I

    .line 65
    iput p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNumConversations:I

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mSelectorWithWidgetPreferences:Ljava/util/List;

    .line 77
    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method private updateValue(Landroidx/preference/Preference;)V
    .locals 4

    .line 246
    move-object v0, p1

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    .line 258
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getConversationSummary()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 260
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityConversationSenders()I

    move-result p1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_0

    .line 270
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 253
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAlarmsTotalSilencePeopleSummary(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "zen_mode_conversations"

    .line 93
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreference:Landroidx/preference/SecDropDownPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_conversations"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveConversationSenders(I)V

    .line 241
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->updateValue(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->updateValue(Landroidx/preference/Preference;)V

    return-void
.end method
