.class public Lcom/android/internal/app/ToolbarActionBar;
.super Landroid/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;,
        Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;
    }
.end annotation


# instance fields
.field private blacklist mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private blacklist mLastMenuVisibility:Z

.field private blacklist mMenuCallbackSet:Z

.field private final blacklist mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private final blacklist mMenuInvalidator:Ljava/lang/Runnable;

.field private blacklist mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mToolbarMenuPrepared:Z

.field private blacklist mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDecorToolbar(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToolbarMenuPrepared(Lcom/android/internal/app/ToolbarActionBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToolbarMenuPrepared(Lcom/android/internal/app/ToolbarActionBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ToolbarActionBar$1;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ToolbarActionBar$2;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Lcom/android/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public whitelist addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist closeOptionsMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public blacklist collapseActionView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispatchMenuVisibilityChanged(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayOptions()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public whitelist getElevation()F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getElevation()F

    move-result v0

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getNavigationItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNavigationMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSelectedNavigationIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTabCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getThemedContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWrappedWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public whitelist hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    return-void
.end method

.method public blacklist invalidateOptionsMenu()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isTitleTruncated()Z
    .locals 1

    invoke-super {p0}, Landroid/app/ActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public whitelist newTab()Landroid/app/ActionBar$Tab;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public blacklist onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-interface {v0, v4}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    return v1

    :cond_2
    return v1
.end method

.method public blacklist onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ToolbarActionBar;->openOptionsMenu()Z

    :cond_0
    return v1
.end method

.method public blacklist openOptionsMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method blacklist populateOptionsMenu()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v2, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback-IA;)V

    new-instance v3, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback-IA;)V

    invoke-interface {v0, v2, v3}, Lcom/android/internal/widget/DecorToolbar;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    instance-of v2, v0, Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v3, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v3, v4, v1, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_6
    throw v1
.end method

.method public whitelist removeAllTabs()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeTabAt(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setCustomView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public whitelist setCustomView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method public whitelist setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public blacklist setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0

    return-void
.end method

.method public whitelist setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public whitelist setDisplayOptions(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public whitelist setDisplayOptions(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    not-int v3, p2

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public whitelist setDisplayShowCustomEnabled(Z)V
    .locals 2

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public whitelist setDisplayShowHomeEnabled(Z)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public whitelist setDisplayShowTitleEnabled(Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public whitelist setDisplayUseLogoEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public whitelist setElevation(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method

.method public whitelist setHomeActionContentDescription(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    return-void
.end method

.method public whitelist setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setHomeAsUpIndicator(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    return-void
.end method

.method public whitelist setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setHomeButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public whitelist setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public whitelist setLogo(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    return-void
.end method

.method public whitelist setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setNavigationMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationMode(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tabs not supported in this configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSelectedNavigationItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    nop

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setShowHideAnimationEnabled(Z)V
    .locals 0

    return-void
.end method

.method public whitelist setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public whitelist setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public whitelist setSubtitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist show()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    return-void
.end method

.method public blacklist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
