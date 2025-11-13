.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda17;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    return-void
.end method


# virtual methods
.method public final onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda17;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCocktailBarWindowType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_1
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_COCKTAIL_BAR_SHOWING_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_2
    return-void
.end method
