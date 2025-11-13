.class public final Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$7;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHostStateChanged(ILcom/android/systemui/media/controls/ui/view/MediaHostState;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$7;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updateUserVisibility:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredLocation:I

    if-ne p1, v1, :cond_1

    const/4 v3, 0x0

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/controls/ui/view/MediaHostState;ZJJ)Lkotlin/Unit;

    :cond_1
    return-void
.end method
