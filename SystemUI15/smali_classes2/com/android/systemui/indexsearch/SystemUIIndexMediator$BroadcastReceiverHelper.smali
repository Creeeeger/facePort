.class public final Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string p1, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
