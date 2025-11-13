.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BaseTimeZonePicker.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;,
        Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

.field protected mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private final mDefaultExpandSearch:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSearchEnabled:Z

.field private final mSearchHintResId:I

.field private mSearchView:Landroidx/appcompat/widget/SearchView;

.field private mSeslBottomRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field private mSeslHeaderRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field private mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

.field private final mTitleResId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmSeslBottomRoundedCorner(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)Landroidx/appcompat/util/SeslRoundedCorner;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSeslBottomRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeslHeaderRoundedCorner(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)Landroidx/appcompat/util/SeslRoundedCorner;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSeslHeaderRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    return-object p0
.end method

.method protected constructor <init>(IIZZ)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 88
    iput p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTitleResId:I

    .line 89
    iput p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchHintResId:I

    .line 90
    iput-boolean p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchEnabled:Z

    .line 91
    iput-boolean p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mDefaultExpandSearch:Z

    return-void
.end method

.method private disableToolBarScrollableBehavior()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 231
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 232
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    .line 233
    new-instance v2, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;

    invoke-direct {v2, p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    .line 240
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    return-void
.end method


# virtual methods
.method protected abstract createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.end method

.method protected getLocale()Ljava/util/Locale;
    .locals 1

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 97
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTitleResId:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(I)V

    const/16 p0, 0x1291

    const/16 p1, 0x1f50

    .line 100
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchEnabled:Z

    if-eqz v0, :cond_1

    .line 161
    sget v0, Lcom/android/settings/R$menu;->time_zone_base_search_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 163
    sget p2, Lcom/android/settings/R$id;->time_zone_search_menu:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 164
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_1

    .line 167
    iget v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchHintResId:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 170
    iget-boolean p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mDefaultExpandSearch:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 172
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 173
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 174
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const-string v1, ""

    invoke-virtual {p1, v1, p2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroidx/appcompat/widget/SearchView;

    sget p2, Lcom/android/settings/R$id;->search_src_text:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 180
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p2

    .line 181
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 180
    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 182
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Landroidx/appcompat/widget/SearchView;

    sget p2, Lcom/android/settings/R$id;->search_edit_frame:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->sec_timezone_search_bar_start_margin:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 186
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 189
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 107
    sget p3, Lcom/android/settings/R$layout;->sec_time_zone_recycler_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 108
    sget p2, Lcom/android/settings/R$id;->recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p3, v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 111
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget p3, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 113
    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->disableToolBarScrollableBehavior()V

    .line 116
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 117
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 117
    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 119
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 120
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomColor(I)V

    .line 121
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    .line 123
    new-instance p2, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSeslHeaderRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    const/4 p3, 0x3

    .line 124
    invoke-virtual {p2, p3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 125
    new-instance p2, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSeslBottomRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    const/16 p3, 0xc

    .line 126
    invoke-virtual {p2, p3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 128
    new-instance p2, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$RoundedDecoration-IA;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p2

    new-instance v1, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V

    invoke-direct {v1, v2, v3}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;)V

    .line 134
    invoke-virtual {p2, v0, p3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-object p1
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 207
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 208
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 198
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 200
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getFilter()Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    .line 143
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method
