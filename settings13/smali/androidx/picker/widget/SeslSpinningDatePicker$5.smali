.class Landroidx/picker/widget/SeslSpinningDatePicker$5;
.super Ljava/lang/Object;
.source "SeslSpinningDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 438
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$5;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 441
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$5;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->setCurrentViewType(I)V

    return-void
.end method
