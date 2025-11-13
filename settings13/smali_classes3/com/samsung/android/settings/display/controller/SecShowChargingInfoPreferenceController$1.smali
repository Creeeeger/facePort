.class Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "SecShowChargingInfoPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecShowChargingInfoPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
