.class public final Landroidx/core/animation/PathInterpolator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Interpolator;


# instance fields
.field public mData:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroidx/core/animation/PathInterpolator$$ExternalSyntheticOutline0;->m(FF)Landroid/graphics/Path;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0, v0}, Landroidx/core/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroidx/core/animation/PathInterpolator$$ExternalSyntheticOutline0;->m(FF)Landroid/graphics/Path;

    move-result-object v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {p0, v0}, Landroidx/core/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/core/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/core/animation/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    const-string p2, "pathData"

    invoke-static {p4, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x4

    invoke-static {p1, p4, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/core/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    goto/16 :goto_5

    :cond_1
    const-string p2, "controlX1"

    invoke-static {p4, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "controlY1"

    invoke-static {p4, p3}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p4, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v2, p2

    :goto_1
    invoke-static {p4, p3}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v3, p2

    :goto_2
    const-string p2, "controlX2"

    invoke-static {p4, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p3

    const-string v1, "controlY2"

    invoke-static {p4, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-ne p3, v4, :cond_7

    if-nez p3, :cond_4

    invoke-static {v0, v0}, Landroidx/core/animation/PathInterpolator$$ExternalSyntheticOutline0;->m(FF)Landroid/graphics/Path;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2, v3, p3, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0, p2}, Landroidx/core/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    goto :goto_5

    :cond_4
    invoke-static {p4, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v4, p2

    :goto_3
    invoke-static {p4, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    move v5, v0

    goto :goto_4

    :cond_6
    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v5, p2

    :goto_4
    invoke-static {v0, v0}, Landroidx/core/animation/PathInterpolator$$ExternalSyntheticOutline0;->m(FF)Landroid/graphics/Path;

    move-result-object p2

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {p0, p2}, Landroidx/core/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    :goto_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p0, Landroid/view/InflateException;

    const-string p1, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Landroid/view/InflateException;

    const-string p1, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Landroid/view/InflateException;

    const-string p1, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/core/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public static floatEquals(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Landroidx/core/animation/PathInterpolator;->mData:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    sub-int v4, v1, v3

    if-le v4, v2, :cond_3

    add-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v2

    invoke-virtual {p0, v3}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v4

    sub-float/2addr v2, v4

    cmpl-float v0, v2, v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v3}, Landroidx/core/animation/PathInterpolator;->getYAtIndex(I)F

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0, v3}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v0

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    invoke-virtual {p0, v3}, Landroidx/core/animation/PathInterpolator;->getYAtIndex(I)F

    move-result v0

    invoke-virtual {p0, v1}, Landroidx/core/animation/PathInterpolator;->getYAtIndex(I)F

    move-result p0

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    return p0
.end method

.method public final getXAtIndex(I)F
    .locals 0

    iget-object p0, p0, Landroidx/core/animation/PathInterpolator;->mData:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method public final getYAtIndex(I)F
    .locals 0

    iget-object p0, p0, Landroidx/core/animation/PathInterpolator;->mData:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method public final initPath(Landroid/graphics/Path;)V
    .locals 5

    const v0, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/core/animation/PathInterpolator;->mData:[F

    array-length p1, p1

    div-int/lit8 p1, p1, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroidx/core/animation/PathInterpolator;->getYAtIndex(I)F

    move-result v1

    invoke-static {v1, v2}, Landroidx/core/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroidx/core/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Landroidx/core/animation/PathInterpolator;->getYAtIndex(I)F

    move-result v1

    invoke-static {v1, v4}, Landroidx/core/animation/PathInterpolator;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v3, p0, Landroidx/core/animation/PathInterpolator;->mData:[F

    mul-int/lit8 v4, v0, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, v0}, Landroidx/core/animation/PathInterpolator;->getXAtIndex(I)F

    move-result v4

    cmpl-float v2, v3, v2

    if-nez v2, :cond_1

    cmpl-float v2, v4, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot have discontinuity in the X axis."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    cmpg-float v1, v4, v1

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v1, v4

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot loop back on itself."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
