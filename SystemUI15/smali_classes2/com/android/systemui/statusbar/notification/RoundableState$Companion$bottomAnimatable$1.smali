.class public final Lcom/android/systemui/statusbar/notification/RoundableState$Companion$bottomAnimatable$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $roundable:Lcom/android/systemui/statusbar/notification/Roundable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/Roundable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$bottomAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    const-string p1, "bottomRoundness"

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$bottomAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundness:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$bottomAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p1

    iput p2, p1, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundness:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$bottomAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->applyRoundnessAndInvalidate()V

    return-void
.end method
