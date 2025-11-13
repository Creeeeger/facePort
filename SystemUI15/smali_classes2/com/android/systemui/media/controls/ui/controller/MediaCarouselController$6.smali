.class public final Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    sget-object p1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePageIndicatorLocation()V

    return-void
.end method
