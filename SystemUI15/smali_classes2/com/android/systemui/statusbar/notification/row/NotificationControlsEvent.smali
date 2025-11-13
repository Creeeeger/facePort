.class final enum Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

.field public static final enum NOTIFICATION_CONTROLS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

.field public static final enum NOTIFICATION_CONTROLS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

.field public static final enum NOTIFICATION_CONTROLS_SAVE_IMPORTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    const/4 v1, 0x0

    const/16 v2, 0x252

    const-string v3, "NOTIFICATION_CONTROLS_OPEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    const/4 v2, 0x1

    const/16 v3, 0x253

    const-string v4, "NOTIFICATION_CONTROLS_SAVE_IMPORTANCE"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_SAVE_IMPORTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    const/4 v3, 0x2

    const/16 v4, 0x254

    const-string v5, "NOTIFICATION_CONTROLS_CLOSE"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->$VALUES:[Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

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

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->$VALUES:[Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->mId:I

    return p0
.end method
