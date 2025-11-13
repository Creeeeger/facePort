.class Lcom/samsung/android/settings/connection/GigaLteSettings$17;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaLteSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$17;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 567
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$17;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 568
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$17;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 569
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$17;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 570
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$17;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog()V

    return-void
.end method
