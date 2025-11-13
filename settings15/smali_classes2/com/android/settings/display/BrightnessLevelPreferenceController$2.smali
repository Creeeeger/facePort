.class public final Lcom/android/settings/display/BrightnessLevelPreferenceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/BrightnessLevelPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/BrightnessLevelPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController$2;->this$0:Lcom/android/settings/display/BrightnessLevelPreferenceController;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController$2;->this$0:Lcom/android/settings/display/BrightnessLevelPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/BrightnessLevelPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->-$$Nest$mupdatedSummary(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
