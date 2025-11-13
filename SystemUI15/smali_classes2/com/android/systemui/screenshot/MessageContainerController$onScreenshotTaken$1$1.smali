.class final Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/MessageContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/MessageContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->animateOut:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/MessageContainerController;->getAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/MessageContainerController$animateOutMessageContainer$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/MessageContainerController$animateOutMessageContainer$1$1;-><init>(Lcom/android/systemui/screenshot/MessageContainerController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->animateOut:Landroid/animation/Animator;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
