.class public final Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFinishT:Landroid/view/SurfaceControl$Transaction;

.field public final mInfo:Landroid/window/TransitionInfo;

.field public final mPlayer:Landroid/window/IRemoteTransition;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mInfo:Landroid/window/TransitionInfo;

    iput-object p3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mPlayer:Landroid/window/IRemoteTransition;

    return-void
.end method
