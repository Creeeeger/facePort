.class public final Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindClearAllButton$2$3$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $isVisible:Lcom/android/systemui/util/ui/AnimatedValue;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/ui/AnimatedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindClearAllButton$2$3$1$1;->$isVisible:Lcom/android/systemui/util/ui/AnimatedValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindClearAllButton$2$3$1$1;->$isVisible:Lcom/android/systemui/util/ui/AnimatedValue;

    instance-of p1, p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {p0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getOnStopAnimating()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
