.class Lcom/android/settings/accounts/AddAccountSettings$1;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AddAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AddAccountSettings;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addAccount failed: "

    const-string v1, "AddAccountSettings"

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 101
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v4, "intent"

    .line 103
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    .line 106
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "pendingIntent"

    .line 107
    iget-object v7, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v7}, Lcom/android/settings/accounts/AddAccountSettings;->-$$Nest$fgetmPendingIntent(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "hasMultipleUsers"

    .line 108
    iget-object v7, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    .line 111
    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v7

    .line 108
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "android.intent.extra.USER"

    .line 113
    iget-object v7, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v7}, Lcom/android/settings/accounts/AddAccountSettings;->-$$Nest$fgetmUserHandle(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x10000000

    .line 115
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const v6, 0x8000

    .line 116
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    .line 119
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 118
    invoke-static {v5}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    .line 121
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 120
    invoke-static {v5}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const v5, 0x10008000

    .line 122
    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeFlags(I)V

    .line 126
    :cond_1
    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AddAccountSettings;->-$$Nest$fgetmUserHandle(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v2, v6}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setResult(I)V

    .line 129
    iget-object v4, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AddAccountSettings;->-$$Nest$fgetmPendingIntent(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 130
    iget-object v4, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AddAccountSettings;->-$$Nest$fgetmPendingIntent(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/PendingIntent;->cancel()V

    .line 131
    iget-object v4, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/settings/accounts/AddAccountSettings;->-$$Nest$fputmPendingIntent(Lcom/android/settings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)V

    .line 135
    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v3, :cond_8

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 141
    :try_start_1
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v3, :cond_8

    goto :goto_1

    :catch_1
    move-exception p1

    .line 139
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v3, :cond_8

    goto :goto_1

    .line 137
    :catch_2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "addAccount was canceled"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    if-eqz v3, :cond_8

    .line 144
    :goto_1
    iget-object p0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_8
    return-void

    :goto_2
    if-eqz v3, :cond_9

    iget-object p0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 146
    :cond_9
    throw p1
.end method
