.class Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$1;
.super Ljava/lang/Object;
.source "WifiNetworkAddFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiAddNetworkFrg"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;->-$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiNetworkAddFragment;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
