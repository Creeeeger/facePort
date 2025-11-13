.class Lcom/samsung/android/settings/display/controller/ScreenResolutionPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ScreenResolutionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/ScreenResolutionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/ScreenResolutionPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/ScreenResolutionPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenResolutionPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenResolutionPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenResolutionPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenResolutionPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/ScreenResolutionPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/ScreenResolutionPreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
