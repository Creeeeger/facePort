.class Lcom/samsung/android/settings/nfc/OtherSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/OtherSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 71
    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReceiver.onReceive / action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OtherSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 p1, -0x1

    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    .line 74
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 77
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    .line 79
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->-$$Nest$fgetmUIHandler(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string p2, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 83
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$1;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->-$$Nest$fgetmUIHandler(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_0
    return-void
.end method
