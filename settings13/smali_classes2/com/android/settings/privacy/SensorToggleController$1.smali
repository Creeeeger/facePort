.class Lcom/android/settings/privacy/SensorToggleController$1;
.super Ljava/lang/Object;
.source "SensorToggleController.java"

# interfaces
.implements Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacy/SensorToggleController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacy/SensorToggleController;

.field final synthetic val$screen:Landroidx/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/privacy/SensorToggleController;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/privacy/SensorToggleController$1;->this$0:Lcom/android/settings/privacy/SensorToggleController;

    iput-object p2, p0, Lcom/android/settings/privacy/SensorToggleController$1;->val$screen:Landroidx/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorPrivacyChanged(IZ)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/android/settings/privacy/SensorToggleController$1;->this$0:Lcom/android/settings/privacy/SensorToggleController;

    iget-object p0, p0, Lcom/android/settings/privacy/SensorToggleController$1;->val$screen:Landroidx/preference/PreferenceScreen;

    invoke-static {p1}, Lcom/android/settings/privacy/SensorToggleController;->access$000(Lcom/android/settings/privacy/SensorToggleController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
