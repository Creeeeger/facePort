.class final Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/ui/graphics/painter/Painter;

    check-cast p2, Lcom/android/systemui/monet/ColorScheme;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v5, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->update$default(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;Lkotlin/Pair;Lkotlin/Pair;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
