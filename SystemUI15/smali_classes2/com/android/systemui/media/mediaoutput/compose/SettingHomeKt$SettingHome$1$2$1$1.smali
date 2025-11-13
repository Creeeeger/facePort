.class final Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;
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


# instance fields
.field final synthetic $screen:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $supportCastSetting:Z

.field final synthetic $supportMusicShare:Z

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;",
            "Lkotlin/jvm/functions/Function1;",
            "Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$supportCastSetting:Z

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$screen:Lkotlin/jvm/functions/Function1;

    iput-boolean p4, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$supportMusicShare:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x51

    const/16 p3, 0x10

    if-ne p1, p3, :cond_1

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p2, 0x65ec02c2

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$supportCastSetting:Z

    const/4 v7, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    iget-object p2, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->isCastingPriority:Landroidx/lifecycle/CoroutineLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, v0, p1}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    const v0, 0x65ec0394

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$screen:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$screen:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_2

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v0, :cond_3

    :cond_2
    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1$1$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    move-object v0, v2

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, 0x7f13035e

    invoke-static {v1, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f130366

    goto :goto_1

    :cond_4
    const p2, 0x7f1301c8

    :goto_1
    invoke-static {p2, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecListItem(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    :cond_5
    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const p2, 0x65ec055a

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$supportCastSetting:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$supportMusicShare:Z

    if-eqz p2, :cond_6

    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    int-to-float p3, p3

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 p2, 0x1

    int-to-float v1, p2

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->dividerColor(Landroidx/compose/runtime/Composer;)J

    move-result-wide v2

    const/16 v5, 0x36

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/DividerKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    :cond_6
    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$supportMusicShare:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    iget-object p2, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->isShowMusicShareEnabled:Landroidx/lifecycle/CoroutineLiveData;

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1$2;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1$1$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;)V

    const p0, 0x7f13124a

    invoke-static {p0, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    const p0, 0x7f13124b

    invoke-static {p0, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecSwitchListItem(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/compose/runtime/Composer;II)V

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
