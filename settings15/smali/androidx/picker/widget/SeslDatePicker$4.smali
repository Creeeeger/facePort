.class public final Landroidx/picker/widget/SeslDatePicker$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$4;->this$0:Landroidx/picker/widget/SeslDatePicker;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker$4;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget-boolean p2, p1, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-boolean v0, p1, Landroidx/picker/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$4;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->removeAllCallbacks()V

    :cond_2
    return v0
.end method
