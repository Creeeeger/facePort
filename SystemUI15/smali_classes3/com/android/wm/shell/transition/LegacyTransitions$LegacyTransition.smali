.class public final Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAdapter:Landroid/view/RemoteAnimationAdapter;

.field public mApps:[Landroid/view/RemoteAnimationTarget;

.field public mCancelled:Z

.field public mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;

.field public mNonApps:[Landroid/view/RemoteAnimationTarget;

.field public final mSyncCallback:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$SyncCallback;

.field public mSyncId:I

.field public mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mTransit:I

.field public mWallpapers:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public static -$$Nest$mcheckApply(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;Z)V
    .locals 13

    iget v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mSyncId:I

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mCancelled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "\tapply"

    const/4 v5, 0x0

    const-wide v1, 0x4b50c6618e15377bL    # 6.426874850670308E54

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v7, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mTransit:I

    iget-object v8, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mApps:[Landroid/view/RemoteAnimationTarget;

    iget-object v9, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    iget-object v10, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    iget-object v11, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iget-object v12, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;

    invoke-interface/range {v6 .. v12}, Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-boolean p0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mCancelled:Z

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v7

    const-string v6, "\tSkipping hasFinishedCb=%b canceled=%b"

    const-wide v3, -0x2683ff827989c76cL    # -1.1569270805243721E123

    const/16 v5, 0xf

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public constructor <init>(ILcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mSyncId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mCancelled:Z

    new-instance v1, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$SyncCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$SyncCallback;-><init>(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;I)V

    iput-object v1, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mSyncCallback:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$SyncCallback;

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    new-instance v3, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;

    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;-><init>(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;I)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    iput-object v1, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mAdapter:Landroid/view/RemoteAnimationAdapter;

    iput-object p2, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;

    iput p1, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mTransit:I

    return-void
.end method
