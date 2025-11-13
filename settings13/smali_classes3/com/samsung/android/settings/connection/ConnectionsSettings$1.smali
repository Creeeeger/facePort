.class Lcom/samsung/android/settings/connection/ConnectionsSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/ConnectionsSettings;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/connection/ConnectionsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/connection/ConnectionsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->-$$Nest$fgetmRegisterIntent(Lcom/samsung/android/settings/connection/ConnectionsSettings;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/connection/ConnectionsSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->-$$Nest$fputmRegisterIntent(Lcom/samsung/android/settings/connection/ConnectionsSettings;Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/connection/ConnectionsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ConnectionsSettings;->access$000(Lcom/samsung/android/settings/connection/ConnectionsSettings;)V

    return-void
.end method
