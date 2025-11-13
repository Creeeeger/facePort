.class Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 982
    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    .line 986
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1100(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1200(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroidx/picker/widget/SeslNumberPicker;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPicker;->isChangedDefaultInterval()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    .line 987
    invoke-static {p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1200(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroidx/picker/widget/SeslNumberPicker;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x5

    if-eqz p2, :cond_0

    .line 988
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1200(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroidx/picker/widget/SeslNumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/picker/widget/SeslNumberPicker;->applyWheelCustomInterval(Z)V

    .line 990
    :cond_0
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    .line 991
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    :cond_1
    return p1
.end method
