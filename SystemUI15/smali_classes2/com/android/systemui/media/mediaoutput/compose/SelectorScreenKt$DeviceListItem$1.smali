.class final Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$DeviceListItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $device:Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$DeviceListItem$1;->$onClick:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$DeviceListItem$1;->$device:Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$DeviceListItem$1;->$onClick:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$DeviceListItem$1;->$device:Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
