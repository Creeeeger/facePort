.class public final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    iget-object v3, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->requestClass:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "honeyboard"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowKeyboardButtonOnLeft()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget v5, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->position:I

    :goto_0
    new-instance v13, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    iget-object v3, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->remoteViews:Landroid/widget/RemoteViews;

    iget-object v4, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->requestClass:Ljava/lang/String;

    iget v2, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;->priority:I

    invoke-direct {v13, v4, v3, v5, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnSetRemoteView "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteViewPack"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewShortcut;

    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    move-object v6, v3

    const v30, 0x7fffbf

    const/16 v31, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v6 .. v31}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewShortcut;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    return-object v1
.end method
