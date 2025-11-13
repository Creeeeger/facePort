.class Lcom/samsung/android/settings/connection/GigaLteSettings$35;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 840
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetprogressDialog(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetprogressDialog(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    .line 842
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mptcp_value"

    const/4 v2, 0x0

    .line 841
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 844
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 845
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetprogressDialog(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method
