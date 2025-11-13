.class Lcom/samsung/android/settings/connection/GigaMultiPath$7;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaMultiPath;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 331
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$mcloseProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    :cond_0
    return-void
.end method
