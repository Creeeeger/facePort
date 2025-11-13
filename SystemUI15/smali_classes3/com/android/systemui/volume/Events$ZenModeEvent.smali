.class public final enum Lcom/android/systemui/volume/Events$ZenModeEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/Events$ZenModeEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_NO_INTERRUPTIONS:Lcom/android/systemui/volume/Events$ZenModeEvent;

.field public static final enum ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

    new-instance v1, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const/4 v2, 0x1

    const/16 v3, 0x14f

    const-string v4, "ZEN_MODE_OFF"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;

    new-instance v2, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const/4 v3, 0x2

    const/16 v4, 0x9d

    const-string v5, "ZEN_MODE_IMPORTANT_ONLY"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    new-instance v3, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const/4 v4, 0x3

    const/16 v5, 0x9e

    const-string v6, "ZEN_MODE_ALARMS_ONLY"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    new-instance v4, Lcom/android/systemui/volume/Events$ZenModeEvent;

    const/4 v5, 0x4

    const/16 v6, 0x9f

    const-string v7, "ZEN_MODE_NO_INTERRUPTIONS"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/volume/Events$ZenModeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_NO_INTERRUPTIONS:Lcom/android/systemui/volume/Events$ZenModeEvent;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/volume/Events$ZenModeEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->$VALUES:[Lcom/android/systemui/volume/Events$ZenModeEvent;

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

    iput p3, p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/Events$ZenModeEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/Events$ZenModeEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->$VALUES:[Lcom/android/systemui/volume/Events$ZenModeEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/Events$ZenModeEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/Events$ZenModeEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/volume/Events$ZenModeEvent;->mId:I

    return p0
.end method
