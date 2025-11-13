.class public final Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALL_CONTACTS_INTENT:Landroid/content/Intent;

.field public static final FALLBACK_INTENT:Landroid/content/Intent;

.field public static final STARRED_CONTACTS_INTENT:Landroid/content/Intent;


# instance fields
.field public final mIsMessages:Z

.field public mNumImportantConversations:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

.field public final mSelectorPreferences:Ljava/util/List;

.field public final mZenModeSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;


# direct methods
.method public static $r8$lambda$fC6F5aGNVjds-U5UJDBFUyMBJgg(Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "senders_starred_contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "senders_contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "conversations_important"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/app/ConversationListSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p0, 0x72d

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->FALLBACK_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.LIST_STARRED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->FALLBACK_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mNumImportantConversations:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mSelectorPreferences:Ljava/util/List;

    new-instance p2, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$1;-><init>(Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iput-boolean p3, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    const p2, 0x7f140a04

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->FALLBACK_INTENT:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance p1, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;-><init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mZenModeSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "senders_starred_contacts"

    const v1, 0x7f143895

    iget-boolean v2, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->makeSelectorPreference(ILjava/lang/String;Z)V

    const-string v0, "senders_contacts"

    const v1, 0x7f14388e

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->makeSelectorPreference(ILjava/lang/String;Z)V

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    const-string v1, "conversations_important"

    const v3, 0x7f14388f

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->makeSelectorPreference(ILjava/lang/String;Z)V

    :cond_0
    const-string v0, "senders_anyone"

    const v1, 0x7f14388d

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->makeSelectorPreference(ILjava/lang/String;Z)V

    const-string v0, "senders_none"

    const v1, 0x7f1438a3

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->makeSelectorPreference(ILjava/lang/String;Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final keyToSettingEndState(Ljava/lang/String;Z)[I
    .locals 12

    const-string v0, "conversations_important"

    const-string v1, "senders_contacts"

    const-string v2, "senders_starred_contacts"

    const-string v3, "senders_none"

    const-string v4, "senders_anyone"

    const/4 v5, -0x1

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v8, v7, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-boolean p0, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-nez p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    :goto_0
    move p2, v5

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v11

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v6

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v9

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move p2, v8

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    aput v10, v7, v8

    :goto_2
    if-eqz p0, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_1

    goto :goto_3

    :sswitch_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    goto :goto_3

    :sswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    move v5, v9

    goto :goto_3

    :sswitch_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    move v5, v8

    :goto_3
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_1
    aput v11, v7, v9

    goto/16 :goto_8

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_2

    :goto_4
    move p2, v5

    goto :goto_5

    :sswitch_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    move p2, v11

    goto :goto_5

    :sswitch_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    move p2, v6

    goto :goto_5

    :sswitch_9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    move p2, v9

    goto :goto_5

    :sswitch_a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_4

    :cond_b
    move p2, v8

    :goto_5
    packed-switch p2, :pswitch_data_2

    goto :goto_6

    :pswitch_2
    aput v10, v7, v8

    goto :goto_6

    :pswitch_3
    aput v9, v7, v8

    goto :goto_6

    :pswitch_4
    aput v6, v7, v8

    goto :goto_6

    :pswitch_5
    aput v11, v7, v8

    :goto_6
    if-eqz p0, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_3

    goto :goto_7

    :sswitch_b
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_7

    :cond_c
    move v5, v6

    goto :goto_7

    :sswitch_c
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_7

    :cond_d
    move v5, v9

    goto :goto_7

    :sswitch_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_7

    :cond_e
    move v5, v8

    :goto_7
    packed-switch v5, :pswitch_data_3

    goto :goto_8

    :pswitch_6
    aput v11, v7, v9

    goto :goto_8

    :pswitch_7
    aput v9, v7, v9

    goto :goto_8

    :pswitch_8
    aput v6, v7, v9

    :cond_f
    :goto_8
    aget p0, v7, v8

    if-nez p0, :cond_11

    aget p0, v7, v9

    if-eqz p0, :cond_10

    goto :goto_9

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid key "

    invoke-static {p2, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_9
    return-object v7

    :sswitch_data_0
    .sparse-switch
        -0x444c2b2c -> :sswitch_3
        -0x7ef016c -> :sswitch_2
        0x66d5177b -> :sswitch_1
        0x695a95f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x2757b2f3 -> :sswitch_6
        0x66d5177b -> :sswitch_5
        0x695a95f9 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x444c2b2c -> :sswitch_a
        -0x7ef016c -> :sswitch_9
        0x66d5177b -> :sswitch_8
        0x695a95f9 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x2757b2f3 -> :sswitch_d
        0x66d5177b -> :sswitch_c
        0x695a95f9 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final makeSelectorPreference(ILjava/lang/String;Z)V
    .locals 3

    new-instance v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iput-object p1, v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    const-string p1, "senders_contacts"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "senders_starred_contacts"

    const/4 v2, 0x0

    if-nez p3, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "conversations_important"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->FALLBACK_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_3

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    iget-object p3, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->FALLBACK_INTENT:Landroid/content/Intent;

    iget-object p3, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    :cond_2
    new-instance v2, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mSelectorPreferences:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateChannelCounts$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lcom/android/settings/notification/modes/ZenModesBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZenModeBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ConversationChannelWrapper;

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mNumImportantConversations:I

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 8

    iget-boolean p1, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->updateChannelCounts$2()V

    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    :goto_0
    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    iget-object v2, p0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mSelectorPreferences:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->keyToSettingEndState(Ljava/lang/String;Z)[I

    move-result-object v4

    aget v6, v4, v1

    aget v4, v4, v5

    if-ne v6, v0, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    if-nez v7, :cond_4

    if-nez v6, :cond_5

    :cond_4
    if-ne v4, p2, :cond_5

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_4
    move v7, v5

    :cond_6
    invoke-virtual {v3, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->updateSummaries$1()V

    return-void
.end method

.method public final updateSummaries$1()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mSelectorPreferences:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "senders_none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    const-string v4, "senders_anyone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_2

    :sswitch_2
    const-string v4, "conversations_important"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_2

    :sswitch_3
    const-string v4, "senders_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_2

    :sswitch_4
    const-string v4, "senders_starred_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v3, -0x1

    :goto_2
    const-string v4, "display_name"

    iget-object v9, v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mZenModeSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    const-string v10, "count"

    const/4 v11, 0x0

    if-eqz v3, :cond_6

    if-eq v3, v6, :cond_5

    if-eq v3, v7, :cond_3

    if-eq v3, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz v4, :cond_2

    const v4, 0x7f143831

    goto :goto_3

    :cond_2
    const v4, 0x7f143830

    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_3
    iget v3, v0, Lcom/android/settings/notification/modes/ZenModePrioritySendersPreferenceController;->mNumImportantConversations:I

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_4
    new-instance v4, Landroid/icu/text/MessageFormat;

    iget-object v5, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f14386e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/icu/text/MessageFormat;

    iget-object v5, v9, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f14386d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v9, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    iget-object v6, v6, Lcom/android/settings/notification/modes/ZenModesBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v5}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_6
    iget-object v3, v9, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v12, v3, Lcom/android/settings/notification/modes/ZenModesBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v15

    const-string v18, "times_contacted"

    const-string v16, "starred=1"

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/settings/notification/modes/ZenModesBackend;->getStarredContacts(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v11, Landroid/icu/text/MessageFormat;

    iget-object v9, v9, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v12, 0x7f1438ef

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v4, v6, :cond_8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v10, "contact_1"

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v4, v7, :cond_8

    const-string v5, "contact_2"

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v4, v8, :cond_8

    const-string v4, "contact_3"

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v11, v9}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_4
    invoke-virtual {v2, v11}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :cond_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x444c2b2c -> :sswitch_4
        -0x7ef016c -> :sswitch_3
        0x2757b2f3 -> :sswitch_2
        0x66d5177b -> :sswitch_1
        0x695a95f9 -> :sswitch_0
    .end sparse-switch
.end method
