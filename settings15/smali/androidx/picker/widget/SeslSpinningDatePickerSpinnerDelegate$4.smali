.class public final Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/SpringAnimation;FF)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousSpringY:F

    sub-float p3, p2, p3

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    return-void

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(I)V

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousSpringY:F

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
