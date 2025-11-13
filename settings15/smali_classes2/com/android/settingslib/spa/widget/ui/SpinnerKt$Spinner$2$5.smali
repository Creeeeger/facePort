.class final Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/spa/widget/ui/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $setId:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/PaddingValuesImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;->$options:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;->$setId:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "$this$DropdownMenu"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v3, 0x51

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;->$options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;

    new-instance v4, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5$1;

    invoke-direct {v4, v3}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5$1;-><init>(Lcom/android/settingslib/spa/widget/ui/SpinnerOption;)V

    const v5, 0xd02fa07

    invoke-static {v5, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    move-object v15, v2

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x79ac273e

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, v0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;->$setId:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;->$setId:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_2

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v4, :cond_3

    :cond_2
    new-instance v8, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5$2$1;

    invoke-direct {v8, v5, v3, v7}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/settingslib/spa/widget/ui/SpinnerOption;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    move-object v7, v8

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v13, v0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const v16, 0xc00006

    const/16 v17, 0x17c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v6 .. v17}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_4
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
