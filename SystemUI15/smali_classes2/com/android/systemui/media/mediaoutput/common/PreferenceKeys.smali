.class public final Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CASTING_PRIORITY:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;

.field public static final SHOW_MUSIC_SHARE:Landroidx/datastore/preferences/core/Preferences$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "wifispeaker_chromecast_mode_enabled"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;->CASTING_PRIORITY:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "show_music_share_enabled"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;->SHOW_MUSIC_SHARE:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
