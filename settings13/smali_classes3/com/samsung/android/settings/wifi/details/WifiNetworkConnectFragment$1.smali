.class Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$1;
.super Ljava/lang/Object;
.source "WifiNetworkConnectFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiNetworkConnectFrg"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->-$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
