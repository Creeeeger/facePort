.class Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$2;
.super Landroid/database/ContentObserver;
.source "CarrierBridgePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;->getObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$2;->this$0:Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$2;->this$0:Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$2;->this$0:Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
