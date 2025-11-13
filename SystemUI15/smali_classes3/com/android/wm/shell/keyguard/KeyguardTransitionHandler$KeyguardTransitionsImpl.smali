.class public final Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/keyguard/KeyguardTransitions;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V

    return-void
.end method


# virtual methods
.method public final register(Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v8, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setLaunchingActivityOverLockscreen(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;Z)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
