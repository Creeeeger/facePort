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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/penselect/PenSelectionController;
    .locals 1

    .line 46
    sget-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/samsung/android/penselect/PenSelectionController;

    invoke-direct {v0}, Lcom/samsung/android/penselect/PenSelectionController;-><init>()V

    sput-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    .line 49
    :cond_0
    sget-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    return-object v0
.end method

.method private blacklist getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "contents"    # Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "haveContents":Z
    invoke-direct {p0, p2}, Lcom/samsung/android/penselect/PenSelectionController;->isVisibleView(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 63
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 64
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    .line 66
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 67
    invoke-virtual {v1}, Landroid/widget/TextView;->getMultiSelectionText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 68
    .local v2, "selectedText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    iget-object v3, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    goto :goto_0

    .line 72
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

    .line 74
    :goto_0
    const/4 v0, 0x1

    .line 78
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "selectedText":Ljava/lang/CharSequence;
    :cond_1
    goto :goto_2

    :cond_2
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 79
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    .line 80
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 82
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 83
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 84
    .local v5, "child":Landroid/view/View;
    invoke-direct {p0, p1, v5, p3}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z

    move-result v6

    if-ne v6, v2, :cond_3

    .line 85
    const/4 v0, 0x1

    .line 82
    .end local v5    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_4
    :goto_2
    return v0
.end method

.method private blacklist isVisibleView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 56
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
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rectSrc"    # Landroid/graphics/Rect;

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    return v1

    .line 182
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 183
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 185
    new-instance v2, Landroid/graphics/Rect;

    aget v3, v0, v1

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v1, v0, v1

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {v2, v3, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    .line 188
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method public blacklist clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;

    .line 100
    move-object v0, p2

    .line 102
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 103
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 106
    invoke-virtual {v1}, Landroid/widget/TextView;->clearMultiSelection()Z

    goto :goto_1

    .line 108
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 109
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 110
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 112
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 113
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 114
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/penselect/PenSelectionController;->clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z

    .line 112
    .end local v5    # "child":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_1
    :goto_1
    nop

    .line 117
    :cond_2
    return v2
.end method

.method public blacklist findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 146
    move-object v0, p2

    .line 148
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/penselect/PenSelectionController;->checkRectInView(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 150
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 151
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 152
    .local v2, "retView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 154
    .local v3, "childCount":I
    if-nez v3, :cond_1

    .line 155
    instance-of v4, v0, Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    .line 156
    return-object v0

    .line 158
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 159
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x2

    if-le v5, v6, :cond_1

    .line 160
    return-object v0

    .line 163
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 164
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 165
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v5, p3}, Lcom/samsung/android/penselect/PenSelectionController;->findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_2

    .line 167
    goto :goto_1

    .line 163
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 170
    .end local v4    # "i":I
    :cond_3
    :goto_1
    return-object v2

    .line 171
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "retView":Landroid/view/View;
    .end local v3    # "childCount":I
    :cond_4
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 172
    return-object v0

    .line 175
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getPenSelectionContents(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;

    .line 94
    new-instance v0, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;

    invoke-direct {v0}, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;-><init>()V

    .line 95
    .local v0, "contents":Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z

    .line 96
    iget-object v1, v0, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    return-object v1
.end method

.method public blacklist isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 121
    move-object v0, p2

    .line 123
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 124
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 126
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 127
    invoke-virtual {v1, p3, p4}, Landroid/widget/TextView;->isMultiSelectionLinkArea(II)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 128
    return v2

    .line 131
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 132
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 133
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 135
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 136
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 137
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v5, p3, p4}, Lcom/samsung/android/penselect/PenSelectionController;->isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v6

    if-ne v6, v2, :cond_1

    .line 138
    return v2

    .line 135
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_2
    nop

    .line 142
    :cond_3
    const/4 v1, 0x0

    return v1
.end method
