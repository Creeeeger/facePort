.class public final Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$1;->this$0:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$1;->this$0:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->initializePreference()V

    iget-object p1, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->isCameraLocked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
