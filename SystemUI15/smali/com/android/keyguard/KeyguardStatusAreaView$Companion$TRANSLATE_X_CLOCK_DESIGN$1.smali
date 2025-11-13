.class public final Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_CLOCK_DESIGN$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "TranslateXClockDesign"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    iget p0, p1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromClockDesign:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    iput p2, p1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromClockDesign:F

    iget p0, p1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromAod:F

    add-float/2addr p0, p2

    iget p2, p1, Lcom/android/keyguard/KeyguardStatusAreaView;->translateXFromUnfold:F

    add-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    return-void
.end method
