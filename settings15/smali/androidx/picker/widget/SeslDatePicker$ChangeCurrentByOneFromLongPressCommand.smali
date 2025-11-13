.class public final Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mIncrement:Z

.field public final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslDatePicker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslDatePicker;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
