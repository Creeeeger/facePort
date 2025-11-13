.class public Lcom/android/settings/security/screenlock/ProtectedTimeoutListPreference;
.super Lcom/android/settings/display/TimeoutListPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static synthetic $r8$lambda$gtTVNoY4SqSv9Kokaf1kiKst9Uw(Lcom/android/settings/security/screenlock/ProtectedTimeoutListPreference;)V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/RestrictedListPreference;->performClick()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/TimeoutListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final performClick()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/security/screenlock/ProtectedTimeoutListPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/security/screenlock/ProtectedTimeoutListPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/screenlock/ProtectedTimeoutListPreference;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
