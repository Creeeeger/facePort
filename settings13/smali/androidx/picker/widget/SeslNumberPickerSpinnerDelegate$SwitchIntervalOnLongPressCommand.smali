.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchIntervalOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 3169
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3173
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3902(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 3174
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4002(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 3175
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$SwitchIntervalOnLongPressCommand;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->applyWheelCustomInterval(Z)V

    return-void
.end method
