.class public final Lcom/android/settings/display/SmartAutoRotateController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/SmartAutoRotateController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/SmartAutoRotateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotateController$2;->this$0:Lcom/android/settings/display/SmartAutoRotateController;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateController$2;->this$0:Lcom/android/settings/display/SmartAutoRotateController;

    iget-object p1, p0, Lcom/android/settings/display/SmartAutoRotateController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/SmartAutoRotateController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
