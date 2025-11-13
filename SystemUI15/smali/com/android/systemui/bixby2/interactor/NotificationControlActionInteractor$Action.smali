.class final enum Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum delete_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum goto_edgelighting:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum open_notification_panel:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum query_notification_settings:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum read_notification_withid:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum reply_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

.field public static final enum setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;


# direct methods
.method private static synthetic $values()[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;
    .locals 9

    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->read_notification_withid:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    sget-object v1, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->delete_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    sget-object v2, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->reply_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    sget-object v3, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->open_notification_panel:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    sget-object v4, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->goto_edgelighting:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    sget-object v5, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    sget-object v6, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    sget-object v7, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    sget-object v8, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->query_notification_settings:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    filled-new-array/range {v0 .. v8}, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    const-string v1, "read_notification_withid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->read_notification_withid:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    const-string v1, "delete_notification"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->delete_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    const-string v1, "reply_notification"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->reply_notification:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    const-string v1, "open_notification_panel"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->open_notification_panel:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    const-string v1, "goto_edgelighting"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->goto_edgelighting:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    const-string v1, "set_notification_permission"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    const-string v1, "set_notification_sound"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->set_notification_sound:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    const-string v1, "setoff_notification_permission"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->setoff_notification_permission:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    const-string v1, "query_notification_settings"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->query_notification_settings:Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->$values()[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;
    .locals 1

    const-class v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    invoke-virtual {v0}, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor$Action;

    return-object v0
.end method
