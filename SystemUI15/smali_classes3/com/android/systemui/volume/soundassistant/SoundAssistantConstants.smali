.class public final Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FIX_BUDS3_ICON_SAT_MAJOR_VERSION:I

.field public static final INSTANCE:Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;

.field public static final SOUNDASSISTANT_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;

    invoke-direct {v0}, Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;->INSTANCE:Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;

    const-string v0, "com.samsung.android.soundassistant"

    sput-object v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;->SOUNDASSISTANT_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantConstants;->FIX_BUDS3_ICON_SAT_MAJOR_VERSION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
