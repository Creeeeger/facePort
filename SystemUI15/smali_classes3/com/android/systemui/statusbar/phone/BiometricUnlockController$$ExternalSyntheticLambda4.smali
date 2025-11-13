.class public final synthetic Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;->f$2:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;->f$2:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;->onModeChanged(I)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockInteractor:Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;->setBiometricUnlockState(ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V

    return-void
.end method
