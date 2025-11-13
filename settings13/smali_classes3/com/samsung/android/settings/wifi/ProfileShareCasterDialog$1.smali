.class Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileShareCasterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userData"

    .line 157
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.android.net.wifi.DISMISS_REQ_PASSWORD_DIALOG"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ProfileShareCasterDialog"

    if-eqz p2, :cond_1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->-$$Nest$fgetmUserData(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Cancel request might be others"

    .line 164
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "Subscriber canceled request"

    .line 160
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->-$$Nest$fputmIsNotifyNeeded(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;Z)V

    .line 162
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->-$$Nest$mdestroyDialog(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V

    :cond_2
    :goto_1
    return-void
.end method
