.class final Landroid/widget/Editor$InsertModeController;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InsertModeController"
.end annotation


# instance fields
.field private final blacklist mHighlightPaint:Landroid/graphics/Paint;

.field private final blacklist mHighlightPath:Landroid/graphics/Path;

.field private blacklist mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

.field private blacklist mIsInsertModeActive:Z

.field private final blacklist mTextView:Landroid/widget/TextView;

.field private blacklist mUpdatingTransformationMethod:Z


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPath:Landroid/graphics/Path;

    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private blacklist setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mUpdatingTransformationMethod:Z

    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTransformationMethodInternal(Landroid/text/method/TransformationMethod;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mUpdatingTransformationMethod:Z

    return-void
.end method


# virtual methods
.method blacklist beforeSetText()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mUpdatingTransformationMethod:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode(Z)V

    return-void
.end method

.method blacklist enterInsertMode(I)Z
    .locals 4

    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v2, v0, Landroid/text/method/OffsetMapping;

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v1

    new-instance v2, Landroid/text/method/InsertModeTransformationMethod;

    invoke-direct {v2, p1, v1, v0}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IZLandroid/text/method/TransformationMethod;)V

    iput-object v2, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iput-boolean v3, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    return v3
.end method

.method blacklist exitInsertMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode(Z)V

    return-void
.end method

.method blacklist exitInsertMode(Z)V
    .locals 5

    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    invoke-virtual {v3}, Landroid/text/method/InsertModeTransformationMethod;->getOldTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    iget-object v4, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iput-boolean v1, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    return-void
.end method

.method blacklist onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformed()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v2, v0

    check-cast v2, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    invoke-virtual {v2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getHighlightStart()I

    move-result v3

    invoke-virtual {v2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getHighlightEnd()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iget-object v5, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPath:Landroid/graphics/Path;

    iget-object v6, p0, Landroid/widget/Editor$InsertModeController;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method blacklist updateTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 5

    iget-boolean v0, p0, Landroid/widget/Editor$InsertModeController;->mIsInsertModeActive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    iget-object v4, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/text/method/InsertModeTransformationMethod;->update(Landroid/text/method/TransformationMethod;Z)Landroid/text/method/InsertModeTransformationMethod;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    iget-object v3, p0, Landroid/widget/Editor$InsertModeController;->mInsertModeTransformationMethod:Landroid/text/method/InsertModeTransformationMethod;

    invoke-direct {p0, v3, v1}, Landroid/widget/Editor$InsertModeController;->setTransformationMethod(Landroid/text/method/TransformationMethod;Z)V

    iget-object v1, p0, Landroid/widget/Editor$InsertModeController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method
