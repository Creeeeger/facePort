.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const-string v0, "onFocusChange : "

    const-string v1, "WifiNetworkConnectFrg"

    invoke-static {v0, v1, p2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
