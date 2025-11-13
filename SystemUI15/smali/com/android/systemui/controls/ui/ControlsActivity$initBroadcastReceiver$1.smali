.class public final Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;->this$0:Lcom/android/systemui/controls/ui/ControlsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.DREAMING_STARTED"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;->this$0:Lcom/android/systemui/controls/ui/ControlsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
