.class public final Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$inflateSettingsButton$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$inflateSettingsButton$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$inflateSettingsButton$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object p1, p1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_SETTINGS_CAROUSEL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$inflateSettingsButton$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerKt;->settingsIntent:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method
