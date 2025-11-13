.class public final synthetic Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/ScreenTimeoutSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/display/ScreenTimeoutSettings;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/display/ScreenTimeoutSettings;

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepController:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->updatePreference()V

    return-void
.end method
