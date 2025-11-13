.class public final Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

.field public final synthetic val$alphaOut:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;Landroid/view/animation/AlphaAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iput-object p2, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;->val$alphaOut:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object p1, p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;->val$alphaOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
