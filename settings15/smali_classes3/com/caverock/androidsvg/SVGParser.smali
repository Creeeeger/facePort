.class public final Lcom/caverock/androidsvg/SVGParser;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

.field public ignoreDepth:I

.field public ignoring:Z

.field public inMetadataElement:Z

.field public inStyleElement:Z

.field public metadataElementContents:Ljava/lang/StringBuilder;

.field public metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public styleElementContents:Ljava/lang/StringBuilder;

.field public svgDocument:Lcom/caverock/androidsvg/SVG;


# direct methods
.method public static clamp255(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/16 p0, 0xff

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static hslToRgb(FFF)I
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr p0, v2

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr p0, v2

    :goto_0
    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr p0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    div-float/2addr p2, v1

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    move p1, v2

    :cond_2
    :goto_1
    cmpg-float v1, p2, v0

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    cmpl-float v0, p2, v2

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, p2

    :goto_2
    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_5

    add-float/2addr p1, v2

    mul-float/2addr p1, v0

    goto :goto_3

    :cond_5
    add-float p2, v0, p1

    mul-float/2addr p1, v0

    sub-float p1, p2, p1

    :goto_3
    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    sub-float/2addr v0, p1

    add-float v1, p0, p2

    invoke-static {v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result v1

    invoke-static {v0, p1, p0}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result v2

    sub-float/2addr p0, p2

    invoke-static {v0, p1, p0}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    move-result p0

    const/high16 p1, 0x43800000    # 256.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    mul-float/2addr v2, p1

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    mul-float/2addr p0, p1

    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result p0

    or-int/2addr p0, p2

    return p0
.end method

.method public static hueToRgb(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/high16 v1, 0x40c00000    # 6.0f

    if-gez v0, :cond_0

    add-float/2addr p2, v1

    :cond_0
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_1

    sub-float/2addr p2, v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    invoke-static {p1, p0, p2, p0}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p0

    return p0

    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    return p1

    :cond_3
    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_4

    sub-float/2addr p1, p0

    invoke-static {v0, p2, p1, p0}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p0

    :cond_4
    return p0
.end method

.method public static parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    if-eqz v2, :cond_0

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_0
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    :goto_1
    invoke-interface {p0, v3}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFonts(Ljava/util/Set;)V

    goto/16 :goto_6

    :pswitch_1
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_2
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_2

    :cond_1
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFormats(Ljava/util/Set;)V

    goto :goto_6

    :pswitch_2
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredExtensions(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_3
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_3
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    const-string v4, "UNSUPPORTED"

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_3

    :cond_3
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFeatures(Ljava/util/Set;)V

    goto :goto_6

    :cond_4
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_5
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_5
    new-instance v5, Ljava/util/Locale;

    const-string v6, ""

    invoke-direct {v5, v4, v6, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_5

    :cond_6
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setSystemLanguage(Ljava/util/Set;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "xml:id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "xml:space"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    const-string v0, "preserve"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "Invalid value for \"xml:space\" attribute: "

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    :cond_5
    :goto_2
    return-void
.end method

.method public static parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_6

    const/16 v3, 0x18

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string p1, "Invalid spreadMethod attribute. \""

    const-string v0, "\" is not a valid value."

    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v2, ""

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string p1, "Invalid value for attribute gradientUnits"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v2, v3, :cond_3

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :goto_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    const-string v6, "Invalid <"

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string p1, "> points attribute. There should be an even number of coordinates."

    invoke-static {v6, p2, p1}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string p1, "> points attribute. Non-coordinate content found in list."

    invoke-static {v6, p2, p1}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v6, v3, 0x1

    aput v4, v5, v3

    move v3, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_c

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_8

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v2, :cond_1

    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const-string v4, "/\\*.*?\\*/"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/16 v2, 0x3a

    invoke-virtual {v3, v2, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v2, 0x3b

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_6
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v2, :cond_7

    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    :cond_7
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v2, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_1

    :cond_8
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_2

    :cond_b
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public static parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0x52

    if-eq v2, v3, :cond_1

    const/16 v3, 0x53

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/caverock/androidsvg/SVG$HasTransform;->setTransform(Landroid/graphics/Matrix;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v1

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v3

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v4

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-ltz v6, :cond_2

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_1

    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v5, v1, v3, v4, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string p1, "Invalid viewBox. height cannot be negative"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string p1, "Invalid viewBox. width cannot be negative"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string p1, "Invalid viewBox definition - should have four numbers"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 15

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    const/4 v2, 0x5

    const/high16 v3, -0x1000000

    const/4 v4, 0x4

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-lt v1, v0, :cond_0

    goto :goto_3

    :cond_0
    const-wide/16 v6, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v0, :cond_4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    const-wide/16 v11, 0x10

    if-lt v9, v10, :cond_1

    const/16 v10, 0x39

    if-gt v9, v10, :cond_1

    mul-long/2addr v6, v11

    add-int/lit8 v9, v9, -0x30

    int-to-long v9, v9

    add-long/2addr v6, v9

    goto :goto_2

    :cond_1
    const/16 v10, 0x41

    const-wide/16 v13, 0xa

    if-lt v9, v10, :cond_2

    const/16 v10, 0x46

    if-gt v9, v10, :cond_2

    mul-long/2addr v6, v11

    add-int/lit8 v9, v9, -0x41

    :goto_1
    int-to-long v9, v9

    add-long/2addr v6, v9

    add-long/2addr v6, v13

    goto :goto_2

    :cond_2
    const/16 v10, 0x61

    if-lt v9, v10, :cond_4

    const/16 v10, 0x66

    if-gt v9, v10, :cond_4

    mul-long/2addr v6, v11

    add-int/lit8 v9, v9, -0x61

    goto :goto_1

    :goto_2
    const-wide v9, 0xffffffffL

    cmp-long v9, v6, v9

    if-lez v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    if-ne v8, v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v5, Lcom/caverock/androidsvg/IntegerParser;

    invoke-direct {v5, v8, v6, v7}, Lcom/caverock/androidsvg/IntegerParser;-><init>(IJ)V

    :goto_3
    const-string v0, "Bad hex colour value: "

    if-eqz v5, :cond_a

    iget-wide v6, v5, Lcom/caverock/androidsvg/IntegerParser;->value:J

    iget v1, v5, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    if-eq v1, v4, :cond_9

    if-eq v1, v2, :cond_8

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    long-to-int v0, v6

    shl-int/lit8 v0, v0, 0x18

    long-to-int v1, v6

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    :cond_6
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    long-to-int v0, v6

    or-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    :cond_8
    long-to-int p0, v6

    const v0, 0xf000

    and-int/2addr v0, p0

    and-int/lit16 v1, p0, 0xf00

    and-int/lit16 v2, p0, 0xf0

    and-int/lit8 p0, p0, 0xf

    new-instance v3, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v5, p0, 0x1c

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v5

    shl-int/lit8 v5, v0, 0x8

    or-int/2addr p0, v5

    shl-int/2addr v0, v4

    or-int/2addr p0, v0

    shl-int/lit8 v0, v1, 0x4

    or-int/2addr p0, v0

    or-int/2addr p0, v1

    or-int/2addr p0, v2

    shr-int/lit8 v0, v2, 0x4

    or-int/2addr p0, v0

    invoke-direct {v3, p0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v3

    :cond_9
    long-to-int p0, v6

    and-int/lit16 v0, p0, 0xf00

    and-int/lit16 v1, p0, 0xf0

    and-int/lit8 p0, p0, 0xf

    new-instance v2, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v5, v0, 0xc

    or-int/2addr v3, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v0, v3

    shl-int/2addr v1, v4

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x4

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v2

    :cond_a
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rgba("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v5, 0x29

    const/high16 v6, 0x43800000    # 256.0f

    const/16 v7, 0x25

    if-nez v1, :cond_16

    const-string/jumbo v8, "rgb("

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_6

    :cond_c
    const-string v1, "hsla("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v8, "hsl("

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_4

    :cond_d
    sget-object p0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_e

    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v0

    :cond_e
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid colour keyword: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_4
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v2, v4

    :goto_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    :cond_11
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    :cond_12
    if-eqz v1, :cond_14

    invoke-virtual {v0, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    mul-float/2addr v1, v6

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-static {v2, v4, v8}, Lcom/caverock/androidsvg/SVGParser;->hslToRgb(FFF)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    :cond_13
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Bad hsla() colour value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-static {v2, v4, v8}, Lcom/caverock/androidsvg/SVGParser;->hslToRgb(FFF)I

    move-result v0

    or-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    :cond_15
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Bad hsl() colour value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_6
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    if-eqz v1, :cond_17

    goto :goto_7

    :cond_17
    move v2, v4

    :goto_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/high16 v8, 0x42c80000    # 100.0f

    if-nez v4, :cond_18

    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_18

    mul-float/2addr v2, v6

    div-float/2addr v2, v8

    :cond_18
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_19

    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_19

    mul-float/2addr v4, v6

    div-float/2addr v4, v8

    :cond_19
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_1a

    mul-float/2addr v9, v6

    div-float/2addr v9, v8

    :cond_1a
    if-eqz v1, :cond_1c

    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    mul-float/2addr v1, v6

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {v9}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    :cond_1b
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Bad rgba() colour value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {v9}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    :cond_1d
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Bad rgb() colour value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseFloat(ILjava/lang/String;)F
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/NumberParser;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(IILjava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "Invalid float value: "

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(ILjava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "Invalid float value (empty string)"

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseFontFamily(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0
.end method

.method public static parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v0, "url("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid length unit specifier: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(ILjava/lang/String;)F

    move-result v0

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid length value: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "Invalid length value (empty string)"

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseLengthList(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length list value: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :goto_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    iget-object v5, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    if-nez v4, :cond_0

    iget v4, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_1

    :cond_0
    iget v1, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v3, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    :cond_2
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v4, p0, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "Invalid length list (empty string)"

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 1

    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object p0

    return-object p0
.end method

.method public static parseOpacity(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 6

    const-string v0, "currentColor"

    const-string v1, "none"

    const-string/jumbo v2, "url("

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x4

    if-eq v2, v4, :cond_3

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v3
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/caverock/androidsvg/SVG$CurrentColor;->instance:Lcom/caverock/androidsvg/SVG$CurrentColor;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    :catch_0
    :cond_2
    :goto_0
    new-instance p0, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v4, v3}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    return-object p0

    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {v0, p0, v3}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    return-object v0

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_1
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v3
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/caverock/androidsvg/SVG$CurrentColor;->instance:Lcom/caverock/androidsvg/SVG$CurrentColor;

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    :catch_1
    :goto_1
    return-object v3
.end method

.method public static parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "defer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$AspectRatioKeywords;->aspectRatioKeywords:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "meet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "slice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "Invalid preserveAspectRatio definition: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object p1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {v0, v1, p1}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-void
.end method

.method public static parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v1, 0x3d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v9, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :goto_0
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v10

    if-nez v10, :cond_18

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    goto :goto_3

    :cond_0
    iget v10, v9, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v12, v9, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_1
    const/16 v14, 0x61

    if-lt v13, v14, :cond_1

    const/16 v14, 0x7a

    if-le v13, v14, :cond_2

    :cond_1
    const/16 v14, 0x41

    if-lt v13, v14, :cond_3

    const/16 v14, 0x5a

    if-gt v13, v14, :cond_3

    :cond_2
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v13

    goto :goto_1

    :cond_3
    iget v14, v9, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :goto_2
    invoke-static {v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v13

    goto :goto_2

    :cond_4
    const/16 v15, 0x28

    if-ne v13, v15, :cond_5

    iget v11, v9, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v11, v7

    iput v11, v9, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v12, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_5
    iput v10, v9, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :goto_3
    if-eqz v11, :cond_17

    const/16 v10, 0x29

    const-string v12, "Invalid transform list: "

    const/4 v13, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string/jumbo v14, "translate"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_4

    :cond_6
    move v13, v1

    goto :goto_4

    :sswitch_1
    const-string/jumbo v14, "skewY"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_4

    :cond_7
    move v13, v2

    goto :goto_4

    :sswitch_2
    const-string/jumbo v14, "skewX"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    goto :goto_4

    :cond_8
    move v13, v3

    goto :goto_4

    :sswitch_3
    const-string/jumbo v14, "scale"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_4

    :cond_9
    move v13, v4

    goto :goto_4

    :sswitch_4
    const-string/jumbo v14, "rotate"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_4

    :cond_a
    move v13, v7

    goto :goto_4

    :sswitch_5
    const-string v14, "matrix"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_4

    :cond_b
    move v13, v5

    :goto_4
    packed-switch v13, :pswitch_data_0

    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid transform list fn: "

    const-string v2, ")"

    invoke-static {v1, v11, v2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v11

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v13

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v8, v11, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v8, v11, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_5

    :cond_d
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v11

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_e

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v8, v6, v10}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_5

    :cond_e
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v11

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_f

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_f

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v8, v10, v6}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_5

    :cond_f
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v11

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v13

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_11

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v8, v11, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_5

    :cond_10
    invoke-virtual {v8, v11, v13}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_5

    :cond_11
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v11

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v13

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()F

    move-result v14

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_14

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v8, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_5

    :cond_12
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v8, v11, v13, v14}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_5

    :cond_13
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v11

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v13

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v14

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v15

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v16

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v17

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-nez v18, :cond_16

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_16

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    const/16 v12, 0x9

    new-array v12, v12, [F

    aput v11, v12, v5

    aput v14, v12, v7

    aput v16, v12, v4

    aput v13, v12, v3

    aput v15, v12, v2

    aput v17, v12, v1

    const/4 v11, 0x6

    aput v6, v12, v11

    const/4 v11, 0x7

    aput v6, v12, v11

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v13, 0x8

    aput v11, v12, v13

    invoke-virtual {v10, v12}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v8, v10}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :goto_5
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v10

    if-eqz v10, :cond_15

    goto :goto_6

    :cond_15
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto/16 :goto_0

    :cond_16
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Bad transform function encountered in transform list: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    :goto_6
    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x4072683f -> :sswitch_5
        -0x372522a5 -> :sswitch_4
        0x683094a -> :sswitch_3
        0x686bc8e -> :sswitch_2
        0x686bc8f -> :sswitch_1
        0x3ec0f14e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v3, "italic"

    const-string v4, "oblique"

    const-string/jumbo v5, "visible"

    const/4 v6, 0x4

    const-string v7, "normal"

    const-string v8, "auto"

    const-string v9, "none"

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    return-void

    :cond_0
    const-string v14, "inherit"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/4 v2, 0x5

    if-eq v14, v13, :cond_4c

    if-eq v14, v12, :cond_4b

    sget-object v17, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    const-string v10, "evenodd"

    sget-object v18, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    const-string v12, "nonzero"

    if-eq v14, v6, :cond_48

    if-eq v14, v2, :cond_47

    const/16 v2, 0x8

    if-eq v14, v2, :cond_44

    const/16 v2, 0x23

    if-eq v14, v2, :cond_43

    const/16 v2, 0x28

    if-eq v14, v2, :cond_42

    const/16 v2, 0x2a

    if-eq v14, v2, :cond_3d

    const/16 v2, 0x4e

    if-eq v14, v2, :cond_3a

    const/16 v2, 0x3a

    const-string v6, "SVGParser"

    const-string v13, "currentColor"

    if-eq v14, v2, :cond_38

    const/16 v2, 0x3b

    if-eq v14, v2, :cond_37

    const/16 v2, 0x4a

    if-eq v14, v2, :cond_33

    const/16 v2, 0x4b

    if-eq v14, v2, :cond_2d

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    sget-object v16, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    sget-object v19, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    const-string/jumbo v11, "|"

    const/16 v15, 0x7c

    packed-switch v14, :pswitch_data_0

    packed-switch v14, :pswitch_data_1

    const-string/jumbo v2, "round"

    packed-switch v14, :pswitch_data_2

    packed-switch v14, :pswitch_data_3

    goto/16 :goto_26

    :pswitch_0
    invoke-virtual {v1, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_50

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "|visible|hidden|collapse|"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_26

    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x2000000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_1
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v3, 0x400000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_2
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/caverock/androidsvg/SVG$CurrentColor;->instance:Lcom/caverock/androidsvg/SVG$CurrentColor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v3, 0x200000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :pswitch_3
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x20

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_26

    :pswitch_4
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x10

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_5
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x100

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_2
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_26

    :pswitch_6
    const-string v3, "miter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    goto :goto_1

    :cond_5
    const-string v2, "bevel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    :goto_1
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x80

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_7
    const-string v3, "butt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    goto :goto_2

    :cond_8
    const-string/jumbo v2, "square"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    goto :goto_2

    :cond_9
    const/4 v15, 0x0

    :goto_2
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x40

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_8
    :try_start_3
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x400

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_3
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_26

    :pswitch_9
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x200

    if-eqz v2, :cond_a

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_a
    const/4 v6, 0x0

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_3
    move-object v15, v6

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_3

    :cond_d
    iget v5, v1, Lcom/caverock/androidsvg/SVG$Length;->value:F

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Length;->value:F

    add-float/2addr v5, v1

    goto :goto_4

    :cond_10
    const/4 v1, 0x0

    cmpl-float v1, v5, v1

    if-nez v1, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Lcom/caverock/androidsvg/SVG$Length;

    :goto_5
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_a
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v1, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x8

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_b
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x8000000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_c
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v1, Lcom/caverock/androidsvg/SVG$CurrentColor;->instance:Lcom/caverock/androidsvg/SVG$CurrentColor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_6

    :cond_12
    :try_start_4
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_4
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_6
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x4000000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :pswitch_d
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x800000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_e
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x400000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_f
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x200000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_10
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0xe00000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_11
    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_7
    const/4 v10, -0x1

    goto :goto_8

    :sswitch_0
    const-string v2, "optimizeSpeed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_7

    :cond_13
    const/4 v10, 0x2

    goto :goto_8

    :sswitch_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_7

    :cond_14
    const/4 v10, 0x1

    goto :goto_8

    :sswitch_2
    const-string v2, "optimizeQuality"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_7

    :cond_15
    const/4 v10, 0x0

    :goto_8
    packed-switch v10, :pswitch_data_4

    move-object v15, v6

    goto :goto_9

    :pswitch_12
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeSpeed:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    goto :goto_9

    :pswitch_13
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    goto :goto_9

    :pswitch_14
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeQuality:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    :goto_9
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v3, 0x2000000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_15
    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :goto_a
    const/4 v10, -0x1

    goto :goto_b

    :sswitch_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_a

    :cond_16
    const/4 v10, 0x2

    goto :goto_b

    :sswitch_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_a

    :cond_17
    const/4 v10, 0x1

    goto :goto_b

    :sswitch_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_a

    :cond_18
    const/4 v10, 0x0

    :goto_b
    packed-switch v10, :pswitch_data_5

    move-object v15, v6

    goto :goto_c

    :pswitch_16
    move-object/from16 v15, v19

    goto :goto_c

    :pswitch_17
    move-object/from16 v15, v16

    goto :goto_c

    :pswitch_18
    move-object v15, v2

    :goto_c
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x10000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_19
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    if-eqz v1, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x8000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_1a
    const/4 v6, 0x0

    :try_start_5
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_19

    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1
    :try_end_5
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v15, v1

    goto :goto_d

    :cond_19
    move-object v15, v2

    goto :goto_d

    :catch_2
    move-object v15, v6

    :goto_d
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x4000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_1b
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz v1, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x2000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_1c
    const/4 v6, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "|caption|icon|menu|message-box|small-caption|status-bar|"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto/16 :goto_26

    :cond_1a
    new-instance v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v5, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    move-object v8, v1

    move-object v9, v8

    :goto_e
    const/16 v10, 0x2f

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-nez v12, :cond_1b

    goto/16 :goto_26

    :cond_1b
    if-eqz v1, :cond_1c

    if-eqz v8, :cond_1c

    goto/16 :goto_12

    :cond_1c
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    goto :goto_e

    :cond_1d
    if-nez v1, :cond_1e

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    goto :goto_e

    :cond_1e
    if-nez v8, :cond_22

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2

    :goto_f
    const/4 v8, -0x1

    goto :goto_10

    :sswitch_6
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    goto :goto_f

    :cond_1f
    const/4 v8, 0x2

    goto :goto_10

    :sswitch_7
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    goto :goto_f

    :cond_20
    const/4 v8, 0x1

    goto :goto_10

    :sswitch_8
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    goto :goto_f

    :cond_21
    move v8, v11

    :goto_10
    packed-switch v8, :pswitch_data_6

    move-object v8, v6

    goto :goto_11

    :pswitch_1d
    move-object/from16 v8, v19

    goto :goto_11

    :pswitch_1e
    move-object/from16 v8, v16

    goto :goto_11

    :pswitch_1f
    move-object v8, v2

    :goto_11
    if-eqz v8, :cond_22

    goto :goto_e

    :cond_22
    if-nez v9, :cond_23

    const-string/jumbo v9, "small-caps"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    move-object v9, v12

    goto :goto_e

    :cond_23
    :goto_12
    :try_start_6
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_24

    invoke-static {v12}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2
    :try_end_6
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_13

    :catch_3
    move-object v2, v6

    :cond_24
    :goto_13
    invoke-virtual {v5, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    :try_start_7
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    :try_end_7
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_25
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    :cond_26
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_27

    move-object v15, v6

    goto :goto_14

    :cond_27
    iget v3, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v4, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    iput v4, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v4, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :goto_14
    invoke-static {v15}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_28

    const/16 v1, 0x190

    goto :goto_15

    :cond_28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    if-nez v8, :cond_29

    move-object/from16 v8, v19

    :cond_29
    iput-object v8, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x1e000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_20
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x4

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_21
    const/4 v6, 0x0

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v15, v18

    goto :goto_16

    :cond_2a
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move-object/from16 v15, v17

    goto :goto_16

    :cond_2b
    move-object v15, v6

    :goto_16
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_22
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v1, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :pswitch_23
    invoke-virtual {v1, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_50

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_26

    :cond_2c
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x1000000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_2d
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    :goto_17
    const/4 v2, -0x1

    goto :goto_18

    :sswitch_9
    const-string v2, "overline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_17

    :cond_2e
    const/4 v2, 0x4

    goto :goto_18

    :sswitch_a
    const-string v2, "blink"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_17

    :cond_2f
    const/4 v2, 0x3

    goto :goto_18

    :sswitch_b
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_17

    :cond_30
    const/4 v2, 0x2

    goto :goto_18

    :sswitch_c
    const-string/jumbo v3, "underline"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_17

    :sswitch_d
    const-string v2, "line-through"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_17

    :cond_31
    move v2, v11

    :cond_32
    :goto_18
    packed-switch v2, :pswitch_data_7

    move-object v15, v6

    goto :goto_19

    :pswitch_24
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_19

    :pswitch_25
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_19

    :pswitch_26
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_19

    :pswitch_27
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    goto :goto_19

    :pswitch_28
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    :goto_19
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x20000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_33
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4

    :goto_1a
    const/4 v10, -0x1

    goto :goto_1b

    :sswitch_e
    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_1a

    :cond_34
    const/4 v10, 0x2

    goto :goto_1b

    :sswitch_f
    const-string v3, "end"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    goto :goto_1a

    :cond_35
    move v10, v2

    goto :goto_1b

    :sswitch_10
    const-string v2, "middle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_1a

    :cond_36
    move v10, v11

    :goto_1b
    packed-switch v10, :pswitch_data_8

    move-object v15, v6

    goto :goto_1c

    :pswitch_29
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_1c

    :pswitch_2a
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_1c

    :pswitch_2b
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :goto_1c
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x40000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_37
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v3, 0x100000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_38
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v1, Lcom/caverock/androidsvg/SVG$CurrentColor;->instance:Lcom/caverock/androidsvg/SVG$CurrentColor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_1d

    :cond_39
    :try_start_8
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_8
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_8 .. :try_end_8} :catch_4

    :goto_1d
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v3, 0x80000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :cond_3a
    const/4 v6, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "non-scaling-stroke"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    move-object v15, v6

    goto :goto_1e

    :cond_3b
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    goto :goto_1e

    :cond_3c
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    :goto_1e
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v3, 0x800000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_3d
    move v2, v13

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5

    :goto_1f
    const/4 v2, -0x1

    goto :goto_20

    :sswitch_11
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_1f

    :cond_3e
    const/4 v2, 0x3

    goto :goto_20

    :sswitch_12
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_1f

    :cond_3f
    const/4 v2, 0x2

    goto :goto_20

    :sswitch_13
    const-string/jumbo v3, "scroll"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_1f

    :sswitch_14
    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_1f

    :cond_40
    move v2, v11

    :cond_41
    :goto_20
    packed-switch v2, :pswitch_data_9

    move-object v15, v6

    goto :goto_21

    :pswitch_2c
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_21

    :pswitch_2d
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_21
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x80000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_42
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x800

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_43
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x40000000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_44
    const/4 v6, 0x0

    const-string v2, "ltr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string/jumbo v2, "rtl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    move-object v15, v6

    goto :goto_22

    :cond_45
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    goto :goto_22

    :cond_46
    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    :goto_22
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v3, 0x1000000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_47
    :try_start_9
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v3, 0x1000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_9
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_26

    :cond_48
    const/4 v6, 0x0

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v15, v18

    goto :goto_23

    :cond_49
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move-object/from16 v15, v17

    goto :goto_23

    :cond_4a
    move-object v15, v6

    :goto_23
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x20000000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_26

    :cond_4b
    invoke-static/range {p2 .. p2}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x10000000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_26

    :cond_4c
    const/4 v6, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    :goto_24
    move-object v15, v6

    goto :goto_25

    :cond_4d
    const-string/jumbo v3, "rect("

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto :goto_24

    :cond_4e
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v7, 0x29

    invoke-virtual {v3, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v7

    if-nez v7, :cond_4f

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_24

    :cond_4f
    new-instance v15, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v1, v15, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, v15, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v15, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v5, v15, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    :goto_25
    iput-object v15, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-eqz v15, :cond_50

    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v3, 0x100000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    :catch_5
    :cond_50
    :goto_26
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x58
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x379c7c9e -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x159eff6a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x62ce05cf -> :sswitch_5
        -0x4642c5d0 -> :sswitch_4
        -0x3df94319 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x62ce05cf -> :sswitch_8
        -0x4642c5d0 -> :sswitch_7
        -0x3df94319 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x45d81614 -> :sswitch_d
        -0x3d363934 -> :sswitch_c
        0x33af38 -> :sswitch_b
        0x597af5c -> :sswitch_a
        0x1f9462c8 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x4009266b -> :sswitch_10
        0x188db -> :sswitch_f
        0x68ac462 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x48916256 -> :sswitch_14
        -0x361a1933 -> :sswitch_13
        0x2dddaf -> :sswitch_12
        0x1bd1f072 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public final appendToTextContainer(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    :goto_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    new-instance v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    :goto_1
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    return-void

    :cond_0
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p3

    :goto_0
    sget-object p1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->cache:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/caverock/androidsvg/CSSParser;

    sget-object p3, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    sget-object v0, Lcom/caverock/androidsvg/CSSParser$Source;->Document:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p2, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    iput-object p3, p2, Lcom/caverock/androidsvg/CSSParser;->deviceMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    iput-object v0, p2, Lcom/caverock/androidsvg/CSSParser;->source:Lcom/caverock/androidsvg/CSSParser$Source;

    iget-object p3, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object p1

    iget-object p2, p3, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {p2, p1}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :pswitch_2
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    sget-object p2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6
    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final parseUsingSAX(Ljava/io/InputStream;)V
    .locals 3

    const-string v0, "SVGParser"

    const-string v1, "Falling back to SAX parser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const-string v1, "http://xml.org/sax/features/external-general-entities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SAXHandler;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$SAXHandler;-><init>(Lcom/caverock/androidsvg/SVGParser;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string p0, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v0, p0, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "Stream error"

    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "SVG parse error"

    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_2
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "XML parser problem"

    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public final parseUsingXmlPullParser(Ljava/io/InputStream;)V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eq v2, v4, :cond_a

    if-eqz v2, :cond_8

    const/16 v5, 0x8

    const-string v6, "SVGParser"

    if-eq v2, v5, :cond_7

    const/16 v5, 0xa

    if-eq v2, v5, :cond_6

    const/16 v5, 0x3a

    const/4 v6, 0x2

    if-eq v2, v6, :cond_4

    const/4 v7, 0x3

    if-eq v2, v7, :cond_2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGParser;->text(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :cond_1
    new-array v2, v6, [I

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v5

    aget v6, v2, v3

    aget v2, v2, v4

    invoke-virtual {p0, v5, v6, v2}, Lcom/caverock/androidsvg/SVGParser;->text([CII)V

    goto/16 :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v2}, Lcom/caverock/androidsvg/SVGParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v2, v1}, Lcom/caverock/androidsvg/SVGParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v2, :cond_9

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v5, "<!ENTITY "

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_9

    :try_start_2
    const-string v0, "Switching to SAX parser to process entities"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseUsingSAX(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_2
    :try_start_3
    const-string p0, "Detected internal entity definitions, but could not parse them."

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PROC INSTR: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/Map;

    const-string/jumbo v2, "xml-stylesheet"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser;->startDocument()V

    :cond_9
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_a
    return-void

    :goto_3
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "Stream error"

    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_4
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "XML parser problem"

    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public final path(Lorg/xml/sax/Attributes;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v2, :cond_21

    new-instance v3, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iput-object v2, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_20

    invoke-interface {v1, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    const/4 v8, 0x0

    if-eq v6, v7, :cond_2

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_0

    :goto_1
    move/from16 v20, v4

    goto/16 :goto_f

    :cond_0
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v5

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v6, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput v2, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    iput v2, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    const/16 v7, 0x8

    new-array v7, v7, [B

    iput-object v7, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    const/16 v7, 0x10

    new-array v7, v7, [F

    iput-object v7, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    move/from16 v20, v4

    goto/16 :goto_e

    :cond_3
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v9, 0x4d

    const/16 v15, 0x6d

    if-eq v7, v9, :cond_4

    if-eq v7, v15, :cond_4

    goto :goto_2

    :cond_4
    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move/from16 v17, v12

    move/from16 v18, v17

    :goto_3
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v13, 0x6c

    const/high16 v16, 0x40000000    # 2.0f

    const-string v2, " path segment"

    const-string v14, "Bad path coords for "

    const-string v15, "SVGParser"

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->close()V

    move/from16 v20, v4

    move/from16 v19, v8

    move/from16 v9, v17

    move v10, v9

    move/from16 v11, v18

    :goto_4
    move v12, v11

    :goto_5
    const/16 v4, 0x61

    goto/16 :goto_b

    :sswitch_1
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/16 v2, 0x76

    if-ne v7, v2, :cond_6

    add-float/2addr v12, v11

    :cond_6
    move v11, v12

    invoke-virtual {v5, v9, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move/from16 v20, v4

    move/from16 v19, v8

    goto :goto_4

    :sswitch_2
    mul-float v13, v9, v16

    sub-float v10, v13, v10

    mul-float v16, v16, v11

    sub-float v12, v16, v12

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v13

    invoke-virtual {v6, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-eqz v20, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    const/16 v2, 0x74

    if-ne v7, v2, :cond_8

    add-float/2addr v13, v9

    add-float v16, v16, v11

    :cond_8
    move v9, v13

    move/from16 v11, v16

    invoke-virtual {v5, v10, v12, v9, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    move/from16 v20, v4

    move/from16 v19, v8

    goto :goto_5

    :sswitch_3
    mul-float v13, v9, v16

    sub-float v10, v13, v10

    mul-float v16, v16, v11

    sub-float v12, v16, v12

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v13

    invoke-virtual {v6, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-eqz v21, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    const/16 v2, 0x73

    if-ne v7, v2, :cond_a

    add-float/2addr v1, v9

    add-float v16, v16, v11

    add-float/2addr v13, v9

    add-float/2addr v8, v11

    :cond_a
    move v2, v13

    move-object v9, v5

    move v11, v12

    move v12, v2

    move v13, v8

    const/16 v15, 0x61

    move v14, v1

    move/from16 v19, v1

    const/16 v1, 0x6d

    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    move v10, v2

    move/from16 v20, v4

    move v12, v8

    move/from16 v11, v16

    move/from16 v9, v19

    :goto_6
    const/16 v4, 0x61

    const/16 v19, 0x0

    goto/16 :goto_b

    :sswitch_4
    const/16 v1, 0x6d

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    invoke-virtual {v6, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v12

    invoke-virtual {v6, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-eqz v16, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    const/16 v2, 0x71

    if-ne v7, v2, :cond_c

    add-float/2addr v12, v9

    add-float/2addr v13, v11

    add-float/2addr v8, v9

    add-float/2addr v10, v11

    :cond_c
    move v9, v12

    move v11, v13

    move v12, v10

    move v10, v8

    invoke-virtual {v5, v10, v12, v9, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    move/from16 v20, v4

    goto :goto_6

    :sswitch_5
    const/16 v1, 0x6d

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    if-ne v7, v1, :cond_f

    iget v2, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    if-nez v2, :cond_e

    goto :goto_7

    :cond_e
    add-float/2addr v8, v9

    add-float/2addr v10, v11

    :cond_f
    :goto_7
    move v9, v8

    move v11, v10

    invoke-virtual {v5, v9, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->moveTo(FF)V

    if-ne v7, v1, :cond_10

    goto :goto_8

    :cond_10
    const/16 v13, 0x4c

    :goto_8
    move/from16 v20, v4

    move v10, v9

    move/from16 v17, v10

    move v12, v11

    move/from16 v18, v12

    move v7, v13

    goto/16 :goto_6

    :sswitch_6
    const/16 v1, 0x6d

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    if-ne v7, v13, :cond_12

    add-float/2addr v8, v9

    add-float/2addr v10, v11

    :cond_12
    move v9, v8

    move v11, v10

    invoke-virtual {v5, v9, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move/from16 v20, v4

    move v10, v9

    move v12, v11

    goto/16 :goto_6

    :sswitch_7
    const/16 v1, 0x6d

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_13
    const/16 v2, 0x68

    if-ne v7, v2, :cond_14

    add-float/2addr v8, v9

    :cond_14
    move v9, v8

    invoke-virtual {v5, v9, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move/from16 v20, v4

    move v10, v9

    goto/16 :goto_6

    :sswitch_8
    const/16 v1, 0x6d

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v10

    invoke-virtual {v6, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v12

    invoke-virtual {v6, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v13

    invoke-virtual {v6, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-eqz v19, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_15
    const/16 v2, 0x63

    if-ne v7, v2, :cond_16

    add-float/2addr v1, v9

    add-float v16, v16, v11

    add-float/2addr v8, v9

    add-float/2addr v10, v11

    add-float/2addr v12, v9

    add-float/2addr v13, v11

    :cond_16
    move v11, v10

    move v2, v12

    move v10, v8

    move v8, v13

    move-object v9, v5

    move v12, v2

    move v13, v8

    move v14, v1

    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    move v9, v1

    move v10, v2

    move/from16 v20, v4

    move v12, v8

    move/from16 v11, v16

    goto/16 :goto_6

    :sswitch_9
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v10

    invoke-virtual {v6, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v13

    if-nez v13, :cond_17

    const/high16 v16, 0x7fc00000    # Float.NaN

    :goto_9
    move/from16 v0, v16

    goto :goto_a

    :cond_17
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v16

    goto :goto_9

    :goto_a
    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->checkedNextFloat(F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-nez v19, :cond_18

    const/16 v19, 0x0

    cmpg-float v20, v10, v19

    if-ltz v20, :cond_18

    cmpg-float v20, v1, v19

    if-gez v20, :cond_19

    :cond_18
    move/from16 v20, v4

    goto/16 :goto_d

    :cond_19
    move/from16 v20, v4

    const/16 v4, 0x61

    if-ne v7, v4, :cond_1a

    add-float/2addr v0, v9

    add-float v16, v16, v11

    :cond_1a
    move/from16 v2, v16

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object v9, v5

    move v11, v1

    move v13, v8

    move v15, v0

    move/from16 v16, v2

    invoke-virtual/range {v9 .. v16}, Lcom/caverock/androidsvg/SVG$PathDefinition;->arcTo(FFFZZFF)V

    move v9, v0

    move v10, v9

    move v11, v2

    move v12, v11

    :goto_b
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_e

    :cond_1b
    iget v0, v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v0, v1, :cond_1c

    goto :goto_c

    :cond_1c
    iget-object v1, v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v4, :cond_1d

    const/16 v1, 0x7a

    if-le v0, v1, :cond_1e

    :cond_1d
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1f

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1f

    :cond_1e
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_1f
    :goto_c
    const/4 v2, 0x0

    const/16 v15, 0x6d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, v19

    move/from16 v4, v20

    goto/16 :goto_3

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    iput-object v5, v3, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    :goto_f
    add-int/lit8 v4, v20, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_20
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    :cond_21
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. Root element must be <svg>"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public final startDocument()V
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/SVG;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-direct {v1}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-boolean v3, v0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v1, v0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    return-void

    :cond_0
    const-string v3, "http://www.w3.org/2000/svg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, ""

    if-nez v3, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v1, p2

    goto :goto_0

    :cond_2
    move-object/from16 v1, p3

    :goto_0
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->cache:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v7, 0x38

    const-string v9, "Invalid <use> element. height cannot be negative"

    const-string v10, "Invalid <use> element. width cannot be negative"

    const/16 v11, 0x25

    const-string v14, "objectBoundingBox"

    const-string/jumbo v15, "userSpaceOnUse"

    const-string v8, "http://www.w3.org/1999/xlink"

    const/16 v12, 0x1a

    const/16 v13, 0x19

    const-string v6, "Invalid document. Root element must be <svg>"

    packed-switch v3, :pswitch_data_0

    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    iput v4, v0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto/16 :goto_28

    :pswitch_0
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/caverock/androidsvg/SVG$View;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_4
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_c

    new-instance v1, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    :goto_2
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_b

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_8

    if-eq v4, v12, :cond_6

    packed-switch v4, :pswitch_data_1

    goto :goto_3

    :pswitch_2
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    :pswitch_3
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    :pswitch_4
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v10}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_7
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v9}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_c
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_f

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v1, :cond_e

    new-instance v1, Lcom/caverock/androidsvg/SVG$TSpan;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v2, v0, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v2, :cond_d

    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TSpan;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    goto/16 :goto_28

    :cond_d
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$Text;

    move-result-object v0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TSpan;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    goto/16 :goto_28

    :cond_e
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_16

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v1, :cond_15

    new-instance v1, Lcom/caverock/androidsvg/SVG$TRef;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    :goto_4
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_13

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v12, :cond_10

    goto :goto_5

    :cond_10
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    :cond_12
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_13
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v2, v0, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v2, :cond_14

    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TRef;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    goto/16 :goto_28

    :cond_14
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$Text;

    move-result-object v0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TRef;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    goto/16 :goto_28

    :cond_15
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_1d

    new-instance v1, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    :goto_6
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_1b

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v12, :cond_18

    const/16 v7, 0x3d

    if-eq v4, v7, :cond_17

    goto :goto_7

    :cond_17
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_7

    :cond_18
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_19
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    :cond_1a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_1b
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v2, v0, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v2, :cond_1c

    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TextPath;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    goto/16 :goto_28

    :cond_1c
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$Text;

    move-result-object v0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TextPath;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    goto/16 :goto_28

    :cond_1d
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_1e
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_1f
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_20

    new-instance v1, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_20
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_27

    const-string v1, "all"

    move v3, v4

    const/4 v6, 0x0

    :goto_8
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v6, v5, :cond_23

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x26

    if-eq v7, v8, :cond_22

    const/16 v8, 0x4d

    if-eq v7, v8, :cond_21

    goto :goto_9

    :cond_21
    const-string/jumbo v3, "text/css"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_9

    :cond_22
    move-object v1, v5

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_23
    if-eqz v3, :cond_26

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    new-instance v3, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v3, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-static {v3}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/CSSParser$MediaType;

    sget-object v5, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-eq v3, v5, :cond_25

    if-ne v3, v2, :cond_24

    :cond_25
    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    goto/16 :goto_28

    :cond_26
    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    iput v4, v0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto/16 :goto_28

    :cond_27
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_30

    instance-of v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-eqz v3, :cond_2f

    new-instance v3, Lcom/caverock/androidsvg/SVG$Stop;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    iget-object v5, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v5, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    const/4 v1, 0x0

    :goto_a
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_2e

    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x27

    if-eq v6, v7, :cond_28

    goto :goto_d

    :cond_28
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_29

    add-int/lit8 v6, v6, -0x1

    move v7, v4

    goto :goto_b

    :cond_29
    const/4 v7, 0x0

    :goto_b
    :try_start_0
    invoke-static {v6, v5}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(ILjava/lang/String;)F

    move-result v6

    const/high16 v8, 0x42c80000    # 100.0f

    if-eqz v7, :cond_2a

    div-float/2addr v6, v8

    :cond_2a
    const/4 v7, 0x0

    cmpg-float v9, v6, v7

    if-gez v9, :cond_2b

    move v8, v7

    goto :goto_c

    :cond_2b
    cmpl-float v7, v6, v8

    if-lez v7, :cond_2c

    goto :goto_c

    :cond_2c
    move v8, v6

    :goto_c
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v5, v3, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :catch_0
    move-exception v0

    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid offset value in <stop>: "

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2d
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid offset value in <stop> (empty string)"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_2f
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid document. <stop> elements are only valid inside <linearGradient> or <radialGradient> elements."

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_31

    new-instance v3, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_31
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_3a

    new-instance v3, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    :goto_e
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v6, v1, :cond_39

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_37

    if-eq v4, v7, :cond_35

    const/16 v5, 0x39

    if-eq v4, v5, :cond_33

    packed-switch v4, :pswitch_data_2

    goto :goto_f

    :pswitch_f
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_f

    :pswitch_10
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_f

    :pswitch_11
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_f

    :cond_32
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <rect> element. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_f

    :cond_34
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_f

    :cond_36
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_38

    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    :cond_38
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <rect> element. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto/16 :goto_28

    :cond_3a
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_42

    new-instance v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$GradientElement;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    :goto_10
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_41

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_40

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3f

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3e

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x31

    if-eq v4, v5, :cond_3b

    goto :goto_11

    :cond_3b
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_11

    :cond_3c
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    :cond_3e
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    :cond_3f
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    :cond_40
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_41
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_42
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_43

    new-instance v3, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string v1, "polyline"

    invoke-static {v3, v2, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto/16 :goto_28

    :cond_43
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_44

    new-instance v3, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string v1, "polygon"

    invoke-static {v3, v2, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto/16 :goto_28

    :cond_44
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_50

    new-instance v1, Lcom/caverock/androidsvg/SVG$Pattern;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    :goto_12
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_4f

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_4c

    if-eq v4, v12, :cond_4a

    packed-switch v4, :pswitch_data_3

    packed-switch v4, :pswitch_data_4

    goto/16 :goto_13

    :pswitch_16
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto/16 :goto_13

    :pswitch_17
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto/16 :goto_13

    :pswitch_18
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_13

    :cond_45
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_13

    :cond_46
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_13

    :cond_47
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute patternUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    goto :goto_13

    :pswitch_1b
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_13

    :cond_48
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_13

    :cond_49
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute patternContentUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    :cond_4b
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    goto :goto_13

    :cond_4c
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_4e

    :cond_4d
    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12

    :cond_4e
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_50
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->path(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_28

    :pswitch_1d
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_5b

    new-instance v1, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    :goto_14
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_5a

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_58

    const/16 v5, 0x24

    if-eq v4, v5, :cond_55

    if-eq v4, v11, :cond_52

    packed-switch v4, :pswitch_data_5

    goto :goto_15

    :pswitch_1e
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_15

    :pswitch_1f
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_15

    :pswitch_20
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_15

    :cond_51
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <mask> element. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_15

    :cond_53
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_15

    :cond_54
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute maskUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_15

    :cond_56
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_15

    :cond_57
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute maskContentUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_59

    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_14

    :cond_59
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <mask> element. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_5b
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_21
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_65

    new-instance v1, Lcom/caverock/androidsvg/SVG$Marker;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    const/4 v3, 0x0

    :goto_16
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_64

    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x29

    if-eq v6, v7, :cond_62

    const/16 v7, 0x32

    if-eq v6, v7, :cond_61

    const/16 v7, 0x33

    if-eq v6, v7, :cond_60

    packed-switch v6, :pswitch_data_6

    :goto_17
    const/4 v11, 0x0

    goto/16 :goto_18

    :pswitch_22
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-nez v5, :cond_5c

    goto :goto_17

    :cond_5c
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_23
    const-string/jumbo v6, "strokeWidth"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_18

    :cond_5d
    const/4 v11, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    iput-boolean v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_18

    :cond_5e
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute markerUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    const/4 v11, 0x0

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-nez v5, :cond_5f

    goto :goto_18

    :cond_5f
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    const/4 v11, 0x0

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_18

    :cond_61
    const/4 v11, 0x0

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_18

    :cond_62
    const/4 v11, 0x0

    const-string v6, "auto"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/high16 v5, 0x7fc00000    # Float.NaN

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_18

    :cond_63
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    :cond_64
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_65
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    const/4 v11, 0x0

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_67

    new-instance v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$GradientElement;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    move v6, v11

    :goto_19
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_66

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_7

    goto :goto_1a

    :pswitch_26
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1a

    :pswitch_27
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1a

    :pswitch_28
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1a

    :pswitch_29
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_66
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_67
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2a
    const/4 v11, 0x0

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_69

    new-instance v3, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v6, v11

    :goto_1b
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v6, v1, :cond_68

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_8

    goto :goto_1c

    :pswitch_2b
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1c

    :pswitch_2c
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1c

    :pswitch_2d
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1c

    :pswitch_2e
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_68
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto/16 :goto_28

    :cond_69
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2f
    const/4 v11, 0x0

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_72

    new-instance v1, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v6, v11

    :goto_1d
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_71

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_6e

    if-eq v4, v12, :cond_6c

    const/16 v7, 0x30

    if-eq v4, v7, :cond_6b

    packed-switch v4, :pswitch_data_9

    goto :goto_1e

    :pswitch_30
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1e

    :pswitch_31
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1e

    :pswitch_32
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_1e

    :cond_6a
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v10}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    invoke-static {v1, v3}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_1e

    :cond_6c
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    :cond_6d
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    goto :goto_1e

    :cond_6e
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_70

    :cond_6f
    :goto_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_70
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v9}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_72
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_33
    const/4 v11, 0x0

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_7a

    new-instance v3, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v6, v11

    :goto_1f
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v6, v1, :cond_79

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_78

    const/4 v5, 0x7

    if-eq v4, v5, :cond_77

    if-eq v4, v7, :cond_75

    const/16 v5, 0x39

    if-eq v4, v5, :cond_73

    goto :goto_20

    :cond_73
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_74

    goto :goto_20

    :cond_74
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    const/16 v5, 0x39

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_76

    goto :goto_20

    :cond_76
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    const/16 v5, 0x39

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_20

    :cond_78
    const/16 v5, 0x39

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :goto_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_79
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto/16 :goto_28

    :cond_7a
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_34
    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    goto/16 :goto_28

    :pswitch_35
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_7b

    new-instance v1, Lcom/caverock/androidsvg/SVG$Defs;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_7b
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_36
    const/4 v11, 0x0

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_80

    new-instance v1, Lcom/caverock/androidsvg/SVG$ClipPath;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v6, v11

    :goto_21
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_7f

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7c

    goto :goto_22

    :cond_7c
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_22

    :cond_7d
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    :goto_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_7e
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid value for attribute clipPathUnits"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_80
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_37
    const/4 v11, 0x0

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_86

    new-instance v3, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v6, v11

    :goto_23
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v6, v1, :cond_85

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_84

    const/4 v7, 0x7

    if-eq v4, v7, :cond_83

    const/16 v8, 0x31

    if-eq v4, v8, :cond_81

    goto :goto_24

    :cond_81
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_82

    goto :goto_24

    :cond_82
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <circle> element. r cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    const/16 v8, 0x31

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_24

    :cond_84
    const/4 v7, 0x7

    const/16 v8, 0x31

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :goto_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_85
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto/16 :goto_28

    :cond_86
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_38
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_87

    new-instance v1, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto/16 :goto_28

    :cond_87
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    invoke-direct {v0, v6}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_39
    const/4 v11, 0x0

    new-instance v1, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    move v6, v11

    :goto_25
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_8c

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_89

    const/16 v5, 0x4f

    if-eq v4, v5, :cond_8a

    packed-switch v4, :pswitch_data_a

    goto :goto_26

    :pswitch_3a
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_26

    :pswitch_3b
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_26

    :pswitch_3c
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_88

    goto :goto_26

    :cond_88
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <svg> element. width cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_8b

    :cond_8a
    :goto_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_8b
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v1, "Invalid <svg> element. height cannot be negative"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v2, :cond_8d

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    goto :goto_27

    :cond_8d
    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    :goto_27
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    :goto_28
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_38
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_1c
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_34
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x51
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x51
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x51
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x20
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x54
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x54
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x51
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x51
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch
.end method

.method public final text(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    :cond_3
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->appendToTextContainer(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final text([CII)V
    .locals 1

    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    :cond_3
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->appendToTextContainer(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
