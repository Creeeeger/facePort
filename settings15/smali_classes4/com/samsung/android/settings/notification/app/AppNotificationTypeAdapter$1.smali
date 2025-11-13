.class public final Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

.field public final synthetic val$pos:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;II)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;->this$0:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    iput p2, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    iget p1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;->this$0:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mZenModeCallExceptionListener:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;

    iget p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;->val$pos:I

    check-cast p1, Lcom/android/settings/notification/zen/ZenModePeopleSettings;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mZenModeContactExceptionController:Lcom/android/settings/notification/zen/ZenModeContactExceptionController;

    iget-boolean v0, p1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mIsFromDnd:Z

    const/4 v1, 0x1

    const-string v2, ";"

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->contactId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->contactNumber:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-class p0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    new-instance v1, Landroid/app/NotificationManager$Policy;

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v7, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v8, v0, Landroid/app/NotificationManager$Policy;->state:I

    iget v9, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v10, v0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    iget v12, v0, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object v13

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIIILjava/util/List;ILjava/util/List;)V

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_1
    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeContactExceptionController;->mPreference:Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->contactId:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->contactNumber:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContact_exist_list(Ljava/util/List;)V

    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/samsung/android/settings/widget/SecRecyclerViewPreference;->mAppNotificationTypeAdapter:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_3
    return-void

    :pswitch_0
    iget p1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;->val$pos:I

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;->this$0:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mZenModeCallExceptionListener:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;

    check-cast p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "additional"

    const-string/jumbo v1, "phone-multi"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "disable_selectall"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "has_additional"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "maxRecipientCount"

    const/16 v2, 0x32

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "excludeProfile"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "block-tab"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    sget-boolean v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mIsFromDnd:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v2

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_3
    sget-object v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mContactAllowList:Ljava/util/List;

    const/4 v3, 0x0

    :goto_4
    array-length v4, v2

    if-ge v3, v4, :cond_4

    sget-object v4, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mContactAllowList:Ljava/util/List;

    aget-object v5, v2, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    sget-object v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mContactAllowList:Ljava/util/List;

    :goto_5
    new-instance v3, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-string/jumbo v2, "selected_id_list"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const p0, 0x8cc2

    const-string p1, "NSTE0304"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
