.class Lcom/samsung/android/globalactions/util/BroadcastManager$2;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/globalactions/util/BroadcastManager;->registerSecureConfirmAction(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/globalactions/util/BroadcastManager;

.field final synthetic blacklist val$confirmRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/globalactions/util/BroadcastManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/globalactions/util/BroadcastManager;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/globalactions/util/BroadcastManager$2;->this$0:Lcom/samsung/android/globalactions/util/BroadcastManager;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/BroadcastManager$2;->val$confirmRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 88
    if-nez p2, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/BroadcastManager$2;->val$confirmRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_1
    return-void
.end method
