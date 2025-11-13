.class Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method private constructor <init>(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    .line 2429
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/picker/widget/SeslDatePicker;Landroidx/picker/widget/SeslDatePicker$1;)V
    .locals 0

    .line 2429
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    return-void
.end method

.method static synthetic access$5800(Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2429
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    .line 2433
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2438
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    if-eqz v0, :cond_0

    .line 2439
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$5900(Landroidx/picker/widget/SeslDatePicker;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslDatePicker;->access$1100(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2441
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$5900(Landroidx/picker/widget/SeslDatePicker;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslDatePicker;->access$1100(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 2443
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroidx/picker/widget/SeslDatePicker;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
