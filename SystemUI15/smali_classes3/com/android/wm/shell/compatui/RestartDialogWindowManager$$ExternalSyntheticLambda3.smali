.class public final synthetic Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

.field public final synthetic f$1:Landroid/app/TaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;Landroid/app/TaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda3;->f$1:Landroid/app/TaskInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda3;->f$1:Landroid/app/TaskInfo;

    check-cast p1, Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    iget-object v2, v0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    new-instance v3, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startExitAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-object p1, p1, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v1, p0, Landroid/app/TaskInfo;->userId:I

    iget-object v2, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p1, v0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mOnRestartCallback:Ljava/util/function/Consumer;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
