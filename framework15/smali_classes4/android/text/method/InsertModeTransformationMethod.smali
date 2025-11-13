.class public Landroid/text/method/InsertModeTransformationMethod;
.super Ljava/lang/Object;
.source "InsertModeTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;,
        Landroid/text/method/InsertModeTransformationMethod$TransformedText;
    }
.end annotation


# instance fields
.field private blacklist mEnd:I

.field private final blacklist mOldTransformationMethod:Landroid/text/method/TransformationMethod;

.field private final blacklist mSingleLine:Z

.field private blacklist mStart:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I
    .locals 0

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/text/method/InsertModeTransformationMethod;)I
    .locals 0

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smintersect(IIII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod;->intersect(IIII)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(IIZLandroid/text/method/TransformationMethod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    iput-boolean p3, p0, Landroid/text/method/InsertModeTransformationMethod;->mSingleLine:Z

    iput-object p4, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/text/method/TransformationMethod;)V
    .locals 0

    invoke-direct {p0, p1, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IIZLandroid/text/method/TransformationMethod;)V

    return-void
.end method

.method private blacklist getPlaceholderText(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 7

    iget-boolean v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mSingleLine:Z

    if-nez v0, :cond_0

    const-string v0, "\n\n"

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v1, "\ufffd"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    const/4 v2, 0x1

    const/high16 v3, 0x42d80000    # 108.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    new-instance v4, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;

    invoke-direct {v4, v3}, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private static blacklist intersect(IIII)Z
    .locals 1

    const/4 v0, 0x0

    if-le p0, p3, :cond_0

    return v0

    :cond_0
    if-ge p1, p2, :cond_1

    return v0

    :cond_1
    if-eq p0, p1, :cond_3

    if-eq p2, p3, :cond_3

    if-ne p0, p3, :cond_2

    return v0

    :cond_2
    if-ne p1, p2, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public blacklist getOldTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 6

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, p1, p2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Landroid/text/method/InsertModeTransformationMethod;->getPlaceholderText(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    invoke-direct {v2, p0, v0, v1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;-><init>(Landroid/text/method/InsertModeTransformationMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-le p2, v0, :cond_0

    return-void

    :cond_0
    sub-int v0, p4, p3

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    if-ge p2, v1, :cond_2

    add-int v1, p2, p3

    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    if-gt v1, v2, :cond_1

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    goto :goto_0

    :cond_1
    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    :cond_2
    :goto_0
    add-int v1, p2, p3

    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-gt v1, v2, :cond_3

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-ge p2, v1, :cond_4

    add-int v1, p2, p4

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist update(Landroid/text/method/TransformationMethod;Z)Landroid/text/method/InsertModeTransformationMethod;
    .locals 3

    new-instance v0, Landroid/text/method/InsertModeTransformationMethod;

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    invoke-direct {v0, v1, v2, p2, p1}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IIZLandroid/text/method/TransformationMethod;)V

    return-object v0
.end method
