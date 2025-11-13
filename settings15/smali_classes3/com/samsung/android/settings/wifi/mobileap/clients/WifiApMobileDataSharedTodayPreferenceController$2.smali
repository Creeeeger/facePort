.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$fgetmThisLayoutPreference(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$fputmDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$fgetmThisLayoutPreference(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
