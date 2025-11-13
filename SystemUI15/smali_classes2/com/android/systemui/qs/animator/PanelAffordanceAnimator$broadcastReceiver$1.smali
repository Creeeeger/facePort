.class public final Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isThereNoView()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isNotVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;->this$0:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hiding$default(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V

    :cond_1
    return-void
.end method
