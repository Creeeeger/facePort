.class public final Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$onDesiredLocationChanged$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $desiredLocation:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$onDesiredLocationChanged$1$1$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$onDesiredLocationChanged$1$1$1;->$desiredLocation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$onDesiredLocationChanged$1$1$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$onDesiredLocationChanged$1$1$1;->$desiredLocation:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    sget-object p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_COMMUNAL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown media carousel location "

    invoke-static {p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_DREAM:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_LOCKSCREEN:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_QQS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_QS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
