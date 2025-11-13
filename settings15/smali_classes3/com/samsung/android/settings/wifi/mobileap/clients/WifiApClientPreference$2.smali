.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$4$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const v1, 0x7f141b4b

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f143405

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f143406

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p0, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->-$$Nest$mopenClientSettingActivity(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
