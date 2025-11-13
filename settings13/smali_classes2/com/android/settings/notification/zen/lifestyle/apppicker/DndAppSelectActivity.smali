.class public Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DndAppSelectActivity.java"


# static fields
.field private static DND_SELECTED_APP_LIST:Ljava/lang/String; = "selected_apps"

.field private static DND_SUPPORTED_APP_LIST:Ljava/lang/String; = "supported_apps"


# instance fields
.field b:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

.field private isSelectedApp:Z

.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field private mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsPortrait:Ljava/lang/Boolean;

.field private mIsSearchExpanded:Z

.field private mItemsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuLandscape:Landroid/view/Menu;

.field private mMenuPortrait:Landroid/view/Menu;

.field private mPkgIconLoader:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

.field private mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchQuery:Ljava/lang/String;

.field mSearchView:Landroidx/appcompat/widget/SearchView;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllWrapper:Landroid/view/View;

.field private mSelectAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAreaWrapper:Landroid/view/View;

.field private mSelectedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;


# direct methods
.method public static synthetic $r8$lambda$6SLXd5rIB0087tkigL240IX9VZM(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->lambda$initViews$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPkgIconLoader(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mPkgIconLoader:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchQuery(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectAllCheckBox(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectAllWrapper(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllWrapper:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectAreaWrapper(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAreaWrapper:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewModel(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsSearchExpanded(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsSearchExpanded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSearchQuery(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchQuery:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSupportApps(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddAppOnSelectList(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->addAppOnSelectList(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformFiltering(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->performFiltering(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveAppOnSelectArea(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->removeAppOnSelectArea(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectEditMenuItem(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->selectEditMenuItem(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAppListOnAppPickerView(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->setAppListOnAppPickerView(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateViewVisibility(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateViewVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectedApps:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mItemsData:Ljava/util/ArrayList;

    const-string v0, ""

    .line 70
    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchQuery:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->isSelectedApp:Z

    .line 499
    new-instance v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->b:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

    return-void
.end method

.method private addAppOnSelectList(Ljava/lang/String;Z)V
    .locals 4

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAppOnSelectList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DndAppSelectActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 370
    iget-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, ":"

    .line 371
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 372
    aget-object v1, p2, v1

    .line 373
    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 374
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->getAppNameFromPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mItemsData:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;

    invoke-direct {v3, v1, p1, p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListViewItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    iget-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 378
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->getIndexFromSelectlist(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 382
    iget-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 383
    iget-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mItemsData:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 384
    iget-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 387
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->isSelectedApp:Z

    .line 388
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateSelectCount()V

    .line 389
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateDoneMenu()V

    return-void
.end method

.method private getAppNameFromPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 589
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    .line 590
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 591
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 594
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private getIndexFromSelectlist(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 443
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getIndexFromSupportAppList(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 452
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private initPickerView()V
    .locals 4

    .line 252
    sget v0, Lcom/android/settings/R$id;->apppickerview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView;

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v1, 0x4

    .line 253
    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->setGridSpanCount(I)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;IZ)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->b:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    return-void
.end method

.method private initViews()V
    .locals 4

    .line 221
    sget v0, Lcom/android/settings/R$id;->list_item:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 224
    sget v0, Lcom/android/settings/R$id;->select_all_checkbox:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 225
    sget v0, Lcom/android/settings/R$id;->select_all_wrapper:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllWrapper:Landroid/view/View;

    .line 227
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->isAllSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllWrapper:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 231
    new-instance v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_1
    sget v0, Lcom/android/settings/R$id;->selected_wrapper:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAreaWrapper:Landroid/view/View;

    .line 240
    sget v0, Lcom/android/settings/R$id;->edit_appbar_portrait:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 241
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$menu;->menu_edit:I

    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mMenuPortrait:Landroid/view/Menu;

    .line 243
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    new-instance v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$3;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V

    return-void
.end method

.method private isMatchedEntries(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 548
    new-instance p0, Ljava/util/StringTokenizer;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-direct {p0, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 550
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u200b"

    const-string v1, ""

    .line 555
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initViews$0(Landroid/view/View;)V
    .locals 1

    .line 232
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 233
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 234
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->selectAllAppsOnSelectList(Z)V

    return-void
.end method

.method private performFiltering(Ljava/lang/CharSequence;)V
    .locals 5

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 567
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 570
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 572
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    aget-object v3, v3, v1

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 575
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-direct {p0, v3, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->isMatchedEntries(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 577
    iget-object v3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 580
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0, v0}, Landroidx/apppickerview/widget/AppPickerView;->resetPackages(Ljava/util/List;)V

    return-void
.end method

.method private refreshRecyclerView(Z)V
    .locals 6

    .line 333
    new-instance p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mItemsData:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    iget-object v5, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mPkgIconLoader:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    .line 336
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->setAppList(Ljava/util/List;)V

    .line 337
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 338
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private removeAppOnSelectArea(I)V
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeAppOnSelectArea : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DndAppSelectActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->getIndexFromSupportAppList(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI(I)V

    .line 432
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->getIndexFromSupportAppList(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mItemsData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    const/4 p1, 0x1

    .line 437
    iput-boolean p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->isSelectedApp:Z

    .line 438
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateSelectCount()V

    .line 439
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateDoneMenu()V

    return-void
.end method

.method private selectAllAppsOnSelectList(Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 395
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 396
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->putChecked(Ljava/lang/String;Z)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 399
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->setAppList(Ljava/util/List;)V

    .line 401
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 405
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    invoke-direct {p0, v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->getIndexFromSelectlist(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 411
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->putChecked(Ljava/lang/String;Z)V

    .line 412
    iget-object v3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 413
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    iget-object v3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;->setAppList(Ljava/util/List;)V

    .line 414
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppSelectListAdapter:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectListAdapter;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 416
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 421
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI()V

    .line 422
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->isSelectedApp:Z

    .line 423
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateSelectCount()V

    .line 424
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateDoneMenu()V

    return-void
.end method

.method private selectEditMenuItem(Landroid/view/MenuItem;)Z
    .locals 3

    .line 350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->action_cancel:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 351
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return v2

    .line 353
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->action_done:I

    if-ne p1, v0, :cond_2

    .line 354
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    if-eqz p1, :cond_1

    .line 355
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->onDone()Ljava/util/ArrayList;

    move-result-object p1

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "selected_apps"

    .line 358
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 359
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 361
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private setAppListOnAppPickerView(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->getChecked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->resetPackages(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 328
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->refreshRecyclerView(Z)V

    .line 329
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateSelectCount()V

    return-void
.end method

.method private startIconLoaderThread()V
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mPkgIconLoader:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->startIconLoaderThread()V

    return-void
.end method

.method private stopIconLoaderThread()V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mPkgIconLoader:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->stopIconLoaderThread()V

    return-void
.end method

.method private subscribeUi()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->getUpdateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$4;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->getAppListLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$5;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->getUpdateAllSelectedLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$6;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$6;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private updateDoneMenu()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mMenuLandscape:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 272
    iget-boolean p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->isSelectedApp:Z

    if-eqz p0, :cond_0

    .line 273
    sget p0, Lcom/android/settings/R$id;->action_done:I

    invoke-interface {v0, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 275
    :cond_0
    sget p0, Lcom/android/settings/R$id;->action_done:I

    invoke-interface {v0, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 278
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->isSelectedApp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mMenuPortrait:Landroid/view/Menu;

    if-eqz v0, :cond_2

    .line 279
    sget p0, Lcom/android/settings/R$id;->action_done:I

    invoke-interface {v0, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 281
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mMenuPortrait:Landroid/view/Menu;

    sget v0, Lcom/android/settings/R$id;->action_done:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method private updateEditMenuVisibility()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mPortraitMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mMenuLandscape:Landroid/view/Menu;

    if-eqz v0, :cond_2

    .line 265
    sget v1, Lcom/android/settings/R$id;->action_cancel:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 266
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mMenuLandscape:Landroid/view/Menu;

    sget v1, Lcom/android/settings/R$id;->action_done:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsPortrait:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private updateSelectCount()V
    .locals 6

    .line 461
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->getCheckedCount()I

    move-result v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DndAppSelectActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 466
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->dnd_app_picker_selection_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->dnd_app_picker_multiple_selected:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 470
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 472
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 475
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAreaWrapper:Landroid/view/View;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_3

    .line 476
    iget-boolean v3, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsSearchExpanded:Z

    if-eqz v3, :cond_2

    goto :goto_1

    .line 479
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v1, 0x8

    .line 477
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    .line 482
    sget v0, Lcom/android/settings/R$id;->layout_wrapper:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 483
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 484
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 485
    sget v1, Lcom/android/settings/R$id;->selected_wrapper:I

    const/high16 v2, 0x40600000    # 3.5f

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalWeight(IF)V

    .line 486
    sget v1, Lcom/android/settings/R$id;->apppicker_wrapper:I

    const/high16 v2, 0x40d00000    # 6.5f

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalWeight(IF)V

    .line 487
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_3

    .line 489
    :cond_4
    sget v0, Lcom/android/settings/R$id;->layout_wrapper:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 490
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 491
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 492
    sget v1, Lcom/android/settings/R$id;->selected_wrapper:I

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalWeight(IF)V

    .line 493
    sget v1, Lcom/android/settings/R$id;->apppicker_wrapper:I

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalWeight(IF)V

    .line 494
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private updateViewVisibility()V
    .locals 2

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsSearchExpanded:Z

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAllWrapper:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAreaWrapper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateEditMenuVisibility()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsPortrait:Ljava/lang/Boolean;

    .line 126
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateEditMenuVisibility()V

    .line 127
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateDoneMenu()V

    .line 128
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->performFiltering(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mContext:Landroid/content/Context;

    .line 79
    new-instance v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    invoke-direct {v1, v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mPkgIconLoader:Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    .line 81
    sget v0, Lcom/android/settings/R$layout;->activity_apppickerview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-string v0, ""

    .line 82
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    sget v0, Lcom/android/settings/R$id;->dnd_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 85
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    sget-object v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->DND_SUPPORTED_APP_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    .line 90
    sget-object v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->DND_SELECTED_APP_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectedApps:Ljava/util/List;

    .line 91
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    .line 92
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->updateSupportApps(Ljava/util/List;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "selected_apps_new"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectedApps:Ljava/util/List;

    const-string/jumbo v0, "support_apps"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    const-string/jumbo v0, "query"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchQuery:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->updateSupportApps(Ljava/util/List;)V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mViewModel:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectedApps:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->updateSelectedApps(Ljava/util/List;)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->subscribeUi()V

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mIsPortrait:Ljava/lang/Boolean;

    .line 104
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->initViews()V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->initPickerView()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 158
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$menu;->zen_mode_list_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 159
    sget v0, Lcom/android/settings/R$id;->zen_mode_list_search_menu:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchMenu:Landroid/view/MenuItem;

    .line 160
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_search_magnifier_icon_tint_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 162
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchQuery:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 164
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 166
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateViewVisibility()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchMenu:Landroid/view/MenuItem;

    new-instance v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$1;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 186
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_1

    .line 187
    sget v1, Lcom/android/settings/R$string;->search_settings:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$2;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchView:Landroidx/appcompat/widget/SearchView;

    sget v1, Lcom/android/settings/R$id;->search_plate:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    .line 209
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    .line 208
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 213
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$menu;->menu_edit:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 214
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mMenuLandscape:Landroid/view/Menu;

    .line 215
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateEditMenuVisibility()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->updateDoneMenu()V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->selectEditMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onResume()V
    .locals 0

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->startIconLoaderThread()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSelectAppList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "selected_apps_new"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSupportApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "support_apps"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->mSearchQuery:Ljava/lang/String;

    const-string/jumbo v1, "query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->stopIconLoaderThread()V

    return-void
.end method
