.class final Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$accessibilityInteractor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/biometrics/fingerprint2/domain/interactor/AccessibilityInteractorImpl;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Lcom/android/settings/SettingsApplication;

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsApplication;Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$accessibilityInteractor$2;->$context:Lcom/android/settings/SettingsApplication;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$accessibilityInteractor$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/AccessibilityInteractorImpl;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$accessibilityInteractor$2;->$context:Lcom/android/settings/SettingsApplication;

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$accessibilityInteractor$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->applicationScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/AccessibilityInteractorImpl;-><init>(Landroid/view/accessibility/AccessibilityManager;Lkotlinx/coroutines/internal/ContextScope;)V

    return-object v0
.end method
