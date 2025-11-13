.class final Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$update$4$2;
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
.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$update$4$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/graphics/painter/Painter;

    move-object v5, p2

    check-cast v5, Lcom/android/systemui/monet/ColorScheme;

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$update$4$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    const/4 v2, 0x0

    const/16 v6, 0x4f

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$update$4$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->update(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
