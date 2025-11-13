.class public final Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "showDialog() - DIALOG_OPEN_SECURITY_WARNING\'s PositiveButton clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->-$$Nest$fputmOpenSecurityWarningDialogIsRequired(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "showDialog() - DIALOG_OPEN_SECURITY_WARNING\'s PositiveButton clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->-$$Nest$fgetmThisDropDownPreference(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;)Landroidx/preference/SecDropDownPreference;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->-$$Nest$fgetmPreviousSecurityType(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSecurityDropDownController;->setValueIndex(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
