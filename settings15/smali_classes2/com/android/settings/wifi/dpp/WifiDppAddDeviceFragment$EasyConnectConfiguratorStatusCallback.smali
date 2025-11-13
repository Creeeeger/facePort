.class public final Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;
.super Landroid/net/wifi/EasyConnectStatusCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    invoke-direct {p0}, Landroid/net/wifi/EasyConnectStatusCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfiguratorSuccess(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showSuccessUi(Z)V

    return-void
.end method

.method public final onEnrolleeSuccess(I)V
    .locals 0

    return-void
.end method

.method public final onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EasyConnectConfiguratorStatusCallback.onFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDppAddDeviceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Tried SSID: "

    invoke-static {v0, p2, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Tried channels: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    if-eqz p4, :cond_3

    array-length v2, p4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Supported bands: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v0

    :goto_0
    array-length v4, p4

    if-ge v3, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, p4, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.provider.extra.EASY_CONNECT_ERROR_CODE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.provider.extra.EASY_CONNECT_ATTEMPTED_SSID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    move v2, v0

    :goto_1
    :try_start_0
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move v6, v0

    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_5

    aget v7, v5, v6

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :catch_1
    const-string p3, "android.provider.extra.EASY_CONNECT_CHANNEL_LIST"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    if-eqz p4, :cond_7

    array-length p2, p4

    if-eqz p2, :cond_7

    const-string p2, "android.provider.extra.EASY_CONNECT_BAND_LIST"

    invoke-virtual {v1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_7
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showErrorUi(ILandroid/content/Intent;Z)V

    return-void
.end method

.method public final onProgress(I)V
    .locals 0

    return-void
.end method
