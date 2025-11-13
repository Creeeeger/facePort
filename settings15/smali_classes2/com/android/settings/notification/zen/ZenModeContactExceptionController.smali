.class public final Lcom/android/settings/notification/zen/ZenModeContactExceptionController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIsFromDnd:Z

.field public mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 1

    const-string v0, "zen_contact"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iput-boolean p3, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mIsFromDnd:Z

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 21

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    move-object/from16 v2, p1

    check-cast v2, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iput-object v2, v1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    const/4 v0, 0x4

    iput v0, v2, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->COLUMN_COUNT:I

    iget-boolean v0, v1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mIsFromDnd:Z

    const/4 v3, 0x1

    const-string v4, ";"

    const/4 v5, 0x0

    const v6, 0x7f143862

    const v7, 0x7f0803da

    if-eqz v0, :cond_4

    iget-object v8, v1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;-><init>()V

    iput v7, v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v11, v5

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_3

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v12, v0, v5

    aget-object v0, v0, v3

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v15, "contact_id = \'"

    const-string v3, "\' AND deleted = \'0\'"

    invoke-static {v15, v12, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "_id"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v12, :cond_0

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v8, v0, v13, v14}, Lcom/android/settings/notification/zen/ZenUtil;->getPhotoAndTitle(Landroid/content/Context;Ljava/lang/String;J)Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v12, v0

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v12, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v12

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v6, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v8, v6}, Lcom/android/settings/notification/zen/ZenUtil;->setExceptionContact(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Lcom/android/settings/notification/zen/ZenUtil$1;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/settings/notification/zen/ZenUtil$1;-><init>(I)V

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    :cond_4
    iget-object v0, v1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    invoke-direct {v8}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;-><init>()V

    iput v7, v8, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v8, v5

    :goto_4
    array-length v10, v7

    if-ge v8, v10, :cond_5

    aget-object v10, v7, v8

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    move v7, v5

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v10, v8, v5

    const/4 v11, 0x1

    aget-object v8, v8, v11

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v0, v8, v12, v13}, Lcom/android/settings/notification/zen/ZenUtil;->getPhotoAndTitle(Landroid/content/Context;Ljava/lang/String;J)Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/android/settings/notification/zen/ZenUtil$1;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lcom/android/settings/notification/zen/ZenUtil$1;-><init>(I)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_6
    iget-object v0, v2, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v2, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
