.class public final Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

.field public static final OFF:Ljava/lang/String;

.field public static final ON:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    const-string v0, "On"

    sput-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->ON:Ljava/lang/String;

    const-string v0, "Off"

    sput-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->OFF:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEventLog$default(Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;Ljava/lang/String;I)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4, p3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, "sendEventLog: screen = "

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , event = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", detail = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SoundCraftSALogging"

    invoke-static {p0, p3, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
