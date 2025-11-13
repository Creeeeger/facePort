.class final Lcom/android/systemui/media/mediaoutput/compose/widget/ComposableSingletons$SnackbarScaffoldKt$lambda-1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/ComposableSingletons$SnackbarScaffoldKt$lambda-1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ComposableSingletons$SnackbarScaffoldKt$lambda-1$1;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/widget/ComposableSingletons$SnackbarScaffoldKt$lambda-1$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ComposableSingletons$SnackbarScaffoldKt$lambda-1$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/ComposableSingletons$SnackbarScaffoldKt$lambda-1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/material3/SnackbarData;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0xe

    if-nez v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x5b

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object v3, v0

    check-cast v3, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    iget-object v3, v3, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->visuals:Landroidx/compose/material3/SnackbarVisuals;

    instance-of v4, v3, Lcom/android/systemui/media/mediaoutput/compose/widget/DialogInterface;

    const/4 v14, 0x0

    if-eqz v4, :cond_4

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x32d13f65

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    check-cast v3, Lcom/android/systemui/media/mediaoutput/compose/widget/DialogInterface;

    shl-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v3, v0, v1, v2}, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogKt;->SnackbarDialog(Lcom/android/systemui/media/mediaoutput/compose/widget/DialogInterface;Landroidx/compose/material3/SnackbarData;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_4
    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x32d13fd8

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/16 v3, 0x16

    int-to-float v3, v3

    sget-object v4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    const-wide v4, 0xff47474aL

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    const-wide v6, 0xfffafaffL

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v6

    const-wide v8, 0xff578fffL

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v8

    const v10, 0x1b6180

    and-int/lit8 v2, v2, 0xe

    or-int v15, v2, v10

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    move-object/from16 p0, v1

    move-object v1, v2

    const/4 v2, 0x1

    const/16 v16, 0x182

    move-object/from16 v14, p0

    invoke-static/range {v0 .. v16}, Landroidx/compose/material3/SnackbarKt;->Snackbar-sDKtq54(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJLandroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
