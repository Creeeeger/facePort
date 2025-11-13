.class Lcom/samsung/android/core/AppBlockDialogActivity$2;
.super Ljava/lang/Object;
.source "AppBlockDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/core/AppBlockDialogActivity;->showBlockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

.field final synthetic blacklist val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/core/AppBlockDialogActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    iput-object p2, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClickAllow,requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetrequestCode(Lcom/samsung/android/core/AppBlockDialogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppJumpBlockTool"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fputisClickAllow(Lcom/samsung/android/core/AppBlockDialogActivity;Z)V

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetblockedAppList(Lcom/samsung/android/core/AppBlockDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    iget-object v4, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetalwaysAllowPackageNameList(Lcom/samsung/android/core/AppBlockDialogActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    iget-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetsourceAppInfo(Lcom/samsung/android/core/AppBlockDialogActivity;)Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetalwaysAllowPackageNameList(Lcom/samsung/android/core/AppBlockDialogActivity;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/samsung/android/core/AppJumpBlockTool;->addAlwaysAllowList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgettargetIntents(Lcom/samsung/android/core/AppBlockDialogActivity;)[Landroid/content/Intent;

    move-result-object v3

    array-length v3, v3

    if-le v3, v2, :cond_2

    const-string v2, "launch from Block Dialog for multiple intents!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    iget-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgettargetIntents(Lcom/samsung/android/core/AppBlockDialogActivity;)[Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetoptions(Lcom/samsung/android/core/AppBlockDialogActivity;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/core/AppBlockDialogActivity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetmCallingUid(Lcom/samsung/android/core/AppBlockDialogActivity;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launch from Block Dialog for startActivity!, callingUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetmUserId(Lcom/samsung/android/core/AppBlockDialogActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgettargetIntents(Lcom/samsung/android/core/AppBlockDialogActivity;)[Landroid/content/Intent;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetmUserId(Lcom/samsung/android/core/AppBlockDialogActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    iget-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgettargetIntents(Lcom/samsung/android/core/AppBlockDialogActivity;)[Landroid/content/Intent;

    move-result-object v3

    aget-object v3, v3, v0

    const/high16 v4, 0x3000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    iget-object v5, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v5}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetoptions(Lcom/samsung/android/core/AppBlockDialogActivity;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v6}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetmUserId(Lcom/samsung/android/core/AppBlockDialogActivity;)I

    move-result v6

    invoke-virtual {v4, v3, v5, v0, v6}, Lcom/samsung/android/core/AppBlockDialogActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "launch fail! try launch by UserHandle.USER_OWNER"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    iget-object v6, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v6}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetoptions(Lcom/samsung/android/core/AppBlockDialogActivity;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v3, v6, v0, v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    nop

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$msendAllowResult(Lcom/samsung/android/core/AppBlockDialogActivity;)V

    return-void

    :catchall_0
    move-exception v2

    const-string v3, "App jump block dialog launch fail!"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launch fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    const-string v1, "Fail"

    invoke-static {v0, v1}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$msendResult(Lcom/samsung/android/core/AppBlockDialogActivity;Ljava/lang/String;)V

    return-void
.end method
