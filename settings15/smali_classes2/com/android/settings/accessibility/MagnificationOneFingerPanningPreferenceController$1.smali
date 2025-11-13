.class public final Lcom/android/settings/accessibility/MagnificationOneFingerPanningPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/MagnificationOneFingerPanningPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/MagnificationOneFingerPanningPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationOneFingerPanningPreferenceController$1;->this$0:Lcom/android/settings/accessibility/MagnificationOneFingerPanningPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationOneFingerPanningPreferenceController$1;->this$0:Lcom/android/settings/accessibility/MagnificationOneFingerPanningPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accessibility/MagnificationOneFingerPanningPreferenceController;->-$$Nest$fgetmSwitchPreference(Lcom/android/settings/accessibility/MagnificationOneFingerPanningPreferenceController;)Landroidx/preference/TwoStatePreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/MagnificationOneFingerPanningPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
