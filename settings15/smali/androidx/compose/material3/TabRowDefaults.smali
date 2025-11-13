.class public final Landroidx/compose/material3/TabRowDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/TabRowDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/TabRowDefaults;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/material3/TabRowDefaults;->INSTANCE:Landroidx/compose/material3/TabRowDefaults;

    return-void
.end method


# virtual methods
.method public final SecondaryIndicator-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 11

    move/from16 v6, p6

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v2, p5

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x594d9a64

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p7, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v4, v6, 0x6

    move v5, v4

    move-object v4, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v6, 0x6

    if-nez v4, :cond_2

    move-object v4, p1

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    or-int/2addr v5, v6

    goto :goto_1

    :cond_2
    move-object v4, p1

    move v5, v6

    :goto_1
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v5, v5, 0x30

    :cond_3
    move v7, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v6, 0x30

    if-nez v7, :cond_3

    move v7, p2

    invoke-virtual {v2, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v5, v8

    :goto_3
    and-int/lit16 v8, v6, 0x180

    if-nez v8, :cond_8

    and-int/lit8 v8, p7, 0x4

    if-nez v8, :cond_6

    move-wide v8, p3

    invoke-virtual {v2, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_6
    move-wide v8, p3

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v5, v10

    goto :goto_5

    :cond_8
    move-wide v8, p3

    :goto_5
    and-int/lit16 v5, v5, 0x93

    const/16 v10, 0x92

    if-ne v5, v10, :cond_a

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v4

    :goto_6
    move-wide v4, v8

    goto :goto_c

    :cond_a
    :goto_7
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_c

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v4

    move v0, v7

    goto :goto_b

    :cond_c
    :goto_8
    if-eqz v3, :cond_d

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_9

    :cond_d
    move-object v3, v4

    :goto_9
    if-eqz v0, :cond_e

    sget v0, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->ActiveIndicatorHeight:F

    goto :goto_a

    :cond_e
    move v0, v7

    :goto_a
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_f

    sget v1, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->ActiveIndicatorHeight:F

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v4

    move-wide v8, v4

    :cond_f
    :goto_b
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v8, v9, v4}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    move v7, v0

    goto :goto_6

    :goto_c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_10

    new-instance v9, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v3

    move v3, v7

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/TabRowDefaults$SecondaryIndicator$1;-><init>(Landroidx/compose/material3/TabRowDefaults;Landroidx/compose/ui/Modifier;FJII)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method
