.class public final Lcom/android/systemui/SliceBroadcastRelayHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/SliceBroadcastRelayHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SliceBroadcastRelayHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SliceBroadcastRelayHandler$1;->this$0:Lcom/android/systemui/SliceBroadcastRelayHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler$1;->this$0:Lcom/android/systemui/SliceBroadcastRelayHandler;

    invoke-virtual {p0, p2}, Lcom/android/systemui/SliceBroadcastRelayHandler;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method
