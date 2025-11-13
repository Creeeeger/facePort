.class public final Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$7$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$7$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$7$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/16 v16, 0xfff

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v3, v15

    move-object/from16 v29, v15

    move-object/from16 v15, v18

    invoke-direct/range {v3 .. v17}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->requestClass:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v5, "honeyboard"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowKeyboardButtonOnLeft()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget v6, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->position:I

    :goto_0
    const-string v4, "requestClass"

    iget-object v5, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->requestClass:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->remoteViews:Landroid/widget/RemoteViews;

    const-string v5, "remoteViews"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "position"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "priority"

    iget v2, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->priority:I

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_NAVBAR_REMOTEVIEWS:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    move-object/from16 v15, v29

    iput-object v2, v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object v3, v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->remoteViewBundle:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "OnSetRemoteView "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskBarPack"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;

    new-instance v14, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    move-object v3, v14

    const v27, 0x7bffff

    const/16 v28, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v30, v14

    move/from16 v14, v16

    move-object/from16 v22, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v3 .. v28}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v30

    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    return-object v1
.end method
