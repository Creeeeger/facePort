.class public final Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# static fields
.field public static final blacklist FLOATING_TOOLBAR_TAG:Ljava/lang/String; = "floating_toolbar"

.field private static final blacklist NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final blacklist mContentRect:Landroid/graphics/Rect;

.field private blacklist mMenu:Landroid/view/Menu;

.field private blacklist mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final blacklist mMenuItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOrientation:I

.field private final blacklist mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

.field private final blacklist mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

.field private final blacklist mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOrientation(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOrientation(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientation:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;-><init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemComparator:Ljava/util/Comparator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->createInstance(Landroid/content/Context;Landroid/view/View;Z)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/Window;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;-><init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemComparator:Ljava/util/Comparator;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->createInstance(Landroid/content/Context;Landroid/view/View;Z)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    return-void
.end method

.method private blacklist doShow()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->tidy(Ljava/util/List;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->show(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method private static blacklist getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/view/MenuItem;Landroid/view/MenuItem;)I
    .locals 5

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const v3, 0x1020041

    if-ne v0, v3, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    return v4

    :cond_2
    invoke-interface {p0}, Landroid/view/MenuItem;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Landroid/view/MenuItem;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    :cond_5
    invoke-interface {p0}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    invoke-interface {p0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$static$0(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist registerOrientationHandler()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->unregisterOrientationHandler()V

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private blacklist tidy(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x1020041

    if-ne v5, v6, :cond_0

    move v0, v3

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    if-le v0, v3, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private blacklist unregisterOrientationHandler()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->unregisterOrientationHandler()V

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->dismiss()V

    return-void
.end method

.method public blacklist getMovedPos()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->getMovedPos()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hide()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->hide()V

    return-void
.end method

.method public blacklist isDiscardTouch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isDiscardTouch()Z

    move-result v0

    return v0
.end method

.method public blacklist isHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isHidden()Z

    move-result v0

    return v0
.end method

.method public blacklist isMovingStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isMovingStarted()Z

    move-result v0

    return v0
.end method

.method public blacklist isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public blacklist setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public blacklist setIsMovingStarted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setIsMovingStarted(Z)V

    return-void
.end method

.method public blacklist setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    return-object p0
.end method

.method public blacklist setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    :goto_0
    return-object p0
.end method

.method public blacklist setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z

    return-void
.end method

.method public blacklist setSuggestedWidth(I)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setSuggestedWidth(I)V

    return-object p0
.end method

.method public blacklist show()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->registerOrientationHandler()V

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->doShow()V

    return-object p0
.end method

.method public blacklist updateLayout()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->doShow()V

    :cond_0
    return-object p0
.end method
