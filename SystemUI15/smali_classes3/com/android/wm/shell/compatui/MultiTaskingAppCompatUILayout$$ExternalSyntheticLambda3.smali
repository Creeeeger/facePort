.class public final synthetic Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "MultiTaskingAppCompatUILayout"

    const-string v3, "onClick v="

    iget v4, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    packed-switch v4, :pswitch_data_0

    sget v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->setMultiTaskingAppCompatAlignment(I)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->refreshButtonVisibility(Z)V

    return-void

    :pswitch_0
    sget v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->setMultiTaskingAppCompatAlignment(I)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->refreshButtonVisibility(Z)V

    return-void

    :pswitch_1
    sget v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->setMultiTaskingAppCompatAlignment(I)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->refreshButtonVisibility(Z)V

    return-void

    :pswitch_2
    sget v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    const/16 v1, 0x1f

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->setOrientationControlPolicy(I)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->refreshButtonVisibility(Z)V

    return-void

    :pswitch_3
    sget v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->setOrientationControlPolicy(I)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->refreshButtonVisibility(Z)V

    return-void

    :pswitch_4
    sget v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mCallback:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonClicked;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget p0, p0, Landroid/app/TaskInfo;->taskId:I

    invoke-direct {v0, p0}, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonClicked;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    sget v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->setMultiTaskingAppCompatAlignment(I)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->refreshButtonVisibility(Z)V

    return-void

    :pswitch_6
    sget v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.FULL_SCREEN_APPS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object v2, v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v2, v2, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mController:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget p0, p0, Landroid/app/TaskInfo;->userId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
