.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;
.super Landroidx/fragment/app/Fragment;
.source "WifiApVzwHelp.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOGGER()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 54
    sget p2, Lcom/android/settings/R$layout;->sec_wifi_ap_help_vzw:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;->mView:Landroid/view/View;

    .line 55
    sget p2, Lcom/android/settings/R$id;->button_start_help:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;->mButton:Landroid/widget/Button;

    .line 56
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApVzwHelp;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 106
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method
