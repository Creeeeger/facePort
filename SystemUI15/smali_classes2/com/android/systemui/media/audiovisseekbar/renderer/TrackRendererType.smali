.class public final enum Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

.field public static final enum WAVE_MULTI_AREA_AUTO:Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    const-string v1, "WAVE_MULTI_AREA_AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;->WAVE_MULTI_AREA_AUTO:Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    filled-new-array {v0}, [Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;->$VALUES:[Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;
    .locals 1

    const-class v0, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;->$VALUES:[Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    return-object v0
.end method
