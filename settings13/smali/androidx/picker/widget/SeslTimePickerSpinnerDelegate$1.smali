.class Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;-><init>(Landroidx/picker/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    .line 149
    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroidx/picker/widget/SeslNumberPicker;II)V
    .locals 4

    .line 152
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0xb

    const/16 v0, 0xc

    .line 155
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$100(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)C

    move-result v1

    const/16 v2, 0x4b

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v0, v3

    :cond_0
    if-ne p2, p1, :cond_1

    if-eq p3, v0, :cond_2

    :cond_1
    if-ne p2, v0, :cond_4

    if-ne p3, p1, :cond_4

    .line 160
    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroidx/picker/widget/SeslNumberPicker;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    move p2, p3

    goto :goto_0

    :cond_3
    move p2, v3

    :goto_0
    invoke-static {p1, p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$202(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z

    .line 161
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroidx/picker/widget/SeslNumberPicker;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 162
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroidx/picker/widget/SeslNumberPicker;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/picker/widget/SeslNumberPicker;->performClick(Z)V

    .line 163
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1, p3}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$402(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z

    .line 164
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1$1;

    invoke-direct {p2, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1$1;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_4
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$500(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    return-void
.end method
