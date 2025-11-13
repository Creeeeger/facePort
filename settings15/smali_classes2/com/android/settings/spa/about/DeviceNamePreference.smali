.class public final Lcom/android/settings/spa/about/DeviceNamePreference;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/about/DeviceNamePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/about/DeviceNamePreference;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/about/DeviceNamePreference;->INSTANCE:Lcom/android/settings/spa/about/DeviceNamePreference;

    return-void
.end method


# virtual methods
.method public final EntryItem(Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move/from16 v0, p2

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x1d83ab64

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, -0x482279c2

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_2

    new-instance v2, Lcom/android/settings/spa/about/DeviceNamePresenter;

    invoke-direct {v2, v1}, Lcom/android/settings/spa/about/DeviceNamePresenter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    move-object v8, v2

    check-cast v8, Lcom/android/settings/spa/about/DeviceNamePresenter;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, 0x7f141b4c

    invoke-static {v7, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    sget-object v12, Lcom/android/settings/spa/about/DeviceNamePreference;->INSTANCE:Lcom/android/settings/spa/about/DeviceNamePreference;

    const v2, -0x4822789a

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3

    new-instance v2, Lcom/android/settings/spa/about/DeviceNamePreference$EntryItem$dialogPresenter$1$1;

    const-class v13, Lcom/android/settings/spa/about/DeviceNamePreference;

    const-string v14, "confirmChange"

    const/4 v11, 0x0

    const-string v15, "confirmChange()V"

    const/16 v16, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    new-instance v3, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const/4 v10, 0x2

    invoke-direct {v3, v1, v2, v10}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    new-instance v2, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v1, 0x7f1408bf

    invoke-static {v7, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5, v4}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v1, 0x7f1418ed

    invoke-static {v7, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/android/settings/spa/about/DeviceNamePreference$EntryItem$dialogPresenter$2;

    invoke-direct {v1, v8}, Lcom/android/settings/spa/about/DeviceNamePreference$EntryItem$dialogPresenter$2;-><init>(Lcom/android/settings/spa/about/DeviceNamePresenter;)V

    const v5, 0x2f4927fe

    invoke-static {v5, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v1

    new-instance v2, Lcom/android/settings/spa/about/DeviceNamePreference$EntryItem$1;

    invoke-direct {v2, v7, v1, v8}, Lcom/android/settings/spa/about/DeviceNamePreference$EntryItem$1;-><init>(Landroidx/compose/runtime/Composer;Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;Lcom/android/settings/spa/about/DeviceNamePresenter;)V

    invoke-static {v2, v9, v7, v9, v10}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    :goto_1
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/android/settings/spa/about/DeviceNamePreference$EntryItem$2;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/android/settings/spa/about/DeviceNamePreference$EntryItem$2;-><init>(Lcom/android/settings/spa/about/DeviceNamePreference;I)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method
