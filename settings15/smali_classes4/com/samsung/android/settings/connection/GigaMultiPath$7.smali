.class public final Lcom/samsung/android/settings/connection/GigaMultiPath$7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->closeProgressDialog()V

    :cond_0
    return-void
.end method
