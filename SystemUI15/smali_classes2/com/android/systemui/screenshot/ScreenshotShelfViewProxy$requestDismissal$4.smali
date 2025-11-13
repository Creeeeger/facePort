.class public final Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$requestDismissal$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$requestDismissal$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$requestDismissal$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->isDismissing:Z

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->callbacks:Lcom/android/systemui/screenshot/ScreenshotController$3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->finishDismiss()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$requestDismissal$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->isDismissing:Z

    return-void
.end method
