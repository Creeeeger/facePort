.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)V
    .locals 0

    .line 2227
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2230
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2231
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$602(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    return-void

    .line 2235
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$702(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 2236
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$900(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$802(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    .line 2237
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    neg-int v0, v0

    .line 2238
    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2239
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v2

    const/4 v3, 0x5

    if-nez v2, :cond_2

    if-ge v1, v3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2240
    :goto_1
    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v4

    if-nez v4, :cond_3

    if-ge v1, v3, :cond_3

    int-to-float v1, v1

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v3

    goto :goto_2

    :cond_3
    const v1, 0x40accccd    # 5.4f

    .line 2241
    :goto_2
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v0

    goto :goto_3

    :cond_4
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    mul-int/2addr v3, v2

    .line 2242
    :goto_3
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2243
    :goto_4
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 2244
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 2245
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;

    invoke-direct {v2, p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;I)V

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->val$delay:I

    int-to-long v3, p0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
