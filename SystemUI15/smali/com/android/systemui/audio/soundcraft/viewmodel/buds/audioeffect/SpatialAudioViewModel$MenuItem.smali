.class public final enum Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

.field public static final enum OFF:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

.field public static final enum SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

.field public static final enum SPATIAL_ONLY:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;


# instance fields
.field private final position:I

.field private final titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    const/4 v1, 0x0

    const v2, 0x7f131297

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->OFF:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    const/4 v2, 0x1

    const v3, 0x7f131296

    const-string v4, "SPATIAL_ONLY"

    invoke-direct {v1, v4, v2, v2, v3}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_ONLY:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    const/4 v3, 0x2

    const v4, 0x7f131295

    const-string v5, "SPATIAL_AND_HEAD_TRACKING"

    invoke-direct {v2, v5, v3, v3, v4}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->SPATIAL_AND_HEAD_TRACKING:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->$VALUES:[Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->position:I

    iput p4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->titleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;
    .locals 1

    const-class v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->$VALUES:[Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;

    return-object v0
.end method


# virtual methods
.method public final getPosition()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->position:I

    return p0
.end method

.method public final getTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/audioeffect/SpatialAudioViewModel$MenuItem;->titleResId:I

    return p0
.end method
