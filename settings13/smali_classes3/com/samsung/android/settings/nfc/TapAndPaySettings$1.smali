.class Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;
.super Ljava/lang/Object;
.source "TapAndPaySettings.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/TapAndPaySettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    const-string v0, "TapAndPaySettings"

    const-string v1, "onTabSelected"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-$$Nest$fputmCurrentTab(Lcom/samsung/android/settings/nfc/TapAndPaySettings;I)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-$$Nest$fgetmCurrentTab(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->-$$Nest$mchangeView(Lcom/samsung/android/settings/nfc/TapAndPaySettings;I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
