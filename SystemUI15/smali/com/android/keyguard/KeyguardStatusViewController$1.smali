.class public final Lcom/android/keyguard/KeyguardStatusViewController$1;
.super Landroid/transition/TransitionListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardStatusViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 p1, 0x46

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$1;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 p1, 0x46

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method
