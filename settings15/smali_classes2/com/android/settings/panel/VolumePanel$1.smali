.class public final Lcom/android/settings/panel/VolumePanel$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/panel/VolumePanel;


# direct methods
.method public constructor <init>(Lcom/android/settings/panel/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/panel/VolumePanel$1;->this$0:Lcom/android/settings/panel/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "com.android.settings.panel.action.CLOSE_PANEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/panel/VolumePanel$1;->this$0:Lcom/android/settings/panel/VolumePanel;

    iget-object p0, p0, Lcom/android/settings/panel/VolumePanel;->mCallback:Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;

    iget-object p1, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    const-string p2, "others"

    iput-object p2, p1, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
