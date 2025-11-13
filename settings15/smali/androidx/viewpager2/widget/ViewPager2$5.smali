.class public final Landroidx/viewpager2/widget/ViewPager2$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    iput p2, p0, Landroidx/viewpager2/widget/ViewPager2$5;->$r8$classId:I

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$5;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$5;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Landroidx/viewpager2/widget/ViewPager2;->mContainerScaleValue:F

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$5;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {p0}, Landroidx/viewpager2/widget/ViewPager2;->access$700(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$5;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Landroidx/viewpager2/widget/ViewPager2;->mContainerScaleValue:F

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$5;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {p0}, Landroidx/viewpager2/widget/ViewPager2;->access$700(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
