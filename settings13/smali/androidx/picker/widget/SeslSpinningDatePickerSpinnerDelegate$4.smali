.class Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "SeslSpinningDatePickerSpinnerDelegate.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


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

    .line 1885
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    .line 1888
    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {p3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$1500(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)F

    move-result p3

    sub-float p3, p2, p3

    .line 1889
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-nez v0, :cond_0

    .line 1890
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 1891
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$900(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z

    return-void

    .line 1894
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1895
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$1602(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z

    .line 1897
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-virtual {p1, v0, p3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(II)V

    .line 1898
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {p1, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$1502(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;F)F

    .line 1899
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
