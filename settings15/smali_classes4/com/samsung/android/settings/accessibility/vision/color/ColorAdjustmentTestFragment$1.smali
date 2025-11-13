.class public final Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentTestFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentTestFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentTestFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentTestFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentTestFragment;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentTestFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentTestFragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentTestFragment;->mIsRunningAnimation:Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
