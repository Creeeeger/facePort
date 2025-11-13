.class Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController$2;
.super Landroid/database/ContentObserver;
.source "SecExtraBrightnessPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController$2;->this$0:Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController$2;->this$0:Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecExtraBrightnessPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
