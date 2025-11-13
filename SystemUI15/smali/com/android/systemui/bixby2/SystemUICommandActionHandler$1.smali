.class Lcom/android/systemui/bixby2/SystemUICommandActionHandler$1;
.super Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/SystemUICommandActionHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/SystemUICommandActionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler$1;->this$0:Lcom/android/systemui/bixby2/SystemUICommandActionHandler;

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateRequested()Ljava/lang/String;
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    sget-boolean v5, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    const-string/jumbo v6, "type"

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler$1;->this$0:Lcom/android/systemui/bixby2/SystemUICommandActionHandler;

    iget-object v5, v5, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v5, :cond_7

    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    iget-boolean v8, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "isShowNotiScreen"

    invoke-virtual {v7, v9, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean v8, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-eqz v8, :cond_0

    const-string v8, "detail"

    goto :goto_0

    :cond_0
    iget-boolean v9, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    if-eqz v9, :cond_1

    if-nez v8, :cond_1

    const-string v8, "group"

    goto :goto_0

    :cond_1
    const-string v8, "list"

    :goto_0
    const-string v9, "currentPageLevel"

    invoke-virtual {v7, v9, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v8

    new-instance v9, Lcom/google/gson/JsonArray;

    invoke-direct {v9}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v8, :cond_6

    iget-object v13, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v14, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getBixbyNotificationVisible(Ljava/lang/String;)Z

    move-result v14

    iget-boolean v15, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    const-string v10, "notiVisible"

    move/from16 v16, v8

    const-string v8, "notiAppname"

    move-object/from16 v17, v3

    const-string v3, "notiTitle"

    move-object/from16 v18, v4

    const-string v4, "notiID"

    if-eqz v15, :cond_2

    new-instance v15, Lcom/google/gson/JsonObject;

    invoke-direct {v15}, Lcom/google/gson/JsonObject;-><init>()V

    move-object/from16 v19, v2

    iget-object v2, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v15, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v15, v8, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v10, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v9, v15}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v19, v2

    :goto_2
    iget-boolean v2, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    if-eqz v2, :cond_5

    iget-object v2, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v13

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_5

    move/from16 v20, v13

    new-instance v13, Lcom/google/gson/JsonObject;

    invoke-direct {v13}, Lcom/google/gson/JsonObject;-><init>()V

    move/from16 v21, v14

    iget-object v14, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object/from16 v22, v2

    iget-object v2, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v2, v14}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v2

    iget-boolean v14, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    if-eqz v14, :cond_4

    iget-boolean v14, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    if-nez v14, :cond_3

    iget-boolean v14, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-nez v14, :cond_3

    move-object/from16 v23, v5

    move/from16 v14, v21

    goto :goto_4

    :cond_3
    iget-object v14, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getBixbyNotificationVisible(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v23, v5

    :goto_4
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v13, v8, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v10, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v9, v13}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v23, v5

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v20

    move/from16 v14, v21

    move-object/from16 v2, v22

    move-object/from16 v5, v23

    goto :goto_3

    :cond_5
    move-object/from16 v23, v5

    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v5, v23

    goto/16 :goto_1

    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v3, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "notiCount"

    invoke-virtual {v7, v2, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo v5, "viv.systemApp.CoverReplicableNotiList"

    invoke-virtual {v4, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/google/gson/JsonArray;-><init>()V

    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v10, "coverScreenInfo"

    invoke-virtual {v8, v10, v7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v7, "coverNotificationList"

    invoke-virtual {v8, v7, v9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string/jumbo v7, "values"

    invoke-virtual {v4, v7, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string v4, "concepts"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v3, "capsuleId"

    const-string/jumbo v4, "viv.systemApp"

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appId"

    const-string v4, "com.sec.android.app.system"

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x47869db3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v4, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "appVersionCode"

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_6
    if-eqz v7, :cond_8

    invoke-static {v7}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    goto :goto_7

    :cond_8
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    :goto_7
    const-string v3, "CloseQuickPanelScreen"

    invoke-virtual {v1, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/bixby2/SystemUICommandActionHandler$1;->this$0:Lcom/android/systemui/bixby2/SystemUICommandActionHandler;

    invoke-static {v0}, Lcom/android/systemui/bixby2/SystemUICommandActionHandler;->-$$Nest$misPanelBarExpanded(Lcom/android/systemui/bixby2/SystemUICommandActionHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "panelExpanded"

    move-object/from16 v4, v19

    invoke-virtual {v4, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string v1, "llmContext"

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v0, "llmCapsuleId"

    const-string v1, "samsung.systemApp"

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAppStateRequested: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUICommandActionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCapsuleIdRequested()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "viv.systemApp"

    return-object p0
.end method
