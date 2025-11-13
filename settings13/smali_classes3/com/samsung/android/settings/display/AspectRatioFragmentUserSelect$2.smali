.class Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "AspectRatioFragmentUserSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->-$$Nest$fgetmTabs(Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect$2;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;->-$$Nest$fgetmTabs(Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method
