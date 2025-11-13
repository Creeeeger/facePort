.class Landroid/animation/LayoutTransition$2;
.super Ljava/lang/Object;
.source "LayoutTransition.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/animation/LayoutTransition;

.field final synthetic blacklist val$anim:Landroid/animation/Animator;

.field final synthetic blacklist val$changeReason:I

.field final synthetic blacklist val$child:Landroid/view/View;

.field final synthetic blacklist val$duration:J

.field final synthetic blacklist val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iput p3, p0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    iput-wide p4, p0, Landroid/animation/LayoutTransition$2;->val$duration:J

    iput-object p6, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    iput-object p7, p0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 9

    move-object v0, p0

    iget-object v1, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->setupEndValues()V

    iget-object v1, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    instance-of v1, v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iget-object v2, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_3

    aget-object v5, v3, v4

    iget-object v6, v5, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    instance-of v6, v6, Landroid/animation/KeyframeSet;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v6, Landroid/animation/KeyframeSet;

    iget-object v7, v6, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v6, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v8}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, v5, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v5, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {v7, v8}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    nop

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    return-void

    :cond_4
    const-wide/16 v1, 0x0

    iget v3, v0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide v3

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide v5

    add-long v1, v3, v5

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide v4

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v6}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingStagger(Landroid/animation/LayoutTransition;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Landroid/animation/LayoutTransition;->-$$Nest$fputstaggerDelay(Landroid/animation/LayoutTransition;J)V

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-static {}, Landroid/animation/LayoutTransition;->-$$Nest$sfgetsChangingInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v4

    if-eq v3, v4, :cond_5

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :pswitch_1
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingDisappearingDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide v3

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide v5

    add-long v1, v3, v5

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide v4

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v6}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingDisappearingStagger(Landroid/animation/LayoutTransition;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Landroid/animation/LayoutTransition;->-$$Nest$fputstaggerDelay(Landroid/animation/LayoutTransition;J)V

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingDisappearingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-static {}, Landroid/animation/LayoutTransition;->-$$Nest$sfgetsChangingDisappearingInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v4

    if-eq v3, v4, :cond_5

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingDisappearingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :pswitch_2
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingAppearingDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide v3

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide v5

    add-long v1, v3, v5

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide v4

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v6}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingAppearingStagger(Landroid/animation/LayoutTransition;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Landroid/animation/LayoutTransition;->-$$Nest$fputstaggerDelay(Landroid/animation/LayoutTransition;J)V

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingAppearingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-static {}, Landroid/animation/LayoutTransition;->-$$Nest$sfgetsChangingAppearingInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v4

    if-eq v3, v4, :cond_5

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingAppearingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_5
    :goto_3
    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-wide v4, v0, Landroid/animation/LayoutTransition$2;->val$duration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetcurrentChangingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_6
    iget-object v4, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v4}, Landroid/animation/LayoutTransition;->-$$Nest$fgetpendingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_7

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->-$$Nest$fgetpendingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->-$$Nest$fgetcurrentChangingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    iget-object v7, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v5, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v5}, Landroid/animation/LayoutTransition;->-$$Nest$fgetlayoutChangeListenerMap(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
