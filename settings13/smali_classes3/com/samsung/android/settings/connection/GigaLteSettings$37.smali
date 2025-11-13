.class Lcom/samsung/android/settings/connection/GigaLteSettings$37;
.super Landroid/database/ContentObserver;
.source "GigaLteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaLteSettings;->getAirplaneModeObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;Landroid/os/Handler;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1062
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$misRoaming(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$misSimValid(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1064
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
