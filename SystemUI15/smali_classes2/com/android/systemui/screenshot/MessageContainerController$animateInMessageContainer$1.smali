.class public final Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/MessageContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/MessageContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v0, v0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/MessageContainerController;->getAnimator(Z)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    const/4 p0, 0x0

    return p0
.end method
