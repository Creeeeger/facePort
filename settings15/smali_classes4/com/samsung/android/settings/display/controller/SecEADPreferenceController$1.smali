.class public final Lcom/samsung/android/settings/display/controller/SecEADPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecEADPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/controller/SecEADPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecEADPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecEADPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecEADPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecEADPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecEADPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecEADPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
