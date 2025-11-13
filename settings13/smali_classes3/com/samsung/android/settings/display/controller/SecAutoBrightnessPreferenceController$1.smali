.class Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "SecAutoBrightnessPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 205
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecAutoBrightnessPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
