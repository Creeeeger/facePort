.class final Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ContainerBox$1$animateContentRect$2;
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
.field final synthetic $mediaOutputState:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ContainerBox$1$animateContentRect$2;->$mediaOutputState:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/unit/DpRect;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt$ContainerBox$1$animateContentRect$2;->$mediaOutputState:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;->Shown:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->setState(Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
