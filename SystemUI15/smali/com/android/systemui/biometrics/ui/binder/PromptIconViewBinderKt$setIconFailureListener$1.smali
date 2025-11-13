.class public final Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic $activeAuthType:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

.field public final synthetic $iconAsset:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;->$activeAuthType:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    iput p2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;->$iconAsset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Throwable;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;->$iconAsset:I

    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt;->access$getAssetNameFromId(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Collecting iconAsset | activeAuthType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconFailureListener$1;->$activeAuthType:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " | Invalid resource id: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", name "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PromptIconViewBinder"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
