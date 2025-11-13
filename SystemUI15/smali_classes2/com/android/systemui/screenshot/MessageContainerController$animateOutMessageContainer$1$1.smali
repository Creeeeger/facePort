.class public final Lcom/android/systemui/screenshot/MessageContainerController$animateOutMessageContainer$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/MessageContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/MessageContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateOutMessageContainer$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateOutMessageContainer$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object p1, p1, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateOutMessageContainer$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iput-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->animateOut:Landroid/animation/Animator;

    return-void
.end method
