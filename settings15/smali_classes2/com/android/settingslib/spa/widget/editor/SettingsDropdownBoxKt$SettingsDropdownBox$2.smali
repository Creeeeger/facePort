.class final Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2;
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
        "Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxScope;",
        "invoke",
        "(Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $onSelectedOptionChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2;->$options:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2;->$onSelectedOptionChange:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxScope;

    move-object/from16 v14, p2

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "$this$DropdownTextBox"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0xe

    if-nez v3, :cond_1

    move-object v3, v14

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v2, v2, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    move-object v2, v14

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_1
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, v0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2;->$options:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    iget-object v0, v0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2;->$onSelectedOptionChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v16, v2, 0x1

    if-ltz v2, :cond_4

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2$1$1;

    invoke-direct {v4, v3}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2$1$1;-><init>(Ljava/lang/String;)V

    const v3, -0x34c3f3d0    # -1.2323888E7f

    invoke-static {v3, v4, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    new-instance v4, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2$1$2;

    invoke-direct {v4, v1, v0, v2}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2$1$2;-><init>(Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxScope;Lkotlin/jvm/functions/Function1;I)V

    sget-object v9, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->ItemContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/4 v12, 0x6

    const/16 v13, 0x17c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v11

    move-object v11, v14

    invoke-static/range {v2 .. v13}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    move/from16 v2, v16

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_5
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
