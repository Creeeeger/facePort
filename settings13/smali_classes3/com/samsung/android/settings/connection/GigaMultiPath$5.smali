.class Lcom/samsung/android/settings/connection/GigaMultiPath$5;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fputmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    .line 276
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 277
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 278
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$mshowProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    return-void
.end method
