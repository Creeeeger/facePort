.class public final Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object p1, p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    const-string v0, "alphaOut: post a onDismiss callback."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0xe9

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
