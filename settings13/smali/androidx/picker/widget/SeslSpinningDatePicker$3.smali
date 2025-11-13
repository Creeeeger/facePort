.class Landroidx/picker/widget/SeslSpinningDatePicker$3;
.super Ljava/lang/Object;
.source "SeslSpinningDatePicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslSpinningDatePicker;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V
    .locals 0

    .line 415
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$3;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 418
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 419
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$3;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$000(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
