.class public final synthetic Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/AuthController;

    iput p2, p0, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/AuthController;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;->f$1:I

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    const v2, 0x1040550

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mFailedModalities:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->onAuthenticationFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "AuthContainerView"

    const-string v0, "onAuthenticationFailed(): mBiometricView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
