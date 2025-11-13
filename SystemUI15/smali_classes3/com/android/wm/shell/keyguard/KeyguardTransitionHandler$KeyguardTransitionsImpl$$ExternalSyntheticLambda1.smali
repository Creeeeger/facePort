.class public final synthetic Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;

.field public final synthetic f$1:Landroid/window/IRemoteTransition;

.field public final synthetic f$2:Landroid/window/IRemoteTransition;

.field public final synthetic f$3:Landroid/window/IRemoteTransition;

.field public final synthetic f$4:Landroid/window/IRemoteTransition;

.field public final synthetic f$5:Landroid/window/IRemoteTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;Lcom/android/systemui/keyguard/KeyguardService$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;

    iput-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$1:Landroid/window/IRemoteTransition;

    iput-object p3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$2:Landroid/window/IRemoteTransition;

    iput-object p4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$3:Landroid/window/IRemoteTransition;

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$4:Landroid/window/IRemoteTransition;

    iput-object p6, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$5:Landroid/window/IRemoteTransition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;

    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$1:Landroid/window/IRemoteTransition;

    iget-object v2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$2:Landroid/window/IRemoteTransition;

    iget-object v3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$3:Landroid/window/IRemoteTransition;

    iget-object v4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$4:Landroid/window/IRemoteTransition;

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl$$ExternalSyntheticLambda1;->f$5:Landroid/window/IRemoteTransition;

    iget-object v0, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iput-object v1, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mExitTransition:Landroid/window/IRemoteTransition;

    iput-object v2, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mAppearTransition:Landroid/window/IRemoteTransition;

    iput-object v3, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeTransition:Landroid/window/IRemoteTransition;

    iput-object v4, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

    iput-object p0, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mUnoccludeTransition:Landroid/window/IRemoteTransition;

    return-void
.end method
