.class public final Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconOverlayFailureListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic $iconOverlayAsset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconOverlayFailureListener$1;->$iconOverlayAsset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    iget p0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconOverlayFailureListener$1;->$iconOverlayAsset:I

    invoke-static {p0}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt;->access$getAssetNameFromId(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Collecting iconOverlayAsset | Invalid resource id: "

    const-string v2, ", name "

    invoke-static {p0, v1, v2, v0}, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger$logUpdateMessage$2$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PromptIconViewBinder"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
