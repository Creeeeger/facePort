.class public final enum Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;",
        ">;",
        "Lcom/android/systemui/log/table/Diffable;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

.field public static final enum Connected:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

.field public static final enum Connecting:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

.field public static final enum Disconnected:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

.field public static final enum Disconnecting:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

.field public static final enum HandoverInProgress:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

.field public static final enum Invalid:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

.field public static final enum Suspended:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

.field public static final enum Unknown:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    const-string v1, "Connected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->Connected:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    const-string v2, "Connecting"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->Connecting:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    const-string v3, "Disconnected"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->Disconnected:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    new-instance v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    const-string v4, "Disconnecting"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->Disconnecting:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    const-string v5, "Suspended"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->Suspended:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    const-string v6, "HandoverInProgress"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->HandoverInProgress:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    const-string v7, "Unknown"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->Unknown:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    new-instance v7, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    const-string v8, "Invalid"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->Invalid:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->$VALUES:[Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;->$VALUES:[Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    return-object v0
.end method


# virtual methods
.method public final logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/DataConnectionState;

    if-eq p1, p0, :cond_0

    const-string p1, "connectionState"

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
