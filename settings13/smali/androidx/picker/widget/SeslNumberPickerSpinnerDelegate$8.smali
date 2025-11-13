.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 2321
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 2

    .line 2324
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    neg-float p3, p3

    :goto_0
    invoke-static {v0, p3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2102(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;F)F

    .line 2325
    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)F

    move-result p3

    sub-float p3, p2, p3

    .line 2326
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2300(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-nez v0, :cond_2

    .line 2327
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2328
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2329
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    :cond_1
    return-void

    .line 2333
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 2334
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2302(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 2336
    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-virtual {p1, v0, p3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 2337
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2202(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;F)F

    .line 2338
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$8;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
