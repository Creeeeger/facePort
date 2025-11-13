.class public Lcom/samsung/android/share/SemShareMoreAppsFragment;
.super Landroid/app/Fragment;
.source "SemShareMoreAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserItemViewHolder;,
        Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;
    }
.end annotation


# static fields
.field private static final blacklist NUMBER_OF_COLUMNS:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "SemShareMoreAppsFragment"


# instance fields
.field private blacklist mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

.field private blacklist mContext:Landroid/content/Context;

.field blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChooserListAdapter(Lcom/samsung/android/share/SemShareMoreAppsFragment;)Lcom/android/internal/app/ChooserListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetListPosition(Lcom/samsung/android/share/SemShareMoreAppsFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getListPosition(I)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 75
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 77
    return-void
.end method

.method private blacklist getListPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .line 302
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    .line 303
    .local v0, "deviceCount":I
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    .line 304
    .local v1, "serviceCount":I
    iget-object v2, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    .line 305
    .local v2, "callerCount":I
    iget-object v3, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    .line 307
    .local v3, "rankedCount":I
    add-int v4, v0, v1

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, p1

    return v4
.end method

.method private blacklist isFreeForm()Z
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 219
    .local v0, "windowMode":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 222
    .end local v0    # "windowMode":I
    :cond_1
    return v1
.end method

.method private blacklist isSplitWindow()Z
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 229
    .local v0, "windowMode":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 234
    .end local v0    # "windowMode":I
    :cond_2
    return v1
.end method


# virtual methods
.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 160
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 161
    const v0, 0x1140001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 162
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10602d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    :cond_0
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mContext:Landroid/content/Context;

    .line 83
    const v0, 0x1090159

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mView:Landroid/view/View;

    .line 85
    const-string v0, "SemShareMoreAppsFragment"

    const-string v2, "onCreateView"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mView:Landroid/view/View;

    const v2, 0x1020567

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    .line 88
    .local v0, "rcv1":Lcom/android/internal/widget/RecyclerView;
    new-instance v2, Lcom/android/internal/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 89
    new-instance v2, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;

    invoke-direct {v2, p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;-><init>(Lcom/samsung/android/share/SemShareMoreAppsFragment;)V

    .line 90
    .local v2, "adapter":Lcom/samsung/android/share/SemShareMoreAppsFragment$SemChooserMoreAppsAdapter;
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 91
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/GridLayoutManager;

    .line 92
    .local v3, "glm":Lcom/android/internal/widget/GridLayoutManager;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/GridLayoutManager;->setOrientation(I)V

    .line 94
    iget-object v5, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserListAdapter;->semGetSortedTargetCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 95
    iget-object v5, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mView:Landroid/view/View;

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 96
    .local v5, "emptyView":Landroid/view/View;
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    .line 100
    .end local v5    # "emptyView":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mView:Landroid/view/View;

    const v5, 0x102055a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    .line 101
    .local v1, "toolbar":Landroid/widget/Toolbar;
    const v5, 0x1040c5f

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 103
    invoke-virtual {v1, v5}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10602d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 105
    new-instance v6, Lcom/samsung/android/share/SemShareMoreAppsFragment$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment$1;-><init>(Lcom/samsung/android/share/SemShareMoreAppsFragment;)V

    invoke-virtual {v1, v6}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v6, v4, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->isFreeForm()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->isSplitWindow()Z

    move-result v6

    if-nez v6, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10809b7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060351

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 119
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 120
    .local v6, "actionBar":Landroid/app/ActionBar;
    if-eqz v6, :cond_3

    .line 121
    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 122
    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 124
    :cond_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->setHasOptionsMenu(Z)V

    .line 126
    invoke-virtual {p0, v4}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->setRetainInstance(Z)V

    .line 128
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mView:Landroid/view/View;

    const v5, 0x1020559

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, "contentView":Landroid/view/View;
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const-string v7, "alpha"

    invoke-static {v4, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 130
    .local v5, "enterAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v7, 0x96

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 131
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    new-instance v7, Lcom/samsung/android/share/SemShareMoreAppsFragment$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment$2;-><init>(Lcom/samsung/android/share/SemShareMoreAppsFragment;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 155
    iget-object v7, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mView:Landroid/view/View;

    return-object v7

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public whitelist onDestroyView()V
    .locals 2

    .line 265
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 266
    const-string v0, "SemShareMoreAppsFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.samsung.android.settings.share.SelectAppActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "targetInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/TargetInfo;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 178
    .local v2, "appListArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserListAdapter;->semGetAllDisplayList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserListAdapter;->semGetAllDisplayList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 180
    .local v4, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 181
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->semAddJSONdataWithResolveInfo(Lorg/json/JSONArray;Landroid/content/pm/ResolveInfo;)V

    .line 182
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v4    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra_app_list"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 187
    .local v3, "callerArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v4, "resolveInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 189
    iget-object v6, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/internal/app/ChooserListAdapter;->semGetCallerTarget(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v6

    .line 190
    .local v6, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 191
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v3, v7}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->semAddJSONdataWithResolveInfo(Lorg/json/JSONArray;Landroid/content/pm/ResolveInfo;)V

    .line 192
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v6    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 195
    .end local v5    # "i":I
    :cond_1
    const-string v5, "extra_caller_resolveinfo_list"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 196
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "extra_caller_target_list"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/share/SemShareMoreAppsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/samsung/android/share/SemShareMoreAppsFragment$$ExternalSyntheticLambda0;-><init>()V

    .line 199
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 200
    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/share/SemShareMoreAppsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/samsung/android/share/SemShareMoreAppsFragment$$ExternalSyntheticLambda1;-><init>()V

    .line 201
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 203
    .local v5, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appList size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callerTargetList size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SemShareMoreAppsFragment"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0, v0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->startActivity(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->popBackStack()V

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ChooserActivity;

    .line 210
    .local v6, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/internal/app/ChooserActivity;->mShouldResolverDrawerShown:Z

    .line 211
    iput-boolean v7, v6, Lcom/android/internal/app/ChooserActivity;->mIsEditButtonClicked:Z

    .line 212
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    return v7
.end method

.method public whitelist onPause()V
    .locals 5

    .line 246
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 249
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 251
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    const v2, 0x102055b

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 253
    .local v2, "view1":Landroid/view/View;
    const v3, 0x1020270

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 254
    .local v3, "view2":Landroid/view/View;
    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 257
    :cond_0
    if-eqz v3, :cond_1

    .line 258
    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 261
    .end local v2    # "view1":Landroid/view/View;
    .end local v3    # "view2":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public whitelist onResume()V
    .locals 0

    .line 239
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 242
    return-void
.end method

.method blacklist semAddJSONdataWithResolveInfo(Lorg/json/JSONArray;Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 310
    const-string v0, "SemShareMoreAppsFragment"

    iget-object v1, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 313
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 314
    .local v2, "obj":Lorg/json/JSONObject;
    const-string/jumbo v3, "packageName"

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v3, "activityName"

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string/jumbo v3, "resolvedLabel"

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v3, "applicationLabel"

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string/jumbo v3, "uid"

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    nop

    .end local v2    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 322
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 321
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v2    # "e":Lorg/json/JSONException;
    nop

    .line 325
    :goto_0
    return-void
.end method
