.class Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$1;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setViewVisibilityWithAnimation(IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

.field final synthetic blacklist val$i:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    .line 9218
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 9221
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$1;->val$i:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 9222
    return-void
.end method
