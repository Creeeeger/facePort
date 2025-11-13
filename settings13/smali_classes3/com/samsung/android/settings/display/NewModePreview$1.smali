.class Lcom/samsung/android/settings/display/NewModePreview$1;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NewModePreview;->createScreenModeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$1;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$1;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$mchangeColor(Lcom/samsung/android/settings/display/NewModePreview;I)V

    return-void
.end method
