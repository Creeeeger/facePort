.class public final Lcom/android/systemui/controls/start/ControlsStartable$bindToPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/start/ControlsStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/start/ControlsStartable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/start/ControlsStartable$bindToPanel$1;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/controls/start/ControlsStartable$bindToPanel$1;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    iget-object p2, p1, Lcom/android/systemui/controls/start/ControlsStartable;->userManager:Landroid/os/UserManager;

    iget-object p1, p1, Lcom/android/systemui/controls/start/ControlsStartable;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/start/ControlsStartable$bindToPanel$1;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    invoke-virtual {p1}, Lcom/android/systemui/controls/start/ControlsStartable;->bindToPanelInternal()V

    iget-object p1, p0, Lcom/android/systemui/controls/start/ControlsStartable$bindToPanel$1;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    iget-object p1, p1, Lcom/android/systemui/controls/start/ControlsStartable;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
