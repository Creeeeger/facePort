.class public final Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
