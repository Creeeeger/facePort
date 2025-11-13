.class Landroidx/picker/widget/SeslSleepTimePicker$4;
.super Ljava/lang/Object;
.source "SeslSleepTimePicker.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslSleepTimePicker;->animateText([Landroid/widget/TextView;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslSleepTimePicker;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/widget/TextView;)V
    .locals 0

    .line 449
    iput-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$4;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iput-object p2, p0, Landroidx/picker/widget/SeslSleepTimePicker$4;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 452
    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker$4;->val$textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
