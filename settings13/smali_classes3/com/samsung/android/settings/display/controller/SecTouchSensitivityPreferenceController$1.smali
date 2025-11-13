.class Lcom/samsung/android/settings/display/controller/SecTouchSensitivityPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "SecTouchSensitivityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/controller/SecTouchSensitivityPreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecTouchSensitivityPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecTouchSensitivityPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecTouchSensitivityPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecTouchSensitivityPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecTouchSensitivityPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecTouchSensitivityPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecTouchSensitivityPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecTouchSensitivityPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
