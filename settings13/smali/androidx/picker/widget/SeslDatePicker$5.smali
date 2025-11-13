.class Landroidx/picker/widget/SeslDatePicker$5;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    .line 445
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$5;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 448
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$5;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->access$400(Landroidx/picker/widget/SeslDatePicker;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->setCurrentViewType(I)V

    return-void
.end method
