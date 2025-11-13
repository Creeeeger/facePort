.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

.field public final synthetic val$percentage:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->val$percentage:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;)V

    const v1, 0x7f141b4b

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->val$percentage:I

    const/16 v1, 0x64

    iget-object v2, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    if-lt v0, v1, :cond_0

    const v0, 0x7f143301

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f143305

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const v0, 0x7f1432fd

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f143304

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$3;->val$percentage:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
