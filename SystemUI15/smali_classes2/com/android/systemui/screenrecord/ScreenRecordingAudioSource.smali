.class public final enum Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    new-instance v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const-string v2, "INTERNAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    new-instance v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const-string v3, "MIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    new-instance v3, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const-string v4, "MIC_AND_INTERNAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->$VALUES:[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;
    .locals 1

    const-class v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->$VALUES:[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {v0}, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-object v0
.end method
