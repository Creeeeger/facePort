.class Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "SeslSpinningDatePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V
    .locals 0

    .line 1869
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1872
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$1302(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;F)F

    .line 1873
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
