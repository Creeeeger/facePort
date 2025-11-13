.class public final Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isExtendedFidelity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isExtendedFidelity:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isExtendedFidelity:Z

    return-void
.end method

.method public static isMonochrome(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->variant:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    sget-object v0, Lcom/google/ux/material/libmonet/dynamiccolor/Variant;->MONOCHROME:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static surfaceContainerLow()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 10

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v0, 0x11

    invoke-direct {v2, v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v0, 0x12

    invoke-direct {v3, v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v1, "surface_container_low"

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method


# virtual methods
.method public final error()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x8

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string v1, "error"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final errorContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/16 v1, 0x8

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/16 v1, 0x9

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/16 v1, 0x9

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string v1, "error_container"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final isFidelity(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)Z
    .locals 2

    iget-boolean p0, p0, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;->isExtendedFidelity:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->variant:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    sget-object v1, Lcom/google/ux/material/libmonet/dynamiccolor/Variant;->MONOCHROME:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/google/ux/material/libmonet/dynamiccolor/Variant;->NEUTRAL:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;->variant:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    sget-object p1, Lcom/google/ux/material/libmonet/dynamiccolor/Variant;->FIDELITY:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/google/ux/material/libmonet/dynamiccolor/Variant;->CONTENT:Lcom/google/ux/material/libmonet/dynamiccolor/Variant;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public final outlineVariant()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/4 v0, 0x6

    invoke-direct {v3, v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v0, 0x16

    move-object/from16 v1, p0

    invoke-direct {v5, v1, v0}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    const-string v1, "outline_variant"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final primary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/16 v1, 0xc

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/16 v1, 0xd

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/16 v1, 0xb

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "primary"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final primaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x1b

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0xd

    invoke-direct {v3, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0xe

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "primary_container"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final primaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v1, 0x9

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v1, 0xa

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x1d

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "primary_fixed"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final primaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/4 v1, 0x6

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "primary_fixed_dim"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final secondary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v1, 0x15

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v1, 0x17

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/4 v1, 0x3

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "secondary"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final secondaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/16 v1, 0x1d

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x19

    invoke-direct {v3, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x1a

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "secondary_container"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final secondaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/4 v1, 0x4

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "secondary_fixed"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final secondaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x11

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "secondary_fixed_dim"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final tertiary()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x11

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x12

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x9

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "tertiary"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final tertiaryContainer()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    const/16 v1, 0x15

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0xa

    invoke-direct {v3, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0xb

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "tertiary_container"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final tertiaryFixed()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/16 v1, 0xa

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;

    const/16 v1, 0xb

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/16 v1, 0xa

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "tertiary_fixed"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public final tertiaryFixedDim()Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v1, 0xb

    invoke-direct {v2, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    const/16 v1, 0xc

    invoke-direct {v3, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    new-instance v5, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    const/16 v1, 0x16

    invoke-direct {v5, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    new-instance v7, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x4012000000000000L    # 4.5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v8, v0, v1}, Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/ux/material/libmonet/dynamiccolor/MaterialDynamicColors;I)V

    const-string/jumbo v1, "tertiary_fixed_dim"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/ux/material/libmonet/dynamiccolor/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method
