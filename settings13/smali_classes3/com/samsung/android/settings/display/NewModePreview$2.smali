.class Lcom/samsung/android/settings/display/NewModePreview$2;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$current:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;I)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$2;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iput p2, p0, Lcom/samsung/android/settings/display/NewModePreview$2;->val$current:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$2;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmViewPager(Lcom/samsung/android/settings/display/NewModePreview;)Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/display/NewModePreview$2;->val$current:I

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
