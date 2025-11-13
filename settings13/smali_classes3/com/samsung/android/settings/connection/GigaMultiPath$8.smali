.class Lcom/samsung/android/settings/connection/GigaMultiPath$8;
.super Landroid/database/ContentObserver;
.source "GigaMultiPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaMultiPath;->getAirplaneModeObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPath;Landroid/os/Handler;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$8;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 444
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$8;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$8;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$misSimValid(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$8;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$8;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

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
