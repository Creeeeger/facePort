.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final greylist-max-o FADE_DURATION:I = 0xc8

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final greylist-max-o sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private greylist-max-o mAllowCollapse:Z

.field private greylist-max-o mContentHeight:I

.field greylist-max-o mMaxTabWidth:I

.field private greylist-max-o mSelectedTabIndex:I

.field greylist-max-o mStackedTabMaxWidth:I

.field private greylist-max-o mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private greylist-max-o mTabLayout:Landroid/widget/LinearLayout;

.field greylist-max-o mTabSelector:Ljava/lang/Runnable;

.field private greylist-max-o mTabSpinner:Landroid/widget/Spinner;

.field protected final greylist-max-o mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected greylist-max-o mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTabLayout(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateTabView(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 77
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 78
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 79
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 81
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 82
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private greylist-max-o createSpinner()Landroid/widget/Spinner;
    .locals 4

    .line 209
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    return-object v0
.end method

.method private greylist-max-o createTabLayout()Landroid/widget/LinearLayout;
    .locals 4

    .line 199
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    .local v0, "tabLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 202
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 203
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    return-object v0
.end method

.method private greylist-max-o createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;
    .param p3, "forAdapter"    # Z

    .line 287
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 288
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 289
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 293
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v2, :cond_1

    .line 296
    new-instance v2, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener-IA;)V

    iput-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :goto_0
    return-object v0
.end method

.method private greylist-max-o isCollapsed()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o performCollapse()V
    .locals 4

    .line 146
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 155
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;)V

    .line 156
    .local v0, "adapter":Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->setDropDownViewContext(Landroid/content/Context;)V

    .line 157
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 159
    .end local v0    # "adapter":Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 164
    return-void
.end method

.method private greylist-max-o performExpand()Z
    .locals 5

    .line 167
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 173
    return v1
.end method


# virtual methods
.method public greylist addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 321
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 322
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 327
    :cond_0
    if-eqz p3, :cond_1

    .line 328
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 330
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 333
    :cond_2
    return-void
.end method

.method public greylist addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 306
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 311
    :cond_0
    if-eqz p2, :cond_1

    .line 312
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 314
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 317
    :cond_2
    return-void
.end method

.method public greylist-max-r animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    :cond_0
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 266
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public greylist-max-r animateToVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 233
    :cond_0
    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "alpha"

    if-nez p1, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 235
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 237
    :cond_1
    new-array v2, v4, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 238
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 239
    sget-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 243
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 244
    :cond_2
    new-array v4, v4, [F

    aput v2, v4, v3

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 245
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    sget-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 251
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 1

    .line 271
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 276
    :cond_0
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 219
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 224
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 225
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 226
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 1

    .line 280
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 284
    :cond_0
    return-void
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 370
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 371
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 372
    return-void
.end method

.method public whitelist onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 89
    .local v0, "widthMode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 90
    .local v4, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 92
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 93
    .local v5, "childCount":I
    if-le v5, v1, :cond_3

    if-eq v0, v3, :cond_1

    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_3

    .line 95
    :cond_1
    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 98
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    div-int/2addr v7, v6

    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 100
    :goto_1
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    .line 102
    :cond_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 105
    :goto_2
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 107
    if-nez v4, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    .line 109
    .local v1, "canCollapse":Z
    :goto_3
    if-eqz v1, :cond_6

    .line 111
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 112
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-le v2, v3, :cond_5

    .line 113
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    goto :goto_4

    .line 115
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 118
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    .line 121
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    .line 122
    .local v2, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 125
    .local v3, "newWidth":I
    if-eqz v4, :cond_7

    if-eq v2, v3, :cond_7

    .line 127
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 129
    :cond_7
    return-void
.end method

.method public greylist removeAllTabs()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 366
    :cond_1
    return-void
.end method

.method public greylist removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .line 348
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 355
    :cond_1
    return-void
.end method

.method public greylist setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 143
    return-void
.end method

.method public greylist-max-o setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .line 194
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 196
    return-void
.end method

.method public greylist setTabSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 178
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 180
    .local v0, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 181
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 182
    .local v2, "child":Landroid/view/View;
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 183
    .local v3, "isSelected":Z
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 184
    if-eqz v3, :cond_1

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 180
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "isSelected":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    if-ltz p1, :cond_3

    .line 189
    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 191
    :cond_3
    return-void
.end method

.method public greylist-max-r updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .line 337
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 341
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 344
    :cond_1
    return-void
.end method
