.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;->fragment:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference$1$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsPreference;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 p0, 0x1

    return p0
.end method
