.class Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SeslSpinningDatePickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V
    .locals 0

    .line 2656
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2656
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    .line 2660
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2665
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2400(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)V

    .line 2666
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$2500(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
