.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiApClientSetTimeLimitPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->showChangeTimeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->-$$Nest$fgetmThisPreference(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
