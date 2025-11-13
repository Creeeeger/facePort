.class public final Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateStatusBarHidden()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->enableLog:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    move-result v1

    const-string v3, "Status bar hidden is called="

    const-string v4, "KnoxStatusBarControlRepository"

    invoke-static {v3, v4, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x3e

    invoke-static/range {v3 .. v10}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->copy$default(Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;ZZLjava/lang/String;IIII)Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onUpdateStatusBarIcons()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->enableLog:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    move-result v1

    const-string v3, "Status bar icon is called="

    const-string v4, "KnoxStatusBarControlRepository"

    invoke-static {v3, v4, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x3d

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->copy$default(Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;ZZLjava/lang/String;IIII)Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onUpdateStatusBarText()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->enableLog:Z

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v1, :cond_1

    move-object v1, v3

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    :goto_0
    const-string v4, "Status bar text is updated="

    const-string v5, "KnoxStatusBarControlRepository"

    invoke-static {v4, v1, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v1, v3

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez v1, :cond_2

    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    goto :goto_1

    :goto_2
    move-object v1, v3

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v8, v2

    goto :goto_3

    :cond_3
    iget v1, v1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    move v8, v1

    :goto_3
    move-object v1, v3

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez v1, :cond_4

    move v9, v2

    goto :goto_4

    :cond_4
    iget v1, v1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    move v9, v1

    :goto_4
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez v1, :cond_5

    move v10, v2

    goto :goto_5

    :cond_5
    iget v1, v1, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    move v10, v1

    :goto_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    const/4 v11, 0x3

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->copy$default(Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;ZZLjava/lang/String;IIII)Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
