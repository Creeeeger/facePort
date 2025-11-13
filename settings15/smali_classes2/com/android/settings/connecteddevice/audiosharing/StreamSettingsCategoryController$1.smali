.class public final Lcom/android/settings/connecteddevice/audiosharing/StreamSettingsCategoryController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/StreamSettingsCategoryController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/StreamSettingsCategoryController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/StreamSettingsCategoryController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/StreamSettingsCategoryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/StreamSettingsCategoryController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/StreamSettingsCategoryController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/StreamSettingsCategoryController;->-$$Nest$mupdateVisibility(Lcom/android/settings/connecteddevice/audiosharing/StreamSettingsCategoryController;)V

    return-void
.end method
