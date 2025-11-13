.class public final Lcom/android/wm/shell/pip/phone/PipController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v0, v0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v0, v0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    return-void
.end method

.method public final onKeepClearAreasChanged(ILjava/util/Set;Ljava/util/Set;)V
    .locals 6

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v0, v0, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v0, p1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    sget-wide v1, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 p1, 0x0

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0x51a0ce821f1dcb28L

    const/4 v3, 0x0

    const-string v4, "onKeepClearAreasChanged: restricted=%s, unrestricted=%s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
