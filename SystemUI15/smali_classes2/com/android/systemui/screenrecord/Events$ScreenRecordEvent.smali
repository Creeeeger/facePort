.class public final enum Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

.field public static final enum SCREEN_RECORD_END_NOTIFICATION:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

.field public static final enum SCREEN_RECORD_END_QS_TILE:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

.field public static final enum SCREEN_RECORD_START:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    const/4 v1, 0x0

    const/16 v2, 0x12b

    const-string v3, "SCREEN_RECORD_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_START:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    new-instance v1, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    const/4 v2, 0x1

    const/16 v3, 0x12c

    const-string v4, "SCREEN_RECORD_END_QS_TILE"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_END_QS_TILE:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    new-instance v2, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    const/4 v3, 0x2

    const/16 v4, 0x12d

    const-string v5, "SCREEN_RECORD_END_NOTIFICATION"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_END_NOTIFICATION:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->$VALUES:[Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

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

    iput p3, p0, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->$VALUES:[Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->mId:I

    return p0
.end method
