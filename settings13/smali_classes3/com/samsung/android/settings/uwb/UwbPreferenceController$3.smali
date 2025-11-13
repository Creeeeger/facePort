.class Lcom/samsung/android/settings/uwb/UwbPreferenceController$3;
.super Ljava/lang/Object;
.source "UwbPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/uwb/UwbPreferenceController;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$3;->this$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$3;->this$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 205
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$3;->this$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->-$$Nest$fgetmUwbManager(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)Landroid/uwb/UwbManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/uwb/UwbManager;->isUwbEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
