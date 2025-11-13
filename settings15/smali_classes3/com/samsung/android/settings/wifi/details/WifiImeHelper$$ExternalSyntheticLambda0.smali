.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiImeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v1, "WifiImeHelper"

    const-string/jumbo v2, "showSoftKeyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method
