.class final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$Companion$Factory$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel;",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
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


# static fields
.field public static final INSTANCE:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$Companion$Factory$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$Companion$Factory$1$1;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$Companion$Factory$1$1;-><init>()V

    sput-object v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$Companion$Factory$1$1;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$Companion$Factory$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    const-string p0, "$this$initializer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion$APPLICATION_KEY$1;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.android.settings.SettingsApplication"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/settings/SettingsApplication;

    iget-object p0, p0, Lcom/android/settings/SettingsApplication;->mBiometricsEnvironment:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->fingerprintManagerInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;)V

    return-object p1
.end method
