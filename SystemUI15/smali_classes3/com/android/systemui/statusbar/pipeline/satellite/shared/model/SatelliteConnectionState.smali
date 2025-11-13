.class public final enum Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState$Companion;

.field public static final enum Connected:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

.field public static final enum Off:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

.field public static final enum On:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

.field public static final enum Unknown:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Unknown:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    const-string v2, "Off"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Off:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    const-string v3, "On"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->On:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    const-string v4, "Connected"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Connected:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->$VALUES:[Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->Companion:Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;->$VALUES:[Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/pipeline/satellite/shared/model/SatelliteConnectionState;

    return-object v0
.end method
