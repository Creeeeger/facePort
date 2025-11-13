.class public final Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;->avalancheTriggerIntents:Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;->TAG:Ljava/lang/String;

    const-string p1, "broadcastReceiver: ignore airplane mode on"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "broadcastReceiver received intent.action="

    invoke-static {v0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;->AVALANCHE_SUPPRESSOR_RECEIVED_TRIGGERING_EVENT:Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/notification/interruption/AvalancheProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
