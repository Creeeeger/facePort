.class public final Lcom/android/settings/display/SmartAutoRotatePreferenceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/SmartAutoRotatePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController$2;->this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceController;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController$2;->this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/SmartAutoRotatePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->access$100(Lcom/android/settings/display/SmartAutoRotatePreferenceController;Landroidx/preference/Preference;)V

    return-void
.end method
