.class public final Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p2, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;-><init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V

    const-wide/16 v0, 0x64

    invoke-interface {p1, p2, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method
