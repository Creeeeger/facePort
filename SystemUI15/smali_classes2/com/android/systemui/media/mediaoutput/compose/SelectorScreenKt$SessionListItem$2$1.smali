.class final Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$2$1;
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
.field final synthetic $it:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

.field final synthetic $sessionController:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;Lcom/android/systemui/media/mediaoutput/entity/MediaAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$2$1;->$sessionController:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$2$1;->$it:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$2$1;->$sessionController:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$2$1;->$it:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    iget-wide v1, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    sget-object p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->execute(JJ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
