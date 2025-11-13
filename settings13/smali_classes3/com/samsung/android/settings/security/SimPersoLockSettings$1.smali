.class Lcom/samsung/android/settings/security/SimPersoLockSettings$1;
.super Landroid/os/Handler;
.source "SimPersoLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/SimPersoLockSettings;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 98
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SimPersoLockSettings"

    packed-switch p1, :pswitch_data_0

    const-string p0, "Unexpected msg"

    .line 124
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 112
    :pswitch_0
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    const-string p1, "Exception Occured!"

    .line 113
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 116
    :cond_0
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_1

    const-string p0, "ar.result == NULL! - it does not need to refresh"

    .line 117
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 120
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 106
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    .line 109
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-static {p0, v1}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->-$$Nest$msimLockPasswdChanged(Lcom/samsung/android/settings/security/SimPersoLockSettings;Z)V

    goto :goto_2

    .line 100
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_4

    .line 101
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    .line 103
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-static {p0, v1}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->-$$Nest$msimLockChanged(Lcom/samsung/android/settings/security/SimPersoLockSettings;Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
