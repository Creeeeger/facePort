.class final Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationFailed$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $failedModality:Lcom/android/systemui/biometrics/shared/model/BiometricModality;

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti;Lcom/android/systemui/biometrics/shared/model/BiometricModality;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationFailed$1$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationFailed$1$1;->$failedModality:Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage;

    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptHistoryImpl;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationFailed$1$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFaceAndFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationFailed$1$1;->$failedModality:Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/BiometricModality;->Face:Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    if-ne p0, v0, :cond_1

    instance-of p0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Error;

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptHistoryImpl;->failures:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
