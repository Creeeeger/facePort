.class public final Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-boolean p2, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mSkipToChangeInterval:Z

    if-nez p2, :cond_0

    iget-object p1, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p2, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    rem-int/lit8 p2, p2, 0x5

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p0, p3}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    :cond_1
    return p3
.end method
