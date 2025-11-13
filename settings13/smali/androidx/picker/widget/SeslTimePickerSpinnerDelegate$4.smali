.class Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    .line 338
    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextModeChanged(Landroidx/picker/widget/SeslNumberPicker;Z)V
    .locals 0

    .line 341
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    .line 342
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$4;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p0, p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$800(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)V

    return-void
.end method
