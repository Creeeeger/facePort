.class public final synthetic Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;II)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    iput p2, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    const/4 p1, 0x2

    const-string v0, "lockscreen"

    const-string/jumbo v1, "popup"

    const-string v2, "badge"

    const-string v3, ":"

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v7, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    iget p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object p1, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mZenModeAllBypassingAddAppsListener:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;

    check-cast p1, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mAllBypassingAddAppsController:Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;

    iget-boolean v0, p1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mIsFromDnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iget-object p1, p1, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget v2, v2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->uId:I

    iget-object v3, v0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1, v6}, Lcom/android/settings/notification/zen/ZenModeBackend;->setAppBypassDnd(ILjava/lang/String;Z)V

    iget-object p1, v0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, v0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    move v0, v5

    :goto_0
    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->uId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v5

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V

    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppSummary(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    iget p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;->f$1:I

    if-nez p0, :cond_7

    iget-object p0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mZenModeAllBypassingAddAppsListener:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;

    check-cast p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.settings.notification.zen.lifestyle.DndAppPickerActivity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v7}, Lcom/android/settings/notification/NotificationBackend;->getNotificationPackagesList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    const-string v2, "com.google.android.cellbroadcastreceiver"

    invoke-static {v0, v2, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.google.android.cellbroadcastreceiver:0"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string/jumbo v0, "supported_apps"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->allowPackageNameList()Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v1, "selected_apps"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->REQUEST_CODE_OK:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const p0, 0x8cc4

    const-string p1, "NSTE0303"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    iget p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v7, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v8, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    xor-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    iget-object v7, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->notificationType:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string v9, "Error calling NoMan"

    const-string v10, "NotificationBackend"

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_5
    move v7, v4

    goto :goto_6

    :sswitch_0
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    move v7, p1

    goto :goto_6

    :sswitch_1
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_5

    :cond_9
    move v7, v5

    goto :goto_6

    :sswitch_2
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_5

    :cond_a
    move v7, v6

    :goto_6
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_2
    iget-object v7, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    iget-object v9, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget v9, v9, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->uId:I

    iget-object v10, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v10, v10, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b

    move v10, v5

    goto :goto_7

    :cond_b
    move v10, v4

    :goto_7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10, v7}, Lcom/android/settings/notification/NotificationBackend;->setLockScreenNotificationVisibilityForPackage(IILjava/lang/String;)V

    goto :goto_8

    :pswitch_3
    iget-object v7, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    iget-object v11, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget v11, v11, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->uId:I

    iget-object v12, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v12, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v12, v12, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    sget-object v8, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v8, v7, v11, v12}, Landroid/app/INotificationManager;->setAllowNotificationPopUpForPackage(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v7

    invoke-static {v10, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :pswitch_4
    iget-object v7, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    iget-object v11, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget v11, v11, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->uId:I

    iget-object v12, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v12, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v12, v12, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    sget-object v8, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v8, v7, v11, v12}, Landroid/app/INotificationManager;->setShowBadge(Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v7

    invoke-static {v10, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    iget-object v7, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mListener:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;

    iget-object v8, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->notificationType:Ljava/lang/String;

    iget-object v9, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v9, v9, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeController;

    iget-object v3, v7, Lcom/samsung/android/settings/notification/app/AppNotificationTypeController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-virtual {v3}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x8cb8

    const-string v7, "_off"

    const-string v10, "_on"

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :goto_9
    move p1, v4

    goto :goto_a

    :sswitch_3
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_9

    :sswitch_4
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_9

    :cond_c
    move p1, v5

    goto :goto_a

    :sswitch_5
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_9

    :cond_d
    move p1, v6

    :cond_e
    :goto_a
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_e

    :pswitch_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "App_Lock"

    if-eqz p0, :cond_f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NSTE0035"

    invoke-static {p0, v0, p1, v6}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_e

    :pswitch_6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "App_Badge"

    if-eqz p0, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSTE0023"

    invoke-static {v0, v1, p1, v6}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    :pswitch_7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "App_Popup"

    if-eqz p0, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NSTE0037"

    invoke-static {p0, v0, p1, v6}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x5929ba3 -> :sswitch_2
        0x65e70ac -> :sswitch_1
        0x6adcb957 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x5929ba3 -> :sswitch_5
        0x65e70ac -> :sswitch_4
        0x6adcb957 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method
