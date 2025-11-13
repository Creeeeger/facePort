.class public final Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;->this$0:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;-><init>(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;->this$0:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mCancelled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    iput-object v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    iput-object v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mApps:[Landroid/view/RemoteAnimationTarget;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->-$$Nest$mcheckApply(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;Z)V

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;->this$0:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    iput p1, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mTransit:I

    iput-object p2, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mApps:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    iput-object p4, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    iput-object p5, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->-$$Nest$mcheckApply(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;Z)V

    return-void
.end method
