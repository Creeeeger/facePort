.class public final Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALL_CONTACTS_INTENT:Landroid/content/Intent;

.field public static final FALLBACK_INTENT:Landroid/content/Intent;

.field public static final STARRED_CONTACTS_INTENT:Landroid/content/Intent;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIsMessages:Z

.field public final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field public mNumImportantConversations:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field public final mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

.field public final mSelectorPreferences:Ljava/util/List;

.field public final mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.LIST_STARRED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->FALLBACK_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/settings/notification/zen/ZenModeBackend;Lcom/android/settings/notification/NotificationBackend;Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mNumImportantConversations:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mSelectorPreferences:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mIsMessages:Z

    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iput-object p5, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    const p2, 0x7f140a04

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->FALLBACK_INTENT:Landroid/content/Intent;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p0, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p3, p0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceCategory;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "senders_starred_contacts"

    const v0, 0x7f143895

    iget-boolean v1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mIsMessages:Z

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->makeSelectorPreference(ILjava/lang/String;Z)V

    const-string p1, "senders_contacts"

    const v0, 0x7f14388e

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->makeSelectorPreference(ILjava/lang/String;Z)V

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    const-string v0, "conversations_important"

    const v2, 0x7f14388f

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->makeSelectorPreference(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->updateChannelCounts()V

    :cond_0
    const-string p1, "senders_anyone"

    const v0, 0x7f14388d

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->makeSelectorPreference(ILjava/lang/String;Z)V

    const-string p1, "senders_none"

    const v0, 0x7f1438a3

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->makeSelectorPreference(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->updateSummaries()V

    :cond_1
    return-void
.end method

.method public final keyToSettingEndState(Ljava/lang/String;Z)[I
    .locals 12

    const-string v0, "conversations_important"

    const-string v1, "senders_contacts"

    const-string v2, "senders_starred_contacts"

    const-string v3, "senders_none"

    const-string v4, "senders_anyone"

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x0

    const/16 v8, -0xa

    aput v8, v6, v7

    const/4 v9, 0x1

    aput v8, v6, v9

    const/4 v10, 0x3

    iget-boolean p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mIsMessages:Z

    const/4 v11, -0x1

    if-nez p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    :goto_0
    move p2, v11

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v10

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v5

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
    move p2, v7

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    aput v11, v6, v7

    :goto_2
    if-eqz p0, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_1

    :goto_3
    move v5, v11

    goto :goto_4

    :sswitch_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    :sswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v5, v9

    goto :goto_4

    :sswitch_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    move v5, v7

    :cond_6
    :goto_4
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_1
    aput v10, v6, v9

    goto/16 :goto_9

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_2

    :goto_5
    move p2, v11

    goto :goto_6

    :sswitch_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    move p2, v10

    goto :goto_6

    :sswitch_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    move p2, v5

    goto :goto_6

    :sswitch_9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_5

    :cond_a
    move p2, v9

    goto :goto_6

    :sswitch_a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    move p2, v7

    :goto_6
    packed-switch p2, :pswitch_data_2

    goto :goto_7

    :pswitch_2
    aput v11, v6, v7

    goto :goto_7

    :pswitch_3
    aput v7, v6, v7

    goto :goto_7

    :pswitch_4
    aput v9, v6, v7

    goto :goto_7

    :pswitch_5
    aput v5, v6, v7

    :goto_7
    if-eqz p0, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_3

    goto :goto_8

    :sswitch_b
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_8

    :cond_c
    move v11, v5

    goto :goto_8

    :sswitch_c
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_8

    :cond_d
    move v11, v9

    goto :goto_8

    :sswitch_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_8

    :cond_e
    move v11, v7

    :goto_8
    packed-switch v11, :pswitch_data_3

    goto :goto_9

    :pswitch_6
    aput v10, v6, v9

    goto :goto_9

    :pswitch_7
    aput v9, v6, v9

    goto :goto_9

    :pswitch_8
    aput v5, v6, v9

    :cond_f
    :goto_9
    aget p0, v6, v7

    if-ne p0, v8, :cond_11

    aget p0, v6, v9

    if-eq p0, v8, :cond_10

    goto :goto_a

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid key "

    invoke-static {p2, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_a
    return-object v6

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

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mSelectorClickListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

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

    sget-object p3, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->FALLBACK_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_3

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    iget-object p3, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->FALLBACK_INTENT:Landroid/content/Intent;

    iget-object p3, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    :cond_2
    new-instance v2, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper$1;-><init>(Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mSelectorPreferences:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final settingsToSaveOnClick(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;II)[I
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0xa

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-nez v5, :cond_1

    :cond_0
    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->keyToSettingEndState(Ljava/lang/String;Z)[I

    move-result-object v4

    aget v5, v4, v1

    aget v4, v4, v3

    if-eq v5, v2, :cond_2

    if-eq v5, p2, :cond_2

    aput v5, v0, v1

    :cond_2
    iget-boolean p0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mIsMessages:Z

    if-eqz p0, :cond_6

    if-eq v4, v2, :cond_3

    if-eq v4, p3, :cond_3

    aput v4, v0, v3

    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v2, "conversations_important"

    if-ne p0, v2, :cond_4

    if-nez p2, :cond_4

    const/4 p0, -0x1

    aput p0, v0, v1

    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p2, "senders_starred_contacts"

    if-eq p0, p2, :cond_5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "senders_contacts"

    if-ne p0, p1, :cond_6

    :cond_5
    if-ne p3, v3, :cond_6

    const/4 p0, 0x3

    aput p0, v0, v3

    :cond_6
    return-object v0
.end method

.method public final updateChannelCounts()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
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

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mNumImportantConversations:I

    return-void
.end method

.method public final updateState(II)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mSelectorPreferences:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->keyToSettingEndState(Ljava/lang/String;Z)[I

    move-result-object v2

    const/4 v4, 0x0

    aget v5, v2, v4

    aget v2, v2, v3

    if-ne v5, p1, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mIsMessages:Z

    if-eqz v7, :cond_3

    const/16 v7, -0xa

    if-eq v2, v7, :cond_3

    if-nez v6, :cond_1

    if-ne v5, v7, :cond_2

    :cond_1
    if-ne v2, p2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    move v6, v3

    :cond_3
    invoke-virtual {v1, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final updateSummaries()V
    .locals 14

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mSelectorPreferences:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "senders_none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_1
    const-string v3, "senders_anyone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_2

    :sswitch_2
    const-string v3, "conversations_important"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_2

    :sswitch_3
    const-string v3, "senders_contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_2

    :sswitch_4
    const-string v3, "senders_starred_contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v2, -0x1

    :goto_2
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    if-eqz v2, :cond_6

    const-string v7, "count"

    if-eq v2, v4, :cond_5

    const/4 v3, 0x0

    if-eq v2, v5, :cond_3

    if-eq v2, v6, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mIsMessages:Z

    if-eqz v3, :cond_2

    const v3, 0x7f143831

    goto :goto_3

    :cond_2
    const v3, 0x7f143830

    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_3
    iget v2, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mNumImportantConversations:I

    const/16 v4, -0xa

    if-ne v2, v4, :cond_4

    goto :goto_4

    :cond_4
    new-instance v3, Landroid/icu/text/MessageFormat;

    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenPrioritySendersHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f14386e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/icu/text/MessageFormat;

    iget-object v4, v3, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    const v5, 0x7f14386d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v3, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lcom/android/settings/notification/zen/ZenModeBackend;->getStarredContactsSummary()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x444c2b2c -> :sswitch_4
        -0x7ef016c -> :sswitch_3
        0x2757b2f3 -> :sswitch_2
        0x66d5177b -> :sswitch_1
        0x695a95f9 -> :sswitch_0
    .end sparse-switch
.end method
