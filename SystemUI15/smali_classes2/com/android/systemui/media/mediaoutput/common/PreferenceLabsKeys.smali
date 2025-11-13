.class public final Lcom/android/systemui/media/mediaoutput/common/PreferenceLabsKeys;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CLOSE_ON_TOUCH_OUTSIDE:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final GROUP_SPEAKER_DEFAULT_EXPANDED:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/common/PreferenceLabsKeys;

.field public static final SUPPORT_VOLUME_INTERACTION:Landroidx/datastore/preferences/core/Preferences$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceLabsKeys;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/common/PreferenceLabsKeys;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceLabsKeys;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/PreferenceLabsKeys;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "support_outside_touch"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceLabsKeys;->CLOSE_ON_TOUCH_OUTSIDE:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string/jumbo v1, "support_volume_interaction"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceLabsKeys;->SUPPORT_VOLUME_INTERACTION:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "default_group_speaker_default_expanded"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/common/PreferenceLabsKeys;->GROUP_SPEAKER_DEFAULT_EXPANDED:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
