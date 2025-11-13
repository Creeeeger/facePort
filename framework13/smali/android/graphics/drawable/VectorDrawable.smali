.class public Landroid/graphics/drawable/VectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VObject;,
        Landroid/graphics/drawable/VectorDrawable$VFullPath;,
        Landroid/graphics/drawable/VectorDrawable$VClipPath;,
        Landroid/graphics/drawable/VectorDrawable$VPath;,
        Landroid/graphics/drawable/VectorDrawable$VGroup;,
        Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOGTAG:Ljava/lang/String;

.field private static final greylist-max-o SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"

.field private static final greylist-max-o SHAPE_GROUP:Ljava/lang/String; = "group"

.field private static final greylist-max-o SHAPE_PATH:Ljava/lang/String; = "path"

.field private static final greylist-max-o SHAPE_VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private blacklist mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist-max-o mDpiScaledDirty:Z

.field private greylist-max-o mDpiScaledHeight:I

.field private greylist-max-o mDpiScaledInsets:Landroid/graphics/Insets;

.field private greylist-max-o mDpiScaledWidth:I

.field private greylist-max-o mMutated:Z

.field private blacklist mOverrideDensity:I

.field private greylist-max-o mTargetDensity:I

.field private greylist-max-r mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final greylist-max-o mTmpBounds:Landroid/graphics/Rect;

.field private greylist-max-o mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnAddChild(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nAddChild(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateClipPath()J
    .locals 2

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateClipPath()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateClipPath(J)J
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateClipPath(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateFullPath()J
    .locals 2

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateFullPath()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateFullPath(J)J
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateFullPath(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateGroup()J
    .locals 2

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateGroup()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateGroup(J)J
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateGroup(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateTree(J)J
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateTree(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateTreeFromCopy(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nCreateTreeFromCopy(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFillAlpha(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetFillAlpha(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFillColor(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetFillColor(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFullPathProperties(J[BI)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nGetFullPathProperties(J[BI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetGroupProperties(J[FI)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nGetGroupProperties(J[FI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetPivotX(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetPivotX(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetPivotY(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetPivotY(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetRootAlpha(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetRootAlpha(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetRotation(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetRotation(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetScaleX(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetScaleX(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetScaleY(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetScaleY(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetStrokeAlpha(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeAlpha(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetStrokeColor(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeColor(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetStrokeWidth(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeWidth(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetTranslateX(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTranslateX(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetTranslateY(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTranslateY(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetTrimPathEnd(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathEnd(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetTrimPathOffset(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathOffset(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetTrimPathStart(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathStart(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetFillAlpha(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetFillAlpha(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetFillColor(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetFillColor(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetName(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetName(JLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPathData(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetPathData(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPathString(JLjava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetPathString(JLjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPivotX(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetPivotX(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPivotY(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetPivotY(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetRendererViewportSize(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetRendererViewportSize(JFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetRootAlpha(JF)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetRootAlpha(JF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetRotation(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetRotation(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetScaleX(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetScaleX(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetScaleY(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetScaleY(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetStrokeAlpha(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeAlpha(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetStrokeColor(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeColor(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetStrokeWidth(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeWidth(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetTranslateX(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTranslateX(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetTranslateY(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTranslateY(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetTrimPathEnd(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathEnd(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetTrimPathOffset(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathOffset(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetTrimPathStart(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathStart(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnUpdateFullPathFillGradient(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathFillGradient(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnUpdateFullPathProperties(JFIFIFFFFFIII)V
    .locals 0

    invoke-static/range {p0 .. p13}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathProperties(JFIFIFFFFFIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnUpdateFullPathStrokeGradient(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathStrokeGradient(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnUpdateGroupProperties(JFFFFFFF)V
    .locals 0

    invoke-static/range {p0 .. p8}, Landroid/graphics/drawable/VectorDrawable;->nUpdateGroupProperties(JFFFFFFF)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 324
    const-class v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    .line 362
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 368
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    .line 347
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    .line 348
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    .line 351
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 354
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    .line 357
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mOverrideDensity:I

    .line 373
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 374
    invoke-direct {p0, p2}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 375
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static greylist-max-o create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "rid"    # I

    .line 710
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/VectorDrawable;->createForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/VectorDrawable;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "rid"    # I
    .param p2, "density"    # I

    .line 717
    const-string/jumbo v0, "parser error"

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 718
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 720
    .local v2, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    if-eq v4, v3, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    if-ne v4, v5, :cond_1

    .line 728
    new-instance v3, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    .line 730
    .local v3, "drawable":Landroid/graphics/drawable/VectorDrawable;
    iput p2, v3, Landroid/graphics/drawable/VectorDrawable;->mOverrideDensity:I

    .line 732
    invoke-virtual {v3, p0, v1, v2}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 734
    return-object v3

    .line 725
    .end local v3    # "drawable":Landroid/graphics/drawable/VectorDrawable;
    :cond_1
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No start tag found"

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "resources":Landroid/content/res/Resources;
    .end local p1    # "rid":I
    .end local p2    # "density":I
    throw v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "type":I
    .restart local p0    # "resources":Landroid/content/res/Resources;
    .restart local p1    # "rid":I
    .restart local p2    # "density":I
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 735
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 736
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v2, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 740
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getDimensionPixelSize(Landroid/content/res/Resources;ILandroid/util/DisplayMetrics;)I
    .locals 4
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 879
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 880
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 881
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 882
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v1, p3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    return v1

    .line 884
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 885
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 894
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    const/4 v1, 0x1

    .line 898
    .local v1, "noPathTag":Z
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 899
    .local v2, "groupStack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/drawable/VectorDrawable$VGroup;>;"
    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 902
    .local v3, "eventType":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 905
    .local v4, "innerDepth":I
    :goto_0
    const-string/jumbo v6, "path"

    if-eq v3, v5, :cond_a

    .line 906
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v4, :cond_0

    if-eq v3, v8, :cond_a

    .line 907
    :cond_0
    const/4 v7, 0x2

    const-string v9, "group"

    if-ne v3, v7, :cond_8

    .line 908
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 909
    .local v7, "tagName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 911
    .local v8, "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 912
    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {v6}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>()V

    .line 913
    .local v6, "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    invoke-virtual {v6, p1, p3, p4}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 914
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 915
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 916
    iget-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_1
    const/4 v1, 0x0

    .line 919
    iget v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    or-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 920
    .end local v6    # "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    goto :goto_2

    :cond_2
    const-string v6, "clip-path"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 921
    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    invoke-direct {v6}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>()V

    .line 922
    .local v6, "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    invoke-virtual {v6, p1, p3, p4}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 923
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 924
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 925
    iget-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    :cond_3
    iget v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    or-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .end local v6    # "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    goto :goto_1

    .line 928
    :cond_4
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 929
    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    .line 930
    .local v6, "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-virtual {v6, p1, p3, p4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 931
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 932
    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 934
    iget-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :cond_5
    iget v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-static {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$fgetmChangingConfigurations(Landroid/graphics/drawable/VectorDrawable$VGroup;)I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    goto :goto_2

    .line 928
    .end local v6    # "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_6
    :goto_1
    nop

    .line 939
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_7
    :goto_2
    goto :goto_3

    :cond_8
    if-ne v3, v8, :cond_7

    .line 940
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 941
    .local v6, "tagName":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 942
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 945
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    .line 948
    :cond_a
    if-eqz v1, :cond_c

    .line 949
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 951
    .local v5, "tag":Ljava/lang/StringBuffer;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 952
    const-string v7, " or "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 954
    :cond_b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 956
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " defined"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 958
    .end local v5    # "tag":Ljava/lang/StringBuffer;
    :cond_c
    return-void
.end method

.method private static native greylist-max-o nAddChild(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateClipPath()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateClipPath(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateFullPath()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateFullPath(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateGroup()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateGroup(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateTree(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateTreeFromCopy(JJ)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nDraw(JJJLandroid/graphics/Rect;ZZ)I
.end method

.method private static native greylist-max-o nGetFillAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFillColor(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFullPathProperties(J[BI)Z
.end method

.method private static native greylist-max-o nGetGroupProperties(J[FI)Z
.end method

.method private static native greylist-max-o nGetPivotX(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetPivotY(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetRootAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetRotation(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetScaleY(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeColor(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTranslateX(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTranslateY(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTrimPathEnd(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTrimPathOffset(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTrimPathStart(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAllowCaching(JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAntiAlias(JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFillAlpha(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFillColor(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetName(JLjava/lang/String;)V
.end method

.method private static native greylist-max-o nSetPathData(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetPathString(JLjava/lang/String;I)V
.end method

.method private static native greylist-max-o nSetPivotX(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetPivotY(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetRendererViewportSize(JFF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetRootAlpha(JF)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetRotation(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetScaleY(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeAlpha(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeColor(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTranslateX(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTranslateY(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTrimPathEnd(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTrimPathOffset(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTrimPathStart(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nUpdateFullPathFillGradient(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nUpdateFullPathProperties(JFIFIFFFFFIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nUpdateFullPathStrokeGradient(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nUpdateGroupProperties(JFFFFFFF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o needMirroring()Z
    .locals 2

    .line 971
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist updateColorFilters(Landroid/graphics/BlendMode;Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 556
    invoke-static {p1}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 557
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v1, p2, v0}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 558
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {p0, v1, p2, p1}, Landroid/graphics/drawable/VectorDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 559
    return-void
.end method

.method private greylist-max-o updateLocalState(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 388
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mOverrideDensity:I

    if-eqz v0, :cond_0

    .line 389
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mOverrideDensity:I

    .local v0, "density":I
    goto :goto_0

    .line 391
    .end local v0    # "density":I
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    .line 394
    .restart local v0    # "density":I
    :goto_0
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    if-eq v1, v0, :cond_1

    .line 395
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    .line 396
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 399
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateColorFilters(Landroid/graphics/BlendMode;Landroid/content/res/ColorStateList;)V

    .line 400
    return-void
.end method

.method private blacklist updateStateFromTypedArray(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .locals 12
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 796
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 799
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    .line 801
    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 802
    .local v1, "tintMode":I
    if-eq v1, v2, :cond_0

    .line 803
    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 806
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 807
    .local v2, "tint":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 808
    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 811
    :cond_1
    const/4 v3, 0x5

    iget-boolean v4, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    .line 814
    const/4 v3, 0x7

    iget v4, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 816
    .local v3, "viewportWidth":F
    const/16 v4, 0x8

    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 818
    .local v4, "viewportHeight":F
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    .line 820
    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_7

    .line 823
    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    cmpg-float v5, v5, v6

    if-lez v5, :cond_6

    .line 829
    iget v5, p0, Landroid/graphics/drawable/VectorDrawable;->mOverrideDensity:I

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 830
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 831
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 832
    iget v9, p0, Landroid/graphics/drawable/VectorDrawable;->mOverrideDensity:I

    iput v9, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 833
    iget v9, p0, Landroid/graphics/drawable/VectorDrawable;->mOverrideDensity:I

    int-to-float v9, v9

    const/high16 v10, 0x43200000    # 160.0f

    div-float/2addr v9, v10

    iput v9, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v9, v5, Landroid/util/DisplayMetrics;->density:F

    .line 835
    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, p1, v7, v5}, Landroid/graphics/drawable/VectorDrawable;->getDimensionPixelSize(Landroid/content/res/Resources;ILandroid/util/DisplayMetrics;)I

    move-result v7

    iput v7, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    .line 837
    invoke-virtual {p2, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-direct {p0, p1, v6, v5}, Landroid/graphics/drawable/VectorDrawable;->getDimensionPixelSize(Landroid/content/res/Resources;ILandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    .line 839
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    goto :goto_0

    .line 840
    :cond_2
    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    invoke-virtual {p2, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    .line 842
    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    .line 847
    :goto_0
    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    if-lez v5, :cond_5

    .line 850
    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    if-lez v5, :cond_4

    .line 855
    const/16 v5, 0x9

    iget-object v6, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v6, v6, Landroid/graphics/Insets;->left:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 857
    .local v5, "insetLeft":I
    const/16 v6, 0xa

    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->top:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 859
    .local v6, "insetTop":I
    const/16 v7, 0xb

    iget-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v9, v9, Landroid/graphics/Insets;->right:I

    invoke-virtual {p2, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 861
    .local v7, "insetRight":I
    const/16 v9, 0xc

    iget-object v10, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v10, v10, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p2, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 863
    .local v9, "insetBottom":I
    invoke-static {v5, v6, v7, v9}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v10

    iput-object v10, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 865
    const/4 v10, 0x4

    .line 866
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    move-result v11

    .line 865
    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 867
    .local v10, "alphaInFloat":F
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    .line 869
    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 870
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 871
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    .line 872
    iget-object v11, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_3
    return-void

    .line 851
    .end local v5    # "insetLeft":I
    .end local v6    # "insetTop":I
    .end local v7    # "insetRight":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "insetBottom":I
    .end local v10    # "alphaInFloat":F
    :cond_4
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<vector> tag requires height > 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 848
    :cond_5
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<vector> tag requires width > 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 824
    :cond_6
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 821
    :cond_7
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 645
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 647
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 648
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    if-nez v0, :cond_0

    .line 649
    return-void

    .line 652
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 653
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    .line 652
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    move-result v1

    .line 654
    .local v1, "changedDensity":Z
    iget-boolean v2, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    or-int/2addr v2, v1

    iput-boolean v2, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 656
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-eqz v2, :cond_1

    .line 657
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    sget-object v3, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 660
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 661
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 666
    nop

    .line 669
    iput-boolean v3, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    goto :goto_1

    .line 665
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 662
    :catch_0
    move-exception v3

    .line 663
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .end local v1    # "changedDensity":Z
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/graphics/drawable/VectorDrawable;
    .end local p1    # "t":Landroid/content/res/Resources$Theme;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .restart local v1    # "changedDensity":Z
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/graphics/drawable/VectorDrawable;
    .restart local p1    # "t":Landroid/content/res/Resources$Theme;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 666
    throw v3

    .line 673
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_1
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 674
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 677
    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 678
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 682
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 683
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 640
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .locals 1

    .line 415
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    .line 417
    return-void
.end method

.method greylist-max-o computeVectorSize()V
    .locals 9

    .line 611
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 613
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 614
    .local v1, "sourceDensity":I
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    .line 615
    .local v2, "targetDensity":I
    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    .line 616
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    const/4 v5, 0x1

    invoke-static {v4, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    .line 618
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    invoke-static {v4, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    .line 620
    iget v4, v0, Landroid/graphics/Insets;->left:I

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    .line 622
    .local v4, "left":I
    iget v5, v0, Landroid/graphics/Insets;->right:I

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    .line 624
    .local v5, "right":I
    iget v6, v0, Landroid/graphics/Insets;->top:I

    invoke-static {v6, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v6

    .line 626
    .local v6, "top":I
    iget v7, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v7, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v7

    .line 628
    .local v7, "bottom":I
    invoke-static {v4, v6, v5, v7}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v8

    iput-object v8, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    .line 629
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    .end local v7    # "bottom":I
    goto :goto_0

    .line 630
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    .line 631
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    .line 632
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    .line 635
    :goto_0
    iput-boolean v3, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 636
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 434
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 435
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    .line 441
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    goto :goto_0

    .line 442
    :cond_1
    nop

    :goto_0
    nop

    .line 443
    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    if-nez v0, :cond_2

    const-wide/16 v1, 0x0

    move-wide v7, v1

    goto :goto_1

    .line 444
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    move-wide v7, v1

    :goto_1
    nop

    .line 445
    .local v7, "colorFilterNativeInstance":J
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canReuseCache()Z

    move-result v1

    .line 446
    .local v1, "canReuseCache":Z
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v5

    iget-object v9, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    .line 447
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;->needMirroring()Z

    move-result v10

    .line 446
    move v11, v1

    invoke-static/range {v3 .. v11}, Landroid/graphics/drawable/VectorDrawable;->nDraw(JJJLandroid/graphics/Rect;ZZ)I

    move-result v2

    .line 449
    .local v2, "pixelCount":I
    if-nez v2, :cond_3

    .line 452
    return-void

    .line 459
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 461
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    sub-int v3, v2, v3

    mul-int/lit8 v3, v3, 0x4

    .line 462
    .local v3, "deltaInBytes":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput v2, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    goto :goto_2

    .line 465
    .end local v3    # "deltaInBytes":I
    :cond_4
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    sub-int v3, v2, v3

    mul-int/lit8 v3, v3, 0x4

    .line 466
    .restart local v3    # "deltaInBytes":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput v2, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    .line 468
    :goto_2
    if-lez v3, :cond_5

    .line 469
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4, v3}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    goto :goto_3

    .line 470
    :cond_5
    if-gez v3, :cond_6

    .line 471
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    neg-int v5, v3

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 473
    :cond_6
    :goto_3
    return-void

    .line 437
    .end local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v1    # "canReuseCache":Z
    .end local v2    # "pixelCount":I
    .end local v3    # "deltaInBytes":I
    .end local v7    # "colorFilterNativeInstance":J
    :cond_7
    :goto_4
    return-void
.end method

.method public whitelist getAlpha()I
    .locals 2

    .line 478
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 962
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 496
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 426
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 427
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 1

    .line 578
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    .line 581
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 1

    .line 570
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    .line 573
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    return v0
.end method

.method public greylist-max-o getNativeTree()J
    .locals 2

    .line 991
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 565
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .line 600
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    .line 603
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public greylist-max-o getPixelSize()F
    .locals 7

    .line 692
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    int-to-float v0, v0

    .line 700
    .local v0, "intrinsicWidth":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    int-to-float v1, v1

    .line 701
    .local v1, "intrinsicHeight":F
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    .line 702
    .local v2, "viewportWidth":F
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    .line 703
    .local v3, "viewportHeight":F
    div-float v4, v2, v0

    .line 704
    .local v4, "scaleX":F
    div-float v5, v3, v1

    .line 705
    .local v5, "scaleY":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    return v6

    .line 697
    .end local v0    # "intrinsicWidth":F
    .end local v1    # "intrinsicHeight":F
    .end local v2    # "viewportWidth":F
    .end local v3    # "viewportHeight":F
    .end local v4    # "scaleX":F
    .end local v5    # "scaleY":F
    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method greylist getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 421
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .locals 1

    .line 528
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    const-wide/16 v0, 0x2000

    :try_start_0
    const-string v2, "VectorDrawable#inflate"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 749
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v2, :cond_3

    .line 751
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v2, :cond_1

    .line 753
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 754
    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativeSize()I

    move-result v3

    .line 753
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 756
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 758
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    iput-object v3, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 759
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v2, :cond_2

    .line 762
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const/16 v3, 0x13c

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 763
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 765
    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-static {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->-$$Nest$mcreateNativeTree(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    .line 767
    :cond_3
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 769
    .local v2, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget v3, p0, Landroid/graphics/drawable/VectorDrawable;->mOverrideDensity:I

    if-eqz v3, :cond_4

    .line 770
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    goto :goto_0

    .line 772
    :cond_4
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    .line 775
    :goto_0
    sget-object v3, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    invoke-static {p1, p4, p3, v3}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 776
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v3}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    .line 777
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 779
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 781
    iput-boolean v4, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 782
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 784
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    .line 786
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    .end local v2    # "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .end local v3    # "a":Landroid/content/res/TypedArray;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 789
    nop

    .line 790
    return-void

    .line 788
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 789
    throw v2
.end method

.method public whitelist isAutoMirrored()Z
    .locals 1

    .line 984
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    return v0
.end method

.method public whitelist isStateful()Z
    .locals 1

    .line 523
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 404
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 405
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    .line 408
    :cond_0
    return-object p0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .line 533
    const/4 v0, 0x0

    .line 537
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 540
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 541
    .local v1, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onStateChange([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    const/4 v0, 0x1

    .line 543
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 545
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eqz v2, :cond_2

    .line 546
    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 547
    .local v2, "blendMode":Landroid/graphics/BlendMode;
    iget-object v3, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 548
    .local v3, "tint":Landroid/content/res/ColorStateList;
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->updateColorFilters(Landroid/graphics/BlendMode;Landroid/content/res/ColorStateList;)V

    .line 549
    const/4 v0, 0x1

    .line 552
    .end local v2    # "blendMode":Landroid/graphics/BlendMode;
    .end local v3    # "tint":Landroid/content/res/ColorStateList;
    :cond_2
    return v0
.end method

.method blacklist semSetIntrinsicHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 594
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    .line 595
    return-void
.end method

.method blacklist semSetIntrinsicWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 588
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    .line 589
    return-void
.end method

.method greylist setAllowCaching(Z)V
    .locals 2
    .param p1, "allowCaching"    # Z

    .line 967
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->nSetAllowCaching(JZ)V

    .line 968
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .line 483
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 486
    :cond_0
    return-void
.end method

.method public greylist-max-o setAntiAlias(Z)V
    .locals 2
    .param p1, "aa"    # Z

    .line 998
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->nSetAntiAlias(JZ)V

    .line 999
    return-void
.end method

.method public whitelist setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .line 976
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    .line 977
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput-boolean p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    .line 978
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 980
    :cond_0
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 490
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 491
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 492
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 3
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 512
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 513
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eq v1, p1, :cond_0

    .line 514
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 516
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateColorFilters(Landroid/graphics/BlendMode;Landroid/content/res/ColorStateList;)V

    .line 517
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 519
    :cond_0
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 501
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 502
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 503
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 505
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-direct {p0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->updateColorFilters(Landroid/graphics/BlendMode;Landroid/content/res/ColorStateList;)V

    .line 506
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 508
    :cond_0
    return-void
.end method
