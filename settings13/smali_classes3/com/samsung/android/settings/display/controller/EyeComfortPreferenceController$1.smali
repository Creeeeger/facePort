.class Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "EyeComfortPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;)Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
