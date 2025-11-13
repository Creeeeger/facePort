.class public final Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnrolled$1$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $authController:Lcom/android/systemui/biometrics/AuthController;

.field public final synthetic $selectedUserId:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/biometrics/AuthController;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnrolled$1$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnrolled$1$1$callback$1;->$authController:Lcom/android/systemui/biometrics/AuthController;

    iput p3, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnrolled$1$1$callback$1;->$selectedUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollmentsChanged(Lcom/android/systemui/keyguard/data/repository/BiometricType;IZ)V
    .locals 0

    sget-object p2, Lcom/android/systemui/keyguard/data/repository/BiometricType;->FACE:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object p2, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnrolled$1$1$callback$1;->$authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object p3, p2, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/android/systemui/biometrics/AuthController;->mFaceEnrolledForUser:Landroid/util/SparseBooleanArray;

    iget p3, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnrolled$1$1$callback$1;->$selectedUserId:I

    invoke-virtual {p2, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$isFaceEnrolled$1$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const-string p1, "BiometricsRepositoryImpl"

    const-string p3, "Face enrollment changed"

    invoke-static {p0, p2, p1, p3}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
