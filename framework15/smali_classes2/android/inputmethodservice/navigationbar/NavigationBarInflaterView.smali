.class public final Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarInflaterView.java"


# static fields
.field private static final blacklist ABSOLUTE_SUFFIX:Ljava/lang/String; = "A"

.field private static final blacklist ABSOLUTE_VERTICAL_CENTERED_SUFFIX:Ljava/lang/String; = "C"

.field public static final blacklist BACK:Ljava/lang/String; = "back"

.field public static final blacklist BUTTON_SEPARATOR:Ljava/lang/String; = ","

.field public static final blacklist CLIPBOARD:Ljava/lang/String; = "clipboard"

.field private static final blacklist CONFIG_NAV_BAR_LAYOUT_HANDLE:Ljava/lang/String; = "back[70AC];home_handle;ime_switcher[70AC]"

.field public static final blacklist CONTEXTUAL:Ljava/lang/String; = "contextual"

.field public static final blacklist GRAVITY_SEPARATOR:Ljava/lang/String; = ";"

.field public static final blacklist HOME:Ljava/lang/String; = "home"

.field public static final blacklist HOME_HANDLE:Ljava/lang/String; = "home_handle"

.field public static final blacklist IME_SWITCHER:Ljava/lang/String; = "ime_switcher"

.field public static final blacklist KEY:Ljava/lang/String; = "key"

.field public static final blacklist KEY_CODE_END:Ljava/lang/String; = ")"

.field public static final blacklist KEY_CODE_START:Ljava/lang/String; = "("

.field public static final blacklist KEY_IMAGE_DELIM:Ljava/lang/String; = ":"

.field public static final blacklist LEFT:Ljava/lang/String; = "left"

.field public static final blacklist MENU_IME_ROTATE:Ljava/lang/String; = "menu_ime"

.field public static final blacklist NAVSPACE:Ljava/lang/String; = "space"

.field public static final blacklist NAV_BAR_LEFT:Ljava/lang/String; = "sysui_nav_bar_left"

.field public static final blacklist NAV_BAR_RIGHT:Ljava/lang/String; = "sysui_nav_bar_right"

.field public static final blacklist NAV_BAR_VIEWS:Ljava/lang/String; = "sysui_nav_bar"

.field public static final blacklist RECENT:Ljava/lang/String; = "recent"

.field public static final blacklist RIGHT:Ljava/lang/String; = "right"

.field public static final blacklist SIZE_MOD_END:Ljava/lang/String; = "]"

.field public static final blacklist SIZE_MOD_START:Ljava/lang/String; = "["

.field private static final blacklist TAG:Ljava/lang/String; = "NavBarInflater"

.field private static final blacklist WEIGHT_CENTERED_SUFFIX:Ljava/lang/String; = "WC"

.field private static final blacklist WEIGHT_SUFFIX:Ljava/lang/String; = "W"


# instance fields
.field private blacklist mAlternativeOrder:Z

.field blacklist mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mHorizontal:Landroid/widget/FrameLayout;

.field protected blacklist mLandscapeInflater:Landroid/view/LayoutInflater;

.field private blacklist mLastLandscape:Landroid/view/View;

.field private blacklist mLastPortrait:Landroid/view/View;

.field protected blacklist mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->createInflaters()V

    return-void
.end method

.method private blacklist addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist addGravitySpacer(Landroid/widget/LinearLayout;)V
    .locals 4

    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private blacklist addToDispatchers(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->addView(Landroid/view/View;)V

    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;
    .locals 9

    invoke-static {p2}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "A"

    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-object p1

    :cond_2
    :goto_0
    new-instance v2, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    const/16 v5, 0x30

    goto :goto_1

    :cond_3
    const/16 v5, 0x50

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    const v5, 0x800003

    goto :goto_1

    :cond_5
    const v5, 0x800005

    :goto_1
    nop

    const-string v6, "WC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v5, 0x11

    goto :goto_2

    :cond_6
    const-string v6, "C"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v5, 0x10

    :cond_7
    :goto_2
    invoke-virtual {v2, v5}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setDefaultGravity(I)V

    invoke-virtual {v2, v5}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setGravity(I)V

    invoke-virtual {v2, p1, v4}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_8

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v1, v3}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->convertDpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    invoke-virtual {v2, v8}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setClipChildren(Z)V

    invoke-virtual {v2, v8}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setClipToPadding(Z)V

    return-object v2
.end method

.method private blacklist clearAllChildren(Landroid/view/ViewGroup;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist clearViews()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020378

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private static blacklist convertDpToPx(Landroid/content/Context;F)F
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private blacklist copy(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, p1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private static blacklist extractButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist extractSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist inflateChildren()V
    .locals 3

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->removeAllViews()V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    return-void
.end method

.method private blacklist initiallyFill(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x102037a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020379

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addAll(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private blacklist updateAlternativeOrder()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x102037a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v1, 0x1020379

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    return-void
.end method

.method private blacklist updateAlternativeOrder(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->setAlternativeOrder(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method blacklist createInflaters()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method blacklist createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "menu_ime"

    const-string v4, "space"

    if-eqz v2, :cond_0

    invoke-static {v4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    const-string v2, "home"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "back"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const v2, 0x10900a1

    invoke-virtual {p3, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v2, "recent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const-string v2, "clipboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const-string v2, "contextual"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    const-string v2, "home_handle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x10900a2

    invoke-virtual {p3, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_9
    const-string v2, "ime_switcher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x10900a3

    invoke-virtual {p3, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    :goto_1
    return-object v0
.end method

.method blacklist getDefaultLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "back[70AC];home_handle;ime_switcher[70AC]"

    return-object v0
.end method

.method protected blacklist inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .locals 6

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-direct {p0, v1, p1, p3, p4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    if-eqz p3, :cond_2

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    :goto_1
    move-object v3, v1

    instance-of v4, v1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    :cond_4
    if-eqz p3, :cond_5

    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_2

    :cond_5
    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    :goto_2
    return-object v1
.end method

.method protected blacklist inflateLayout(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, ";"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-eq v3, v1, :cond_1

    const-string v3, "NavBarInflater"

    const-string v4, "Invalid layout."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    :cond_1
    const/4 v0, 0x0

    aget-object v1, v2, v0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v7, 0x102037a

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v6, v0, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const v6, 0x1020379

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v4, v0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct {p0, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v4, v0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateChildren()V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->clearViews()V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    return-void
.end method

.method blacklist setAlternativeOrder(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    :cond_0
    return-void
.end method

.method blacklist setButtonDispatchers(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-direct {p0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->initiallyFill(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist updateButtonDispatchersCurrentView()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v2, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
