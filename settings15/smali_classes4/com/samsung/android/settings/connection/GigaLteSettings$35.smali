.class public final Lcom/samsung/android/settings/connection/GigaLteSettings$35;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mptcp_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method
