.class public final synthetic Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/CompatUIController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateVisibility(Z)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateVisibility(Z)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/TaskInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateReachabilityEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void

    :pswitch_2
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/TaskInfo;

    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/TaskInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/compatui/api/CompatUIInfo;-><init>(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->onCompatInfoChanged(Lcom/android/wm/shell/compatui/api/CompatUIInfo;)V

    return-void

    :pswitch_3
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/TaskInfo;

    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonClicked;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/TaskInfo;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-direct {v0, p1}, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonClicked;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateVisibility(Z)V

    return-void

    :pswitch_5
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-boolean v1, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogOverrideEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxRestartDialogAllowed:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/TaskInfo;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    iget v2, v1, Landroid/app/TaskInfo;->userId:I

    iget-object v1, v1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/TaskInfo;

    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/TaskInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/compatui/api/CompatUIInfo;-><init>(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->onCompatInfoChanged(Lcom/android/wm/shell/compatui/api/CompatUIInfo;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonClicked;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/TaskInfo;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-direct {v0, p1}, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonClicked;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mHasShownUserAspectRatioSettingsButton:Z

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
