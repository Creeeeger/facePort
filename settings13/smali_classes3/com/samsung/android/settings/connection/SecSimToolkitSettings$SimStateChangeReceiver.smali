.class Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecSimToolkitSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/SecSimToolkitSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/SecSimToolkitSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/SecSimToolkitSettings;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;->this$0:Lcom/samsung/android/settings/connection/SecSimToolkitSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecSimToolkitSettings"

    invoke-static {v0, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimToolkitSettings$SimStateChangeReceiver;->this$0:Lcom/samsung/android/settings/connection/SecSimToolkitSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/SecSimToolkitSettings;->-$$Nest$mupdateState(Lcom/samsung/android/settings/connection/SecSimToolkitSettings;)V

    :cond_0
    return-void
.end method
