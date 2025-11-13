.class Landroidx/picker/widget/SeslDatePickerSpinnerLayout$3;
.super Ljava/lang/Object;
.source "SeslDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    .line 805
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$3;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 809
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$3;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    .line 810
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$3;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    :cond_0
    return p1
.end method
