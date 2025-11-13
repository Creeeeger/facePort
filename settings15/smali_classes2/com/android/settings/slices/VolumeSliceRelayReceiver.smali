.class public Lcom/android/settings/slices/VolumeSliceRelayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object p0, Lcom/android/settings/slices/VolumeSliceHelper;->sRegisteredUri:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/settings/slices/VolumeSliceHelper;->sIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_SLICES_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "Invalid uri: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "VolumeSliceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    const-string p0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq p0, v0, :cond_6

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/slices/VolumeSliceHelper;->handleStreamChanged(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/slices/VolumeSliceHelper;->handleStreamChanged(Landroid/content/Context;I)V

    const/4 p2, 0x2

    if-ne p0, p2, :cond_6

    const/4 p0, 0x5

    invoke-static {p1, p0}, Lcom/android/settings/slices/VolumeSliceHelper;->handleStreamChanged(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/slices/VolumeSliceHelper;->handleStreamChanged(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/android/settings/slices/VolumeSliceHelper;->sRegisteredUri:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance p2, Lcom/android/settings/slices/VolumeSliceHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/settings/slices/VolumeSliceHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    :goto_0
    return-void
.end method
