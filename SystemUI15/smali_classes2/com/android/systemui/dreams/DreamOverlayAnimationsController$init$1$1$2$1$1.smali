.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $px:F

.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$2$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iput p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$2$1$1;->$px:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$2$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iget p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$2$1$1;->$px:F

    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/complication/ComplicationHostViewController;->getViewsAtPosition(I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
