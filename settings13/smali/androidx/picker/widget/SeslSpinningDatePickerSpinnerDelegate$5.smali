.class Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "SeslSpinningDatePickerSpinnerDelegate.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


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

    .line 1903
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1906
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$1602(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z

    .line 1907
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$1700(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/widget/OverScroller;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1908
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {p0, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$1100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)V

    return-void
.end method
