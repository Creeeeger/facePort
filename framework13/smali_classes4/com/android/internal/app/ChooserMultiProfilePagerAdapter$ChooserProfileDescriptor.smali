.class Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
.source "ChooserMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserProfileDescriptor"
.end annotation


# instance fields
.field private blacklist chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field private blacklist directShareAdapter:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

.field private blacklist preloadAppAdapter:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

.field private blacklist rankedAppAdapter:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

.field private blacklist recyclerView:Lcom/android/internal/widget/RecyclerView;

.field private blacklist recyclerViewForDirectShare:Lcom/android/internal/widget/RecyclerView;

.field private blacklist recyclerViewForPreloadApp:Lcom/android/internal/widget/RecyclerView;

.field private blacklist recyclerViewForRankedApp:Lcom/android/internal/widget/RecyclerView;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdirectShareAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->directShareAdapter:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpreloadAppAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->preloadAppAdapter:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrankedAppAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->rankedAppAdapter:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerView:Lcom/android/internal/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrecyclerViewForDirectShare(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerViewForDirectShare:Lcom/android/internal/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrecyclerViewForPreloadApp(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerViewForPreloadApp:Lcom/android/internal/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrecyclerViewForRankedApp(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerViewForRankedApp:Lcom/android/internal/widget/RecyclerView;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .param p2, "rootView"    # Landroid/view/ViewGroup;
    .param p3, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 377
    iput-object p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->this$0:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Landroid/view/ViewGroup;)V

    .line 379
    iput-object p3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 380
    const v0, 0x10204ea

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 381
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .param p2, "rootView"    # Landroid/view/ViewGroup;
    .param p3, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p4, "adapterForPreloadApp"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p5, "adapterForDirectShare"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
    .param p6, "adapterForRankedApp"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    .line 386
    iput-object p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->this$0:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Landroid/view/ViewGroup;)V

    .line 388
    iput-object p3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 389
    iput-object p4, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->preloadAppAdapter:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    .line 390
    iput-object p5, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->directShareAdapter:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    .line 391
    iput-object p6, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->rankedAppAdapter:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    .line 392
    const v0, 0x10204ea

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 393
    const v0, 0x1020568

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerViewForPreloadApp:Lcom/android/internal/widget/RecyclerView;

    .line 394
    const v0, 0x1020566

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerViewForDirectShare:Lcom/android/internal/widget/RecyclerView;

    .line 395
    const v0, 0x1020569

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerViewForRankedApp:Lcom/android/internal/widget/RecyclerView;

    .line 396
    return-void
.end method
