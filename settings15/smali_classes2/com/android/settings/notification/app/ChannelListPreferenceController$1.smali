.class public final Lcom/android/settings/notification/app/ChannelListPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Landroid/app/INotificationManager;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    sget-object p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_GROUP_COMPARATOR:Lcom/android/settings/notification/app/NotificationPreferenceController$$ExternalSyntheticLambda0;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 13

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const v1, 0x7f141a31

    const v4, 0x7f141aa6

    const-string v5, "zeroCategories"

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance p1, Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto/16 :goto_6

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_0
    if-ge v6, v1, :cond_7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v8, "categories"

    :cond_3
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    if-ge v6, v9, :cond_4

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    check-cast v10, Landroidx/preference/PreferenceCategory;

    goto :goto_2

    :cond_4
    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_6

    invoke-virtual {p1, v10}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setOrder(I)V

    move-object v10, v11

    check-cast v10, Landroidx/preference/PreferenceCategory;

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    new-instance v10, Landroidx/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v9}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v10, v8}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :goto_2
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7, v10}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-eqz v4, :cond_8

    if-eq v4, v1, :cond_8

    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v3

    :goto_3
    if-eq p0, v1, :cond_9

    goto :goto_4

    :cond_9
    move v2, v3

    :goto_4
    if-nez v0, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_5

    :cond_b
    :goto_6
    return-void
.end method
