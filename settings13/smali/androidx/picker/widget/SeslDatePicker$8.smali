.class Landroidx/picker/widget/SeslDatePicker$8;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslDatePicker;->removeAllCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    .line 2417
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$8;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2420
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$8;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$5900(Landroidx/picker/widget/SeslDatePicker;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$8;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->access$1100(Landroidx/picker/widget/SeslDatePicker;)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
