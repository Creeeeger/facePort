.class Landroidx/picker/widget/SeslSpinningDatePicker$4;
.super Ljava/lang/Object;
.source "SeslSpinningDatePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 425
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 428
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1200(Landroidx/picker/widget/SeslSpinningDatePicker;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {p1, p2}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1302(Landroidx/picker/widget/SeslSpinningDatePicker;Z)Z

    .line 431
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_2

    .line 432
    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$4;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$000(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    :cond_2
    return p2
.end method
