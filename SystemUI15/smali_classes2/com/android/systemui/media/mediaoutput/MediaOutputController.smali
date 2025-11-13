.class public final Lcom/android/systemui/media/mediaoutput/MediaOutputController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public listener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;

.field public final mediaOutputViewProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/MediaOutputController;->mediaOutputViewProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final createView(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/MediaOutputController;->mediaOutputViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/media/MediaOutputView;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;

    invoke-direct {v2}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v3

    iput-object p1, v3, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p1

    const/16 v3, 0xa

    iput v3, p1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    new-instance p1, Lcom/android/systemui/media/mediaoutput/MediaOutputController$createView$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/MediaOutputController$createView$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/MediaOutputController;)V

    invoke-virtual {v2}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->dismissCallback:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p0

    const-string/jumbo p1, "tag_facewidget_music_container_small_expand"

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->anchorViewTag:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p0

    iput-object p0, v1, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
