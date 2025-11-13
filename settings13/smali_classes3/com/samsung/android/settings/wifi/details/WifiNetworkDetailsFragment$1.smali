.class Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$1;
.super Ljava/lang/Object;
.source "WifiNetworkDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 162
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->-$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
