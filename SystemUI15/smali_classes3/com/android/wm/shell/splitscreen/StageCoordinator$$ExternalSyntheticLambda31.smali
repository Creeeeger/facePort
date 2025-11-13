.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda31;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda31;->f$1:I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda31;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda31;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda31;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda31;->f$1:I

    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda31;->f$2:I

    iget v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda31;->f$3:I

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v4}, Lcom/android/wm/shell/recents/RecentTasksController;->getSplitBoundsForTaskId(I)Lcom/android/wm/shell/util/SplitBounds;

    move-result-object v7

    if-eqz v7, :cond_2

    iget p0, v7, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    if-ne v4, p0, :cond_2

    iget p0, v7, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    if-ne v5, p0, :cond_2

    iget p0, v7, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    if-eq v6, p0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mAddToAppPairDialogForRecent:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "SplitWindowManager"

    const-string/jumbo p1, "showAddToAppPairDialogForRecent: The dialog already being displayed. it will not be executed again"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/DividerPanel;->getAppPairDialogItems()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10302e3

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f130185

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v8, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/SplitWindowManager;Landroid/util/ArrayMap;IIILcom/android/wm/shell/util/SplitBounds;)V

    invoke-virtual {p1, v0, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mAddToAppPairDialogForRecent:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mAddToAppPairDialogForRecent:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mAddToAppPairDialogForRecent:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "StageCoordinator"

    const-string/jumbo p1, "showAddAppPairDialogForRecent: Invalid taskId"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
