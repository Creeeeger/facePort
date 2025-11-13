.class public abstract Lcom/android/settings/slices/RestrictedSliceUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final AUTO_TURN_ON_WIFI_SLICE_URI:Landroid/net/Uri;

.field public static final BLUETOOTH_TETHERING_SLICE_URI:Landroid/net/Uri;

.field public static final NOTIFY_OPEN_NETWORKS_SLICE_URI:Landroid/net/Uri;

.field public static final USB_TETHERING_SLICE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content"

    const-string v1, "com.android.settings.slices"

    const-string v2, "action"

    const-string v3, "notify_open_networks"

    invoke-static {v0, v1, v2, v3}, Landroidx/picker/features/search/InitialSearchUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/settings/slices/RestrictedSliceUtils;->NOTIFY_OPEN_NETWORKS_SLICE_URI:Landroid/net/Uri;

    const-string v3, "enable_wifi_wakeup"

    invoke-static {v0, v1, v2, v3}, Landroidx/picker/features/search/InitialSearchUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/settings/slices/RestrictedSliceUtils;->AUTO_TURN_ON_WIFI_SLICE_URI:Landroid/net/Uri;

    const-string v3, "enable_usb_tethering"

    invoke-static {v0, v1, v2, v3}, Landroidx/picker/features/search/InitialSearchUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/settings/slices/RestrictedSliceUtils;->USB_TETHERING_SLICE_URI:Landroid/net/Uri;

    const-string v3, "enable_bluetooth_tethering_2"

    invoke-static {v0, v1, v2, v3}, Landroidx/picker/features/search/InitialSearchUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/slices/RestrictedSliceUtils;->BLUETOOTH_TETHERING_SLICE_URI:Landroid/net/Uri;

    return-void
.end method
