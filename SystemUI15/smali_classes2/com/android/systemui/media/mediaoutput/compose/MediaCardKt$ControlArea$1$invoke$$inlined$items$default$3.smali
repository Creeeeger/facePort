.class public final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$3;
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
.field final synthetic $contentType:Lkotlin/jvm/functions/Function1;

.field final synthetic $items:Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$3;->$contentType:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$3;->$items:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$3;->$contentType:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$3;->$items:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
