.class public abstract Landroid/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActionBar$LayoutParams;,
        Landroid/app/ActionBar$TabListener;,
        Landroid/app/ActionBar$Tab;,
        Landroid/app/ActionBar$OnMenuVisibilityListener;,
        Landroid/app/ActionBar$OnNavigationListener;,
        Landroid/app/ActionBar$DisplayOptions;,
        Landroid/app/ActionBar$NavigationMode;
    }
.end annotation


# static fields
.field public static final whitelist DISPLAY_HOME_AS_UP:I = 0x4

.field public static final whitelist DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final whitelist DISPLAY_SHOW_HOME:I = 0x2

.field public static final whitelist DISPLAY_SHOW_TITLE:I = 0x8

.field public static final greylist DISPLAY_TITLE_MULTIPLE_LINES:I = 0x20

.field public static final whitelist DISPLAY_USE_LOGO:I = 0x1

.field public static final whitelist NAVIGATION_MODE_LIST:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAVIGATION_MODE_STANDARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAVIGATION_MODE_TABS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract whitelist addTab(Landroid/app/ActionBar$Tab;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist addTab(Landroid/app/ActionBar$Tab;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist addTab(Landroid/app/ActionBar$Tab;IZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist addTab(Landroid/app/ActionBar$Tab;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist-max-o closeOptionsMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dispatchMenuVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract whitelist getCustomView()Landroid/view/View;
.end method

.method public abstract whitelist getDisplayOptions()I
.end method

.method public whitelist getElevation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist getHeight()I
.end method

.method public whitelist getHideOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist getNavigationItemCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getNavigationMode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getSelectedNavigationIndex()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getSelectedTab()Landroid/app/ActionBar$Tab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist getTabAt(I)Landroid/app/ActionBar$Tab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getTabCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getThemedContext()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist hide()V
.end method

.method public greylist-max-o invalidateOptionsMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isHideOnContentScrollEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist isShowing()Z
.end method

.method public greylist-max-o isTitleTruncated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist newTab()Landroid/app/ActionBar$Tab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onDestroy()V
    .locals 0

    return-void
.end method

.method public greylist-max-o onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o openOptionsMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist removeAllTabs()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract whitelist removeTab(Landroid/app/ActionBar$Tab;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist removeTabAt(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist selectTab(Landroid/app/ActionBar$Tab;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist semInvalidateOverflowButtonBadge(I)V
    .locals 0

    return-void
.end method

.method public abstract whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setCustomView(I)V
.end method

.method public abstract whitelist setCustomView(Landroid/view/View;)V
.end method

.method public abstract whitelist setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
.end method

.method public greylist-max-o setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0

    return-void
.end method

.method public abstract whitelist setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract whitelist setDisplayOptions(I)V
.end method

.method public abstract whitelist setDisplayOptions(II)V
.end method

.method public abstract whitelist setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract whitelist setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract whitelist setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract whitelist setDisplayUseLogoEnabled(Z)V
.end method

.method public whitelist setElevation(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHideOffset(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting an explicit action bar hide offset is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHideOnContentScrollEnabled(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHomeActionContentDescription(I)V
    .locals 0

    return-void
.end method

.method public whitelist setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public whitelist setHomeAsUpIndicator(I)V
    .locals 0

    return-void
.end method

.method public whitelist setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public whitelist setHomeButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public abstract whitelist setIcon(I)V
.end method

.method public abstract whitelist setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setLogo(I)V
.end method

.method public abstract whitelist setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setNavigationMode(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setSelectedNavigationItem(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist setShowHideAnimationEnabled(Z)V
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

.method public abstract whitelist setSubtitle(I)V
.end method

.method public abstract whitelist setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract whitelist setTitle(I)V
.end method

.method public abstract whitelist setTitle(Ljava/lang/CharSequence;)V
.end method

.method public greylist-max-o setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist show()V
.end method

.method public greylist-max-o startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
