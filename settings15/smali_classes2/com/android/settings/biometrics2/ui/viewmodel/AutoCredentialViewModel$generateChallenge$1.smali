.class public final Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $gkPwHandle:J

.field public final synthetic $revokeGkPwHandle:Z

.field public final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;JZLandroidx/lifecycle/LifecycleCoroutineScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;->this$0:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    iput-wide p2, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;->$gkPwHandle:J

    iput-boolean p4, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;->$revokeGkPwHandle:Z

    iput-object p5, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method
