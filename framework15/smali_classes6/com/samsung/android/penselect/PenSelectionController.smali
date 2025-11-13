.class public Lcom/samsung/android/penselect/PenSelectionController;
.super Ljava/lang/Object;
.source "PenSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PenSelectController"

.field private static blacklist sInstance:Lcom/samsung/android/penselect/PenSelectionController;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/penselect/PenSelectionController;
    .locals 1

    sget-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/penselect/PenSelectionController;

    invoke-direct {v0}, Lcom/samsung/android/penselect/PenSelectionController;-><init>()V

    sput-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    :cond_0
    sget-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    return-object v0
.end method

.method private blacklist getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/penselect/PenSelectionController;->isVisibleView(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMultiSelectionText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    :cond_1
    goto :goto_2

    :cond_2
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, p1, v5, p3}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z

    move-result v6

    if-ne v6, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v0
.end method

.method private blacklist isVisibleView(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist checkRectInView(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v0, v1

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {v2, v3, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method public blacklist clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z
    .locals 6

    move-object v0, p2

    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->clearMultiSelection()Z

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/penselect/PenSelectionController;->clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    nop

    :cond_2
    return v2
.end method

.method public blacklist findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;
    .locals 7

    move-object v0, p2

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/penselect/PenSelectionController;->checkRectInView(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    instance-of v4, v0, Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x2

    if-le v5, v6, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v4, v3, -0x1

    :goto_0
    if-ltz v4, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, p3}, Lcom/samsung/android/penselect/PenSelectionController;->findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getPenSelectionContents(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;

    invoke-direct {v0}, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z

    iget-object v1, v0, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    return-object v1
.end method

.method public blacklist isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z
    .locals 7

    move-object v0, p2

    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-virtual {v1, p3, p4}, Landroid/widget/TextView;->isMultiSelectionLinkArea(II)Z

    move-result v3

    if-ne v3, v2, :cond_2

    return v2

    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, p3, p4}, Lcom/samsung/android/penselect/PenSelectionController;->isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v6

    if-ne v6, v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    :cond_3
    const/4 v1, 0x0

    return v1
.end method
