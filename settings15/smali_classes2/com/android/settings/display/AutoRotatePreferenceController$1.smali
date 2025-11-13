.class public final Lcom/android/settings/display/AutoRotatePreferenceController$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/AutoRotatePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/AutoRotatePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/AutoRotatePreferenceController$1;->this$0:Lcom/android/settings/display/AutoRotatePreferenceController;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController$1;->this$0:Lcom/android/settings/display/AutoRotatePreferenceController;

    invoke-static {v0}, Lcom/android/settings/display/AutoRotatePreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/AutoRotatePreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/display/AutoRotatePreferenceController$1;->this$0:Lcom/android/settings/display/AutoRotatePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/AutoRotatePreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/AutoRotatePreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/AutoRotatePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
