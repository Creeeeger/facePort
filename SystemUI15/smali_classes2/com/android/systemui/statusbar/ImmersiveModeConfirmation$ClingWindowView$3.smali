.class public final Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$3;->this$1:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$3;->this$1:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView$1;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
