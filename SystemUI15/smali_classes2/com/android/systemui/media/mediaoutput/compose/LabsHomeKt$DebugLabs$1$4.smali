.class final Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$DebugLabs$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$DebugLabs$1$4;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$DebugLabs$1$4;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->setSupportDisplayDeviceVolumeControl(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
