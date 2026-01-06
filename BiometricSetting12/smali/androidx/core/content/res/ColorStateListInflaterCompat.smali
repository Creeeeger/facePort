.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "ColorStateListInflaterCompat.java"


# static fields
.field private static final sTempTypedValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "parser",
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "parser",
            "attrs",
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/res/ColorStateListInflaterCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 3

    sget-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    if-nez v1, :cond_0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resources",
            "resId",
            "theme"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "CSLCompat"

    const-string v2, "Failed to inflate ColorStateList."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "parser",
            "attrs",
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v4, 0x1

    add-int/lit8 v5, v0, 0x1

    const/16 v0, 0x14

    new-array v0, v0, [[I

    array-length v6, v0

    new-array v6, v6, [I

    const/4 v7, 0x0

    move v8, v7

    move-object v7, v6

    move-object v6, v0

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v9, v0

    if-eq v0, v4, :cond_9

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v11, v0

    if-ge v0, v5, :cond_0

    const/4 v0, 0x3

    if-eq v9, v0, :cond_9

    :cond_0
    const/4 v0, 0x2

    if-ne v9, v0, :cond_8

    if-gt v11, v5, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v12, "item"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    sget-object v0, Landroidx/core/R$styleable;->ColorStateListItem:[I

    invoke-static {v1, v3, v2, v0}, Landroidx/core/content/res/ColorStateListInflaterCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    sget v0, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const/4 v13, -0x1

    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    const v15, -0xff01

    if-eq v14, v13, :cond_2

    invoke-static {v1, v14}, Landroidx/core/content/res/ColorStateListInflaterCompat;->isColorInt(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget v13, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_1
    goto :goto_2

    :cond_2
    sget v0, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    invoke-virtual {v12, v0, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_2
    const/high16 v13, 0x3f800000    # 1.0f

    sget v15, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_3

    sget v15, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v12, v15, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto :goto_3

    :cond_3
    sget v15, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_4

    sget v15, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v12, v15, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    :cond_4
    :goto_3
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v15, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    new-array v10, v4, [I

    const/16 v16, 0x0

    move/from16 v1, v16

    :goto_4
    if-ge v1, v4, :cond_7

    invoke-interface {v2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v3

    move/from16 v16, v4

    const v4, 0x10101a5

    if-eq v3, v4, :cond_6

    const v4, 0x101031f

    if-eq v3, v4, :cond_6

    sget v4, Landroidx/core/R$attr;->alpha:I

    if-eq v3, v4, :cond_6

    add-int/lit8 v4, v15, 0x1

    move/from16 v17, v4

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v18

    if-eqz v18, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    neg-int v4, v3

    :goto_5
    aput v4, v10, v15

    move/from16 v15, v17

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, p3

    move/from16 v4, v16

    goto :goto_4

    :cond_7
    move/from16 v16, v4

    invoke-static {v10, v15}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v1

    invoke-static {v0, v13}, Landroidx/core/content/res/ColorStateListInflaterCompat;->modulateColorAlpha(IF)I

    move-result v3

    invoke-static {v7, v8, v3}, Landroidx/core/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v7

    invoke-static {v6, v8, v1}, Landroidx/core/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, [[I

    nop

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    goto/16 :goto_0

    :cond_8
    :goto_6
    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    goto/16 :goto_0

    :cond_9
    new-array v0, v8, [I

    new-array v1, v8, [[I

    const/4 v3, 0x0

    invoke-static {v7, v3, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v3, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private static isColorInt(Landroid/content/res/Resources;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "resId"
        }
    .end annotation

    invoke-static {}, Landroidx/core/content/res/ColorStateListInflaterCompat;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static modulateColorAlpha(IF)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "alphaMod"
        }
    .end annotation

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v2, v0, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "theme",
            "set",
            "attrs"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    return-object v0
.end method
