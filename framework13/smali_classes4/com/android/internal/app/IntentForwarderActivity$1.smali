.class Lcom/android/internal/app/IntentForwarderActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentForwarderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/IntentForwarderActivity;->showKeyguard(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/IntentForwarderActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/IntentForwarderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/IntentForwarderActivity;

    .line 663
    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity$1;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 666
    if-eqz p2, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 668
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive, action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 671
    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "reason":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reason :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    iget-object v2, p0, Lcom/android/internal/app/IntentForwarderActivity$1;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    goto :goto_0

    .line 675
    :cond_1
    const-string/jumbo v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 676
    iget-object v2, p0, Lcom/android/internal/app/IntentForwarderActivity$1;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 679
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 666
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method
