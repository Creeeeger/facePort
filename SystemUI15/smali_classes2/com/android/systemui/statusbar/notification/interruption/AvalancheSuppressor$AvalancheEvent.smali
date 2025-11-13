.class public final enum Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

.field public static final enum AVALANCHE_SUPPRESSOR_RECEIVED_TRIGGERING_EVENT:Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    const/16 v1, 0x720

    const-string v2, "AVALANCHE_SUPPRESSOR_RECEIVED_TRIGGERING_EVENT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;->AVALANCHE_SUPPRESSOR_RECEIVED_TRIGGERING_EVENT:Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    const/16 v2, 0x721

    const-string v3, "AVALANCHE_SUPPRESSOR_HUN_SUPPRESSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    const/16 v3, 0x722

    const-string v4, "AVALANCHE_SUPPRESSOR_HUN_ALLOWED_NEW_CONVERSATION"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    const/16 v4, 0x723

    const-string v5, "AVALANCHE_SUPPRESSOR_HUN_ALLOWED_PRIORITY_CONVERSATION"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    const/16 v5, 0x724

    const-string v6, "AVALANCHE_SUPPRESSOR_HUN_ALLOWED_CALL_STYLE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    const/16 v6, 0x725

    const-string v7, "AVALANCHE_SUPPRESSOR_HUN_ALLOWED_CATEGORY_REMINDER"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    const/16 v7, 0x726

    const-string v8, "AVALANCHE_SUPPRESSOR_HUN_ALLOWED_CATEGORY_EVENT"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    const/16 v8, 0x727

    const-string v9, "AVALANCHE_SUPPRESSOR_HUN_ALLOWED_FSI_WITH_PERMISSION"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    const/16 v9, 0x728

    const-string v10, "AVALANCHE_SUPPRESSOR_HUN_ALLOWED_COLORIZED"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    const/16 v10, 0x729

    const-string v11, "AVALANCHE_SUPPRESSOR_HUN_ALLOWED_EMERGENCY"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v9}, [Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;->$VALUES:[Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;->$VALUES:[Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/interruption/AvalancheSuppressor$AvalancheEvent;->id:I

    return p0
.end method
