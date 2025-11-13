.class Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SeslSpinningDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Landroidx/picker/widget/SeslSpinningDatePicker;


# direct methods
.method private constructor <init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V
    .locals 0

    .line 2424
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/picker/widget/SeslSpinningDatePicker;Landroidx/picker/widget/SeslSpinningDatePicker$1;)V
    .locals 0

    .line 2424
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    return-void
.end method

.method static synthetic access$5800(Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2424
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    .line 2428
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2433
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    if-eqz v0, :cond_0

    .line 2434
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$5900(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1000(Landroidx/picker/widget/SeslSpinningDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2436
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$5900(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1000(Landroidx/picker/widget/SeslSpinningDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 2438
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
