.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;
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
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 3182
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 3186
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->performLongClick()V

    return-void
.end method
