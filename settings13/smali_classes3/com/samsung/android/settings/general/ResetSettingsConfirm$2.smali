.class Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;
.super Landroid/os/Handler;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$fgetmDatabaseReset(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-object p1, p1, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    iget-object p1, p1, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$fputmDatabaseReset(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Z)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/content/Context;

    move-result-object p1

    .line 156
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 157
    new-instance v1, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2$1;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;Landroid/content/Context;)V

    const-wide/16 p0, 0x64

    .line 165
    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    return-void
.end method
