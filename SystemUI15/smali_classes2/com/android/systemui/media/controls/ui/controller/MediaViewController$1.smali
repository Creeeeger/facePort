.class final Lcom/android/systemui/media/controls/ui/controller/MediaViewController$1;
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
.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iput p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentWidth:I

    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentHeight:I

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
