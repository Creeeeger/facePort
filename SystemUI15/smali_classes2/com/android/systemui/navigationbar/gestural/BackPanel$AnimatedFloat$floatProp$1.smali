.class public final Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat$floatProp$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget p0, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget p0, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    cmpg-float p0, p0, p2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    iget-object p0, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanel;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method
