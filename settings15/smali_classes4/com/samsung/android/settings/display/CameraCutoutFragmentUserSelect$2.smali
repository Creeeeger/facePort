.class public final Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$2;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect$2;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->mTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method
