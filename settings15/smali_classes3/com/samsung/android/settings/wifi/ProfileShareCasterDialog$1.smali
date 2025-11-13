.class public final Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "userData"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.android.net.wifi.DISMISS_REQ_PASSWORD_DIALOG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ProfileShareCasterDialog"

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Cancel request might be others"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "Subscriber canceled request"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsNotifyNeeded:Z

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method
