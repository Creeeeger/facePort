.class public final Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$UpdateUIHandler;->this$0:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->remoteDeviceEnabled(Z)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->syncStatus$1()V

    :goto_0
    return-void
.end method
