.class Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController$EthernetSettingsObserver;
.super Landroid/database/ContentObserver;
.source "EthernetSettingsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EthernetSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController$EthernetSettingsObserver;->this$0:Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;

    .line 121
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController$EthernetSettingsObserver;->this$0:Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController$EthernetSettingsObserver;->this$0:Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/controller/EthernetSettingsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
