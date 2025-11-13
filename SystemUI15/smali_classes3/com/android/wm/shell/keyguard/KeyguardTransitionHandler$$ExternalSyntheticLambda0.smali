.class public final synthetic Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    invoke-static {}, Landroid/service/dreams/Flags;->dismissDreamOnKeyguardDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    :cond_0
    return-void
.end method
