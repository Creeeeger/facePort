.class Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;
.super Ljava/lang/Object;
.source "SeslSpinningDatePickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V
    .locals 0

    .line 2570
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2574
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    .line 2575
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method buttonPressDelayed(I)V
    .locals 2

    .line 2598
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 2599
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 2600
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 2601
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method buttonTapped(I)V
    .locals 1

    .line 2605
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 2606
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 2607
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 2608
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method cancel()V
    .locals 5

    .line 2581
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    .line 2582
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 2584
    iput v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 2585
    iput v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 2586
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v3, v3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2587
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2000(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2588
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v3, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2002(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z

    .line 2589
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v4, v3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    .line 2591
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2200(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2592
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v1, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2202(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z

    .line 2593
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2300(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {v1, v2, v2, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 8

    .line 2613
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    .line 2614
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    .line 2616
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mMode:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    .line 2630
    :cond_0
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 2640
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2200(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2641
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    .line 2642
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    .line 2641
    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2644
    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v1, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2280(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)Z

    .line 2645
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2300(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {v1, v4, v4, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    .line 2632
    :cond_3
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2000(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2633
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v2, v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    .line 2634
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v6, v3

    .line 2633
    invoke-virtual {v2, p0, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2636
    :cond_4
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v2, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2080(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)Z

    .line 2637
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {v2, v4, p0, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    .line 2618
    :cond_5
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    if-eq v2, v5, :cond_7

    if-eq v2, v3, :cond_6

    goto :goto_0

    .line 2624
    :cond_6
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v1, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2202(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z

    .line 2625
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2300(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {v1, v4, v4, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_0

    .line 2620
    :cond_7
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v2, v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2002(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z

    .line 2621
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {v2, v4, p0, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :goto_0
    return-void
.end method
