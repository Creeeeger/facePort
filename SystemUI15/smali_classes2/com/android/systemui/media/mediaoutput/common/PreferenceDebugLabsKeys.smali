.class public final Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final GRAYSCALE_THUMBNAIL:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;

.field public static final SHOW_LABS_MENU:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final SUPPORT_DISPLAY_DEVICE_VOLUME_CONTROL:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final SUPPORT_DISPLAY_ONLY_REMOTE_DEVICE:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final SUPPORT_FOR_TRANSFER_DURING_ROUTING:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final SUPPORT_FOR_UNSUPPORTED_TV:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final SUPPORT_MULTIPLE_MEDIA_SESSION:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final SUPPORT_SELECTABLE_BUDS_TOGETHER:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final SUPPORT_SPOTIFY_CHROMECAST:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final SUPPORT_TRANSFERABLE_ROUTES_WHILE_CONNECTING:Landroidx/datastore/preferences/core/Preferences$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "show_labs_mode"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->SHOW_LABS_MENU:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "grayscale_thumbnail"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->GRAYSCALE_THUMBNAIL:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "support_multiple_media_session"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->SUPPORT_MULTIPLE_MEDIA_SESSION:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "support_selectable_buds_together"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->SUPPORT_SELECTABLE_BUDS_TOGETHER:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "support_display_device_volume_control"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->SUPPORT_DISPLAY_DEVICE_VOLUME_CONTROL:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "support_transferable_routes_while_connecting"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->SUPPORT_TRANSFERABLE_ROUTES_WHILE_CONNECTING:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "support_for_transfer_during_routing"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->SUPPORT_FOR_TRANSFER_DURING_ROUTING:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "support_spotify_chromecast"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->SUPPORT_SPOTIFY_CHROMECAST:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "support_display_only_remote_device"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->SUPPORT_DISPLAY_ONLY_REMOTE_DEVICE:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "support_for_unsupported_tv"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceDebugLabsKeys;->SUPPORT_FOR_UNSUPPORTED_TV:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
