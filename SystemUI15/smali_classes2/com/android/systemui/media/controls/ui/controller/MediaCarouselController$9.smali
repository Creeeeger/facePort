.class public final Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$9;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$9;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v1, "animator_duration_scale"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$9;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->animationScaleObserver:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$animationScaleObserver$1;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
