.class final Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1;
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
.field final synthetic $changeScreen:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $deviceAudioPathViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;

.field final synthetic $mediaDeviceViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1;->$mediaDeviceViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1;->$deviceAudioPathViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x51

    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1$1;

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1;->$mediaDeviceViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1;->$deviceAudioPathViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;

    invoke-direct {p2, p3, v0}, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;)V

    const p3, -0x15f3042e

    invoke-static {p3, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/16 v6, 0x6006

    const/16 v7, 0xe

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt;->ContainerBox(ZLcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    const/16 v4, 0x30

    const/4 v5, 0x4

    const/4 v1, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt;->SettingButton(Lkotlin/jvm/functions/Function1;ZLcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    const/16 v6, 0x6000

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt;->ActionButton(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLandroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
