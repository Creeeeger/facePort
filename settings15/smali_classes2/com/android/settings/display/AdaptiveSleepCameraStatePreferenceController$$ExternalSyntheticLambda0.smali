.class public final synthetic Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZ)V

    return-void
.end method
