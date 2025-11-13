.class public final Landroidx/picker/widget/SeslDatePicker$8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$8;->this$0:Landroidx/picker/widget/SeslDatePicker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$8;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
