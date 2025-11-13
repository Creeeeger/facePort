.class public final enum Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

.field public static final enum EID_BUDS_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

.field public static final enum EID_PHONE_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    const/4 v1, 0x0

    const-string v2, "ASPS"

    const-string v3, "EID_PHONE_DETAIL_SETTING"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_PHONE_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    const/4 v2, 0x1

    const-string v3, "ASBS"

    const-string v4, "EID_BUDS_DETAIL_SETTING"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_BUDS_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    filled-new-array {v0, v1}, [Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->$VALUES:[Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;
    .locals 1

    const-class v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->$VALUES:[Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->id:Ljava/lang/String;

    return-object p0
.end method
