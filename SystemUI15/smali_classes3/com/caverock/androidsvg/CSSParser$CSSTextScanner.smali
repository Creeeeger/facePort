.class public final Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(?s)/\\*.*?\\*/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static hexChar(I)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final nextCSSString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    if-eq v2, v0, :cond_8

    const/16 v5, 0x5c

    if-ne v2, v5, :cond_7

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0xa

    if-eq v2, v5, :cond_6

    const/16 v5, 0xd

    if-eq v2, v5, :cond_6

    const/16 v5, 0xc

    if-ne v2, v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v5

    if-eq v5, v4, :cond_7

    move v6, v3

    :goto_1
    const/4 v7, 0x5

    if-gt v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v7

    if-ne v7, v4, :cond_4

    goto :goto_2

    :cond_4
    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    int-to-char v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_7
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final nextIdentifier()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_3

    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    :cond_1
    const/16 v4, 0x5f

    const/16 v5, 0x7a

    const/16 v6, 0x61

    const/16 v7, 0x5a

    const/16 v8, 0x41

    if-lt v2, v8, :cond_2

    if-le v2, v7, :cond_4

    :cond_2
    if-lt v2, v6, :cond_3

    if-le v2, v5, :cond_4

    :cond_3
    if-ne v2, v4, :cond_a

    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    :goto_0
    if-lt v2, v8, :cond_5

    if-le v2, v7, :cond_9

    :cond_5
    if-lt v2, v6, :cond_6

    if-le v2, v5, :cond_9

    :cond_6
    const/16 v9, 0x30

    if-lt v2, v9, :cond_7

    const/16 v9, 0x39

    if-le v2, v9, :cond_9

    :cond_7
    if-eq v2, v3, :cond_9

    if-ne v2, v4, :cond_8

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    :cond_a
    move v2, v0

    :goto_2
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v0, v2

    :goto_3
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-ne v0, v2, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    return-object v1
.end method

.method public final nextSelectorGroup()Ljava/util/List;
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v4, v2}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>(Lcom/caverock/androidsvg/CSSParser$1;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_24

    :cond_1
    iget v5, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v6, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v3

    :goto_2
    const/16 v8, 0x2b

    if-nez v6, :cond_5

    const/16 v6, 0x3e

    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_3

    :cond_5
    move-object v6, v2

    :goto_3
    const/16 v9, 0x2a

    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v9, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    new-instance v10, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v10, v6, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    iget v9, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    add-int/2addr v9, v3

    iput v9, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    move-object v9, v10

    goto :goto_4

    :cond_7
    move-object v9, v2

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v10

    if-nez v10, :cond_46

    const/16 v10, 0x2e

    invoke-virtual {v0, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_a

    if-nez v9, :cond_8

    new-instance v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v9, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v11, "class"

    sget-object v12, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v9, v11, v12, v10}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid \".class\" simpleSelectors"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/16 v10, 0x23

    invoke-virtual {v0, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_d

    if-nez v9, :cond_b

    new-instance v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v9, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    const-string v11, "id"

    sget-object v12, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v9, v11, v12, v10}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    iget v10, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    const v11, 0xf4240

    add-int/2addr v10, v11

    iput v10, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    goto :goto_4

    :cond_c
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid \"#id\" simpleSelectors"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/16 v10, 0x5b

    invoke-virtual {v0, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_19

    if-nez v9, :cond_e

    new-instance v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v9, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Invalid attribute simpleSelectors"

    if-eqz v10, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v12, 0x3d

    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-eqz v12, :cond_f

    sget-object v12, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_5

    :cond_f
    const-string/jumbo v12, "~="

    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    sget-object v12, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_5

    :cond_10
    const-string/jumbo v12, "|="

    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    sget-object v12, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_5

    :cond_11
    move-object v12, v2

    :goto_5
    if-eqz v12, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v13

    if-eqz v13, :cond_12

    move-object v13, v2

    goto :goto_6

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_13

    goto :goto_6

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v13

    :goto_6
    if-eqz v13, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_7

    :cond_14
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v0, v11}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v13, v2

    :goto_7
    const/16 v14, 0x5d

    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v14

    if-eqz v14, :cond_17

    if-nez v12, :cond_16

    sget-object v12, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    :cond_16
    invoke-virtual {v9, v10, v12, v13}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_4

    :cond_17
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v0, v11}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v0, v11}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v10

    if-eqz v10, :cond_46

    if-nez v9, :cond_1a

    new-instance v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v9, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_45

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->cache:Ljava/util/Map;

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eqz v11, :cond_1b

    goto :goto_8

    :cond_1b
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->UNSUPPORTED:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    :goto_8
    sget-object v12, Lcom/caverock/androidsvg/CSSParser$1;->$SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const-string v13, "Invalid or missing parameter section for pseudo class: "

    const/16 v14, 0x29

    const/16 v15, 0x28

    packed-switch v12, :pswitch_data_0

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Unsupported pseudo class: "

    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    invoke-direct {v11, v10}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_23

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v11

    if-eqz v11, :cond_1c

    goto :goto_9

    :cond_1c
    iget v11, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-nez v12, :cond_1d

    goto :goto_9

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    move-object v12, v2

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1f

    iput v11, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_9

    :cond_1f
    if-nez v12, :cond_20

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_20
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v13

    if-nez v13, :cond_1e

    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-eqz v12, :cond_21

    goto :goto_9

    :cond_21
    iput v11, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :goto_9
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    invoke-direct {v11, v10}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_23

    :pswitch_2
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;

    invoke-direct {v11, v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;-><init>(Lcom/caverock/androidsvg/CSSParser$1;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_23

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v11

    if-eqz v11, :cond_22

    :goto_a
    move-object v12, v2

    goto/16 :goto_e

    :cond_22
    iget v11, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v12

    if-nez v12, :cond_23

    goto :goto_a

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSelectorGroup()Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_24

    iput v11, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_a

    :cond_24
    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v14

    if-nez v14, :cond_25

    iput v11, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_a

    :cond_25
    move-object v11, v12

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/caverock/androidsvg/CSSParser$Selector;

    iget-object v14, v14, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-nez v14, :cond_26

    goto :goto_e

    :cond_26
    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_27
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    iget-object v15, v15, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-nez v15, :cond_28

    goto :goto_d

    :cond_28
    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_27

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$PseudoClass;

    instance-of v2, v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    if-eqz v2, :cond_29

    const/4 v12, 0x0

    goto :goto_e

    :cond_29
    const/4 v2, 0x0

    goto :goto_c

    :cond_2a
    :goto_d
    const/4 v2, 0x0

    goto :goto_b

    :cond_2b
    :goto_e
    if-eqz v12, :cond_2e

    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    invoke-direct {v11, v12}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;-><init>(Ljava/util/List;)V

    iget-object v2, v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;->selectorGroup:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v10, -0x80000000

    :cond_2c
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/caverock/androidsvg/CSSParser$Selector;

    iget v12, v12, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    if-le v12, v10, :cond_2c

    move v10, v12

    goto :goto_f

    :cond_2d
    iput v10, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    goto/16 :goto_23

    :cond_2e
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v11, v2, :cond_30

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v11, v2, :cond_2f

    goto :goto_10

    :cond_2f
    move/from16 v20, v7

    goto :goto_11

    :cond_30
    :goto_10
    move/from16 v20, v3

    :goto_11
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v11, v2, :cond_32

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v11, v2, :cond_31

    goto :goto_12

    :cond_31
    move/from16 v21, v7

    goto :goto_13

    :cond_32
    :goto_12
    move/from16 v21, v3

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_33

    :goto_14
    move-object/from16 v25, v9

    :goto_15
    const/4 v11, 0x0

    goto/16 :goto_20

    :cond_33
    iget v2, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v11

    if-nez v11, :cond_34

    goto :goto_14

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const-string v11, "odd"

    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_35

    new-instance v11, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    invoke-direct {v11, v12, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    :goto_16
    move-object/from16 v25, v9

    goto/16 :goto_1f

    :cond_35
    const-string v11, "even"

    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_36

    new-instance v11, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    invoke-direct {v11, v12, v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    goto :goto_16

    :cond_36
    invoke-virtual {v0, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v11

    const/16 v15, 0x2d

    if-eqz v11, :cond_37

    goto :goto_17

    :cond_37
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v11

    if-eqz v11, :cond_38

    const/4 v11, -0x1

    goto :goto_18

    :cond_38
    :goto_17
    move v11, v3

    :goto_18
    iget v12, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v7, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-static {v12, v3, v7}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(IILjava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v12

    if-eqz v12, :cond_39

    iget v14, v12, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    iput v14, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :cond_39
    const/16 v14, 0x6e

    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v14

    if-nez v14, :cond_3b

    const/16 v14, 0x4e

    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v14

    if-eqz v14, :cond_3a

    goto :goto_19

    :cond_3a
    move-object/from16 v25, v9

    move/from16 v16, v11

    move-object v3, v12

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_1c

    :cond_3b
    :goto_19
    if-eqz v12, :cond_3c

    move-object/from16 v25, v9

    goto :goto_1a

    :cond_3c
    new-instance v12, Lcom/caverock/androidsvg/IntegerParser;

    move-object/from16 v25, v9

    const-wide/16 v8, 0x1

    iget v14, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-direct {v12, v8, v9, v14}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v8, 0x2b

    invoke-virtual {v0, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_3d

    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_3d

    const/16 v16, -0x1

    goto :goto_1b

    :cond_3d
    const/16 v16, 0x1

    :goto_1b
    if-eqz v9, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    iget v9, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-static {v9, v3, v7}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(IILjava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v3

    if-eqz v3, :cond_3e

    iget v7, v3, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    iput v7, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_1c

    :cond_3e
    iput v2, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto/16 :goto_15

    :cond_3f
    const/4 v3, 0x0

    :goto_1c
    new-instance v7, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    if-nez v12, :cond_40

    const/4 v11, 0x0

    goto :goto_1d

    :cond_40
    iget-wide v14, v12, Lcom/caverock/androidsvg/IntegerParser;->value:J

    long-to-int v9, v14

    mul-int/2addr v11, v9

    :goto_1d
    if-nez v3, :cond_41

    const/4 v3, 0x0

    goto :goto_1e

    :cond_41
    iget-wide v14, v3, Lcom/caverock/androidsvg/IntegerParser;->value:J

    long-to-int v3, v14

    mul-int v16, v16, v3

    move/from16 v3, v16

    :goto_1e
    invoke-direct {v7, v11, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    move-object v11, v7

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_20

    :cond_42
    iput v2, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto/16 :goto_15

    :goto_20
    if-eqz v11, :cond_43

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    iget v3, v11, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;->a:I

    iget v7, v11, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;->b:I

    move-object/from16 v9, v25

    iget-object v10, v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v7

    move-object/from16 v22, v10

    invoke-direct/range {v17 .. v22}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    move-object v11, v2

    :goto_21
    const/4 v3, 0x1

    :goto_22
    const/4 v7, 0x0

    goto/16 :goto_23

    :cond_43
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;-><init>(Lcom/caverock/androidsvg/CSSParser$1;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_21

    :pswitch_6
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;

    invoke-direct {v11, v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;-><init>(Lcom/caverock/androidsvg/CSSParser$1;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_21

    :pswitch_7
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    iget-object v2, v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v11, v3, v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_22

    :pswitch_8
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    iget-object v2, v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x1

    move-object/from16 v17, v11

    move-object/from16 v22, v2

    invoke-direct/range {v17 .. v22}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_22

    :pswitch_9
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    iget-object v2, v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v25, 0x0

    const/16 v28, 0x1

    move-object/from16 v24, v11

    move-object/from16 v29, v2

    invoke-direct/range {v24 .. v29}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_22

    :pswitch_a
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-direct {v11, v7, v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_23

    :pswitch_b
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v22}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_23

    :pswitch_c
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v11

    invoke-direct/range {v23 .. v28}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    :goto_23
    iget-object v2, v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-nez v2, :cond_44

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    :cond_44
    iget-object v2, v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_45
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid pseudo class"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    if-eqz v9, :cond_49

    iget-object v2, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-nez v2, :cond_47

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    :cond_47
    iget-object v2, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v2

    if-nez v2, :cond_48

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_48
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>(Lcom/caverock/androidsvg/CSSParser$1;)V

    goto/16 :goto_0

    :cond_49
    iput v5, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :cond_4a
    :goto_24
    iget-object v0, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-eqz v0, :cond_4c

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_25

    :cond_4b
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    :goto_25
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
