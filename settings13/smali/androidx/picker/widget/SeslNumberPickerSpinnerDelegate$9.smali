.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


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

    .line 2342
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2345
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2302(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 2346
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/OverScroller;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 2347
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return-void
.end method
