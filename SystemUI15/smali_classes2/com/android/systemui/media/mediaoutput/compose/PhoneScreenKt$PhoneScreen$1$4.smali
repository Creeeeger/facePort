.class final Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$4;
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


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$4;->$changeScreen:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$4;->$changeScreen:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x30

    const/4 v5, 0x4

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt;->SettingButton(Lkotlin/jvm/functions/Function1;ZLcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$4;->$changeScreen:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x6000

    const/16 v7, 0xe

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt;->ActionButton(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
