.class Lcom/samsung/android/settings/connection/GigaLteSettings$9;
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

    .line 424
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$9;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 426
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$9;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 427
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$9;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 428
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$9;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog()V

    return-void
.end method
