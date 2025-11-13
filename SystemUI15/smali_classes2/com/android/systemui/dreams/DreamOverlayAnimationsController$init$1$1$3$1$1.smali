.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $alpha:F

.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iput p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3$1$1;->$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3$1$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iget p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3$1$1;->$alpha:F

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->access$setElementsAlphaAtPosition(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;FIZ)V

    return-void
.end method
