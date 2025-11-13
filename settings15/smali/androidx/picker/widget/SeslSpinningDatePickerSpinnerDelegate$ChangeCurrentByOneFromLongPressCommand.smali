.class public final Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mIncrement:Z

.field public final synthetic this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-wide v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
