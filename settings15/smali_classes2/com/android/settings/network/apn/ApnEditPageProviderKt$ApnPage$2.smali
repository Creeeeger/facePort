.class final Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $apnData$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $apnProtocolOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $apnTypeMmsSelected$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $authTypeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $valid:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$valid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$authTypeOptions:Ljava/util/List;

    iput-object p5, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$apnProtocolOptions:Ljava/util/List;

    iput-object p6, p0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$apnTypeMmsSelected$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xb

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_7

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$valid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$context:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$apnData$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$authTypeOptions:Ljava/util/List;

    iget-object v14, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$apnProtocolOptions:Ljava/util/List;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;->$apnTypeMmsSelected$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v12, 0x0

    invoke-static {v5, v6, v2, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    invoke-static {v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v6

    move-object v11, v2

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v2, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v9, v11, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    const/16 v25, 0x0

    if-eqz v9, :cond_29

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v11, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_2

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v11, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_3

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-static {v6, v11, v6, v5}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_4
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v4, -0x37406fc2

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/network/apn/ApnData;

    iget-boolean v4, v4, Lcom/android/settings/network/apn/ApnData;->validEnabled:Z

    if-eqz v4, :cond_6

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/network/apn/ApnData;

    invoke-static {v4, v3}, Lcom/android/settings/network/apn/ApnStatusKt;->validateApnData(Lcom/android/settings/network/apn/ApnData;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v9, :cond_5

    move-object/from16 v31, v0

    move-object/from16 p1, v2

    move-object/from16 v32, v3

    move-object/from16 v28, v11

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move-object/from16 p0, v15

    goto :goto_2

    :cond_5
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    sget-object v4, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->menuFieldPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/ColorScheme;

    iget-wide v7, v4, Landroidx/compose/material3/ColorScheme;->primary:J

    const/16 v23, 0x0

    const v24, 0x1fff8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-wide/from16 v26, v7

    move-object v7, v10

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v21, v9

    move-wide/from16 v9, v16

    const/16 v16, 0x0

    move-object/from16 v28, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-wide/16 v16, 0x0

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move-wide/from16 v13, v16

    const/16 v16, 0x0

    move-object/from16 p0, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 p1, v2

    move-object/from16 v32, v3

    move-wide/from16 v2, v26

    move-object/from16 v21, p1

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    :goto_2
    move-object/from16 v13, v28

    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v31, v0

    move-object/from16 p1, v2

    move-object/from16 v32, v3

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move-object/from16 p0, v15

    move-object v13, v11

    :goto_3
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnData;->name:Ljava/lang/String;

    const v1, 0x7f14034a

    move-object/from16 v14, p1

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v4

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    iget-boolean v2, v2, Lcom/android/settings/network/apn/ApnData;->validEnabled:Z

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/network/apn/ApnData;

    iget-object v5, v5, Lcom/android/settings/network/apn/ApnData;->name:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    move-object/from16 v15, v32

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, ""

    if-eqz v2, :cond_7

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140e63

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object/from16 v2, v25

    :goto_4
    const v3, -0x37406cbe

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v10, p0

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_8

    if-ne v5, v9, :cond_9

    :cond_8
    new-instance v5, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$2$1;

    invoke-direct {v5, v10}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v16, 0x0

    const/16 v17, 0xe8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v12, v9

    move-object v9, v14

    move-object/from16 p0, v10

    move/from16 v10, v16

    move-object/from16 v16, v12

    move-object v12, v11

    move/from16 v11, v17

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;->SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnData;->apn:Ljava/lang/String;

    const v1, 0x7f140340

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "apn"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v4

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    iget-boolean v2, v2, Lcom/android/settings/network/apn/ApnData;->validEnabled:Z

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/network/apn/ApnData;

    iget-object v5, v5, Lcom/android/settings/network/apn/ApnData;->apn:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140e59

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_a
    move-object/from16 v2, v25

    :goto_5
    const v3, -0x37406b63

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v12, p0

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v11, v16

    if-nez v3, :cond_b

    if-ne v5, v11, :cond_c

    :cond_b
    new-instance v5, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$3$1;

    invoke-direct {v5, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x0

    const/16 v16, 0xe8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v14

    move-object/from16 v32, v15

    move-object v15, v11

    move/from16 v11, v16

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;->SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnData;->proxy:Ljava/lang/String;

    const v1, 0x7f140344

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "proxy"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v4

    const v2, -0x37406a55

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_d

    if-ne v3, v15, :cond_e

    :cond_d
    new-instance v3, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$4$1;

    invoke-direct {v3, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x0

    const/16 v11, 0xec

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v14

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;->SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnData;->port:Ljava/lang/String;

    const v1, 0x7f140343

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "port"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v4

    const v2, -0x37406948    # -392373.75f

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_f

    if-ne v3, v15, :cond_10

    :cond_f
    new-instance v3, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$5$1;

    invoke-direct {v3, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$5$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_10
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x0

    const/16 v11, 0xec

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v14

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;->SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnData;->userName:Ljava/lang/String;

    const v1, 0x7f140356

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "user"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v4

    const v2, -0x3740683d

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_11

    if-ne v3, v15, :cond_12

    :cond_11
    new-instance v3, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$6$1;

    invoke-direct {v3, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$6$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x0

    const/16 v11, 0xec

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v14

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;->SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnData;->passWord:Ljava/lang/String;

    const v1, 0x7f14034d

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "password"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v2

    const v3, -0x37406726

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_13

    if-ne v4, v15, :cond_14

    :cond_13
    new-instance v4, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$7$1;

    invoke-direct {v4, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$7$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v14

    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt;->SettingsTextFieldPassword(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnData;->server:Ljava/lang/String;

    const v1, 0x7f140352

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "server"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v4

    const v2, -0x37406615

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_15

    if-ne v3, v15, :cond_16

    :cond_15
    new-instance v3, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$8$1;

    invoke-direct {v3, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$8$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x0

    const/16 v11, 0xec

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v14

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;->SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    const v1, -0x3740658d

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_17

    if-ne v2, v15, :cond_18

    :cond_17
    new-instance v2, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$9$1;

    invoke-direct {v2, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$9$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, -0x3740653c

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_19

    new-instance v1, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$10$1;

    move-object/from16 v3, v31

    invoke-direct {v1, v3}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$10$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_6

    :cond_19
    move-object/from16 v3, v31

    :goto_6
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v4, 0x188

    invoke-static {v0, v2, v1, v14, v4}, Lcom/android/settings/network/apn/ApnTypeCheckBoxKt;->ApnTypeCheckBox(Lcom/android/settings/network/apn/ApnData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const v0, -0x37406505

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnData;->mmsc:Ljava/lang/String;

    const v1, 0x7f140348

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    iget-boolean v2, v2, Lcom/android/settings/network/apn/ApnData;->validEnabled:Z

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/apn/ApnData;

    iget-object v3, v3, Lcom/android/settings/network/apn/ApnData;->mmsc:Ljava/lang/String;

    move-object/from16 v4, v32

    invoke-static {v4, v3, v2}, Lcom/android/settings/network/apn/ApnStatusKt;->validateMMSC(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/apn/ApnData;

    const-string v4, "mmsc"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v4

    const v3, -0x37406398

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_1a

    if-ne v5, v15, :cond_1b

    :cond_1a
    new-instance v5, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$11$1;

    invoke-direct {v5, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$11$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1b
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x0

    const/16 v11, 0xe8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v14

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;->SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnData;->mmsProxy:Ljava/lang/String;

    const v1, 0x7f140347

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "mmsproxy"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v4

    const v2, -0x37406270    # -392428.5f

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1c

    if-ne v3, v15, :cond_1d

    :cond_1c
    new-instance v3, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$12$1;

    invoke-direct {v3, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$12$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x0

    const/16 v11, 0xec

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v14

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;->SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnData;->mmsPort:Ljava/lang/String;

    const v1, 0x7f140346

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "mmsport"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v4

    const v2, -0x37406147

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1e

    if-ne v3, v15, :cond_1f

    :cond_1e
    new-instance v3, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$13$1;

    invoke-direct {v3, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$13$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1f
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x0

    const/16 v11, 0xec

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v14

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;->SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    :cond_20
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, 0x7f140341

    invoke-static {v14, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    iget v2, v1, Lcom/android/settings/network/apn/ApnData;->authType:I

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "authtype"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v3

    const v1, -0x37405fee

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_21

    if-ne v4, v15, :cond_22

    :cond_21
    new-instance v4, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$14$1;

    invoke-direct {v4, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$14$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_22
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v6, 0x40

    const/4 v7, 0x0

    move-object/from16 v1, v29

    move-object v5, v14

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt;->SettingsDropdownBox(Ljava/lang/String;Ljava/util/List;IZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const v0, 0x7f14034e

    invoke-static {v14, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    iget v2, v1, Lcom/android/settings/network/apn/ApnData;->apnProtocol:I

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "protocol"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v3

    const v1, -0x37405e9e

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_23

    if-ne v4, v15, :cond_24

    :cond_23
    new-instance v4, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$15$1;

    invoke-direct {v4, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$15$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_24
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v6, 0x40

    const/4 v7, 0x0

    move-object/from16 v1, v30

    move-object v5, v14

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt;->SettingsDropdownBox(Ljava/lang/String;Ljava/util/List;IZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const v0, 0x7f140351

    invoke-static {v14, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    iget v2, v1, Lcom/android/settings/network/apn/ApnData;->apnRoaming:I

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/apn/ApnData;

    const-string v3, "roaming_protocol"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v3

    const v1, -0x37405d3c

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_25

    if-ne v4, v15, :cond_26

    :cond_25
    new-instance v4, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$16$1;

    invoke-direct {v4, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$16$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_26
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v6, 0x40

    const/4 v7, 0x0

    move-object/from16 v1, v30

    move-object v5, v14

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt;->SettingsDropdownBox(Ljava/lang/String;Ljava/util/List;IZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/apn/ApnData;

    const v1, -0x37405ce4

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_27

    if-ne v2, v15, :cond_28

    :cond_27
    new-instance v2, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$17$1;

    invoke-direct {v2, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$17$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_28
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v3, 0x8

    invoke-static {v0, v2, v14, v3}, Lcom/android/settings/network/apn/ApnNetworkTypeCheckBoxKt;->ApnNetworkTypeCheckBox(Lcom/android/settings/network/apn/ApnData;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    new-instance v0, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$18;

    invoke-direct {v0, v14, v12}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2$1$18;-><init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;)V

    invoke-static {v0, v14, v1}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceKt;->SwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_29
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v25
.end method
