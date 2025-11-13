.class Landroidx/picker/widget/SeslSpinningDatePicker$10;
.super Ljava/lang/Object;
.source "SeslSpinningDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslSpinningDatePicker;->removeAllCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslSpinningDatePicker;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V
    .locals 0

    .line 2412
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$10;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2415
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$10;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$5900(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$10;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1000(Landroidx/picker/widget/SeslSpinningDatePicker;)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
