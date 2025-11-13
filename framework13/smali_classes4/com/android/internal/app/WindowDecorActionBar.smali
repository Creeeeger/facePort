.class public Lcom/android/internal/app/WindowDecorActionBar;
.super Landroid/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/WindowDecorActionBar$TabImpl;,
        Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final blacklist CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final blacklist FADE_IN_DURATION_MS:J = 0xc8L

.field private static final blacklist FADE_OUT_DURATION_MS:J = 0x64L

.field private static final blacklist INVALID_POSITION:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "WindowDecorActionBar"


# instance fields
.field blacklist mActionMode:Landroid/view/ActionMode;

.field private blacklist mActivity:Landroid/app/Activity;

.field private blacklist mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private blacklist mContentAnimations:Z

.field private blacklist mContentView:Landroid/view/View;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mContextDisplayMode:I

.field private greylist-max-r mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private blacklist mCurWindowVisibility:I

.field private blacklist mCurrentShowAnim:Landroid/animation/Animator;

.field private blacklist mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field blacklist mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field blacklist mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private blacklist mDialog:Landroid/app/Dialog;

.field private blacklist mDisplayHomeAsUpSet:Z

.field private blacklist mHasEmbeddedTabs:Z

.field private blacklist mHiddenByApp:Z

.field private blacklist mHiddenBySystem:Z

.field final blacklist mHideListener:Landroid/animation/Animator$AnimatorListener;

.field blacklist mHideOnContentScroll:Z

.field private blacklist mLastMenuVisibility:Z

.field private blacklist mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNowShowing:Z

.field private blacklist mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field private blacklist mSavedTabPosition:I

.field private blacklist mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

.field private blacklist mShowHideAnimationEnabled:Z

.field final blacklist mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private blacklist mShowingForMode:Z

.field private blacklist mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field private greylist-max-r mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private blacklist mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mThemedContext:Landroid/content/Context;

.field final blacklist mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContainerView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentAnimations(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentView(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContextDisplayMode(Lcom/android/internal/app/WindowDecorActionBar;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContextView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecorToolbar(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHiddenByApp(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHiddenBySystem(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayLayout(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTabScrollView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentShowAnim(Lcom/android/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckShowingFlags(ZZZ)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 168
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 131
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 151
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 159
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 169
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 171
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "decor":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    .line 173
    .local v2, "overlayMode":Z
    invoke-direct {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 174
    if-nez v2, :cond_0

    .line 175
    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 177
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 179
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 131
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 151
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 159
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 180
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 181
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .line 188
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 131
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 151
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 159
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 189
    nop

    .line 190
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method private static blacklist checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .line 739
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 740
    return v0

    .line 741
    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 744
    :cond_1
    return v0

    .line 742
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist cleanupTabs()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 433
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 436
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 437
    return-void
.end method

.method private blacklist configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .line 532
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .line 533
    .local v0, "tabi":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    .line 535
    .local v1, "callback":Landroid/app/ActionBar$TabListener;
    if-eqz v1, :cond_1

    .line 539
    invoke-virtual {v0, p2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 540
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 542
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 543
    .local v2, "count":I
    add-int/lit8 v3, p2, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 544
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 543
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 546
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 536
    .end local v2    # "count":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Action Bar Tab must have a Callback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist ensureTabsExist()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 295
    return-void

    .line 298
    :cond_0
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, "tabScroller":Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 305
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 307
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    goto :goto_0

    .line 310
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 312
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 314
    :goto_1
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 315
    return-void
.end method

.method private blacklist getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 241
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 242
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/DecorToolbar;

    return-object v0

    .line 243
    :cond_0
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 244
    move-object v0, p1

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    return-object v0

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist hideForActionMode()V
    .locals 2

    .line 692
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 694
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 697
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 699
    :cond_1
    return-void
.end method

.method private blacklist init(Landroid/view/View;)V
    .locals 9
    .param p1, "decor"    # Landroid/view/View;

    .line 194
    const v0, 0x10202ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 199
    :cond_0
    const v0, 0x10201bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 200
    const v0, 0x10201c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 202
    const v0, 0x10201bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 204
    const v0, 0x10205d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 207
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_8

    .line 212
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 213
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 214
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    .line 217
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 218
    .local v0, "current":I
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 219
    .local v3, "homeAsUp":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 220
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 223
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v4

    .line 224
    .local v4, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v4}, Lcom/android/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v1

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 225
    invoke-virtual {v4}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 227
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v8, 0x10102ce

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 230
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v6, 0x15

    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 231
    invoke-virtual {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 233
    :cond_6
    const/16 v1, 0x14

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 234
    .local v1, "elevation":I
    if-eqz v1, :cond_7

    .line 235
    int-to-float v2, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/WindowDecorActionBar;->setElevation(F)V

    .line 237
    :cond_7
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    return-void

    .line 208
    .end local v0    # "current":I
    .end local v1    # "elevation":I
    .end local v3    # "homeAsUp":Z
    .end local v4    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 271
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 278
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 279
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    .line 280
    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 283
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    goto :goto_2

    .line 286
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 289
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-interface {v1, v4}, Lcom/android/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 290
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 291
    return-void
.end method

.method private blacklist shouldAnimateContextView()Z
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method private blacklist showForActionMode()V
    .locals 2

    .line 667
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 669
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 672
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 674
    :cond_1
    return-void
.end method

.method private blacklist updateVisibility(Z)V
    .locals 3
    .param p1, "fromSystem"    # Z

    .line 750
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 753
    .local v0, "shown":Z
    if-eqz v0, :cond_0

    .line 754
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_1

    .line 755
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->doShow(Z)V

    goto :goto_0

    .line 759
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    .line 760
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->doHide(Z)V

    .line 764
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 345
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .line 550
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 551
    return-void
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .line 555
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 556
    return-void
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 570
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 571
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 573
    if-eqz p3, :cond_0

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 576
    :cond_0
    return-void
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .line 560
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 561
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 562
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 563
    if-eqz p2, :cond_0

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 566
    :cond_0
    return-void
.end method

.method blacklist animateToMode(Z)V
    .locals 8
    .param p1, "toActionMode"    # Z

    .line 872
    if-eqz p1, :cond_0

    .line 873
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->showForActionMode()V

    goto :goto_0

    .line 875
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->hideForActionMode()V

    .line 878
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->shouldAnimateContextView()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 880
    const-wide/16 v3, 0x64

    const-wide/16 v5, 0xc8

    if-eqz p1, :cond_1

    .line 881
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, v1, v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 883
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v1

    .local v1, "fadeIn":Landroid/animation/Animator;
    goto :goto_1

    .line 886
    .end local v0    # "fadeOut":Landroid/animation/Animator;
    .end local v1    # "fadeIn":Landroid/animation/Animator;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, v2, v5, v6}, Lcom/android/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 888
    .local v0, "fadeIn":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v1, v3, v4}, Lcom/android/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 891
    .local v0, "fadeOut":Landroid/animation/Animator;
    .restart local v1    # "fadeIn":Landroid/animation/Animator;
    :goto_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 892
    .local v3, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v2

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 893
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 894
    .end local v0    # "fadeOut":Landroid/animation/Animator;
    .end local v1    # "fadeIn":Landroid/animation/Animator;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    goto :goto_2

    .line 895
    :cond_2
    if-eqz p1, :cond_3

    .line 896
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 899
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, v2}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 904
    :goto_2
    return-void
.end method

.method public blacklist collapseActionView()Z
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->collapseActionView()V

    .line 970
    const/4 v0, 0x1

    return v0

    .line 972
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method blacklist completeDeferredDestroyActionMode()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 321
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 323
    :cond_0
    return-void
.end method

.method public blacklist dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .line 353
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_0

    .line 354
    return-void

    .line 356
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 358
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 359
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 360
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist doHide(Z)V
    .locals 11
    .param p1, "fromSystem"    # Z

    .line 827
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 831
    :cond_0
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 834
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 835
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 836
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    .line 837
    .local v3, "endingY":F
    const/4 v4, 0x2

    if-eqz p1, :cond_2

    .line 838
    new-array v5, v4, [I

    fill-array-data v5, :array_0

    .line 839
    .local v5, "topLeft":[I
    iget-object v6, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 840
    aget v6, v5, v2

    int-to-float v6, v6

    sub-float/2addr v3, v6

    .line 842
    .end local v5    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v2, [F

    const/4 v8, 0x0

    aput v3, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 843
    .local v5, "a":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 844
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    .line 845
    .local v6, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v7, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 846
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    const/4 v10, 0x0

    aput v10, v4, v8

    aput v3, v4, v2

    invoke-static {v7, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 849
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 850
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 851
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    iget-object v7, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 852
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aput v7, v2, v8

    .line 851
    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 854
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v2, 0x10c0002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 856
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 857
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 858
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 859
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 860
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "endingY":F
    .end local v5    # "a":Landroid/animation/ObjectAnimator;
    .end local v6    # "b":Landroid/animation/AnimatorSet$Builder;
    goto :goto_0

    .line 861
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 863
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public blacklist doShow(Z)V
    .locals 10
    .param p1, "fromSystem"    # Z

    .line 767
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 772
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 775
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 776
    .local v0, "startingY":F
    const/4 v4, 0x2

    if-eqz p1, :cond_2

    .line 777
    new-array v5, v4, [I

    fill-array-data v5, :array_0

    .line 778
    .local v5, "topLeft":[I
    iget-object v6, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 779
    aget v6, v5, v2

    int-to-float v6, v6

    sub-float/2addr v0, v6

    .line 781
    .end local v5    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 782
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 783
    .local v5, "anim":Landroid/animation/AnimatorSet;
    iget-object v6, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v2, [F

    aput v3, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 784
    .local v6, "a":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 785
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    .line 786
    .local v7, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v8, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 787
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v0, v4, v1

    aput v3, v4, v2

    invoke-static {v8, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 790
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_4

    iget v8, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v8, v2, :cond_4

    .line 791
    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 792
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 793
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v3, v2, v1

    invoke-static {v4, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 795
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v2, 0x10c0003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 797
    const-wide/16 v1, 0xfa

    invoke-virtual {v5, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 805
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 806
    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 807
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 808
    .end local v0    # "startingY":F
    .end local v5    # "anim":Landroid/animation/AnimatorSet;
    .end local v6    # "a":Landroid/animation/ObjectAnimator;
    .end local v7    # "b":Landroid/animation/AnimatorSet$Builder;
    goto :goto_0

    .line 809
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 810
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 811
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 812
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 814
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_7

    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v2, :cond_7

    .line 815
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 816
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 817
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 819
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 821
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_8

    .line 822
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 824
    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public blacklist enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 655
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 656
    return-void
.end method

.method public whitelist getCustomView()Landroid/view/View;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayOptions()I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public whitelist getElevation()F
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getHideOffset()I
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public whitelist getNavigationItemCount()I
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1311
    const/4 v0, 0x0

    return v0

    .line 1307
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1309
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getNavigationMode()I
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public whitelist getSelectedNavigationIndex()I
    .locals 2

    .line 1293
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 1299
    return v1

    .line 1295
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v1

    :cond_0
    return v1

    .line 1297
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .line 1352
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public whitelist getTabCount()I
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getThemedContext()Landroid/content/Context;
    .locals 5

    .line 913
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 914
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 915
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 916
    .local v1, "currentTheme":Landroid/content/res/Resources$Theme;
    const v2, 0x1010397

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 918
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 920
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 921
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0

    .line 923
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 926
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "targetThemeRes":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasIcon()Z
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public blacklist hasLogo()Z
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public whitelist hide()V
    .locals 1

    .line 685
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 687
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 689
    :cond_0
    return-void
.end method

.method public blacklist hideForSystem()V
    .locals 1

    .line 702
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 704
    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 706
    :cond_0
    return-void
.end method

.method public whitelist isHideOnContentScrollEnabled()Z
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist isShowing()Z
    .locals 2

    .line 866
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 868
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isTitleTruncated()Z
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .line 580
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 265
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 266
    return-void
.end method

.method public blacklist onContentScrollStarted()V
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 958
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 960
    :cond_0
    return-void
.end method

.method public blacklist onContentScrollStopped()V
    .locals 0

    .line 964
    return-void
.end method

.method public blacklist onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 326
    iput p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 327
    return-void
.end method

.method public whitelist removeAllTabs()V
    .locals 0

    .line 425
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->cleanupTabs()V

    .line 426
    return-void
.end method

.method public whitelist removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 349
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public whitelist removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .line 585
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->removeTabAt(I)V

    .line 586
    return-void
.end method

.method public whitelist removeTabAt(I)V
    .locals 6
    .param p1, "position"    # I

    .line 590
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_0

    .line 592
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 597
    .local v0, "selectedTabPosition":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 598
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .line 599
    .local v1, "removedTab":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v1, :cond_2

    .line 600
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 603
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 604
    .local v2, "newTabCount":I
    move v3, p1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 605
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 604
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 608
    .end local v3    # "i":I
    :cond_3
    if-ne v0, p1, :cond_5

    .line 609
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActionBar$Tab;

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 611
    :cond_5
    return-void
.end method

.method public whitelist selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .line 615
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 616
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 617
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    :goto_0
    nop

    .line 623
    .local v0, "trans":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-ne v2, p1, :cond_3

    .line 624
    if-eqz v2, :cond_6

    .line 625
    invoke-virtual {v2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 626
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_1

    .line 629
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 630
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_5

    .line 631
    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 633
    :cond_5
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    iput-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .line 634
    if-eqz v1, :cond_6

    .line 635
    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 639
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 640
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 642
    :cond_7
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 468
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 469
    return-void
.end method

.method public whitelist setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 367
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 366
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 368
    return-void
.end method

.method public whitelist setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1277
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1278
    return-void
.end method

.method public whitelist setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .line 1282
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1283
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1284
    return-void
.end method

.method public blacklist setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1385
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1386
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1388
    :cond_0
    return-void
.end method

.method public whitelist setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .line 382
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 383
    return-void
.end method

.method public whitelist setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .line 453
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 457
    return-void
.end method

.method public whitelist setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .line 460
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 461
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 462
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    not-int v3, p2

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 465
    return-void
.end method

.method public whitelist setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .line 392
    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 393
    return-void
.end method

.method public whitelist setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .line 377
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 378
    return-void
.end method

.method public whitelist setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .line 387
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 388
    return-void
.end method

.method public whitelist setDisplayUseLogoEnabled(Z)V
    .locals 1
    .param p1, "useLogo"    # Z

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 373
    return-void
.end method

.method public whitelist setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 253
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 257
    :cond_0
    return-void
.end method

.method public whitelist setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 730
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 735
    return-void
.end method

.method public whitelist setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .line 710
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 715
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 716
    return-void
.end method

.method public whitelist setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 951
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 952
    return-void
.end method

.method public whitelist setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 946
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 947
    return-void
.end method

.method public whitelist setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 941
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 942
    return-void
.end method

.method public whitelist setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 936
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 937
    return-void
.end method

.method public whitelist setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 397
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 398
    return-void
.end method

.method public whitelist setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1358
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    .line 1359
    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1363
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1364
    return-void
.end method

.method public whitelist setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .line 1288
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1289
    return-void
.end method

.method public whitelist setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1372
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    .line 1373
    return-void
.end method

.method public whitelist setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .line 1377
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1378
    return-void
.end method

.method public whitelist setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 1322
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1323
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1325
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1326
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1327
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1330
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_0

    .line 1331
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 1332
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 1335
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 1336
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 1338
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1339
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1340
    iget v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1341
    invoke-virtual {p0, v2}, Lcom/android/internal/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1342
    iput v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1346
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    invoke-interface {v2, v5}, Lcom/android/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1347
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-ne p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1348
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .line 411
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 414
    goto :goto_0

    .line 416
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 417
    nop

    .line 422
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 338
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 339
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 342
    :cond_0
    return-void
.end method

.method public whitelist setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 476
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 479
    :cond_0
    return-void
.end method

.method public whitelist setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 472
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 473
    return-void
.end method

.method public whitelist setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 407
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 449
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 450
    return-void
.end method

.method public whitelist setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 402
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 440
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method

.method public blacklist setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 445
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 446
    return-void
.end method

.method public whitelist show()V
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 662
    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 664
    :cond_0
    return-void
.end method

.method public blacklist showForSystem()V
    .locals 1

    .line 677
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 679
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 681
    :cond_0
    return-void
.end method

.method public blacklist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 5
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 502
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 508
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 509
    .local v0, "mode":Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    .line 513
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 514
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 515
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 516
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v4, v2, :cond_1

    .line 518
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 520
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 521
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 526
    return-object v0

    .line 528
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method
