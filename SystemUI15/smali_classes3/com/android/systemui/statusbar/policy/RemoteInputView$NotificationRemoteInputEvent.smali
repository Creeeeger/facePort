.class final enum Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

.field public static final enum NOTIFICATION_REMOTE_INPUT_ATTACH_IMAGE:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

.field public static final enum NOTIFICATION_REMOTE_INPUT_CLOSE:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

.field public static final enum NOTIFICATION_REMOTE_INPUT_FAILURE:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

.field public static final enum NOTIFICATION_REMOTE_INPUT_OPEN:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

.field public static final enum NOTIFICATION_REMOTE_INPUT_SEND:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    const/4 v1, 0x0

    const/16 v2, 0x31b

    const-string v3, "NOTIFICATION_REMOTE_INPUT_OPEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->NOTIFICATION_REMOTE_INPUT_OPEN:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    new-instance v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    const/4 v2, 0x1

    const/16 v3, 0x31c

    const-string v4, "NOTIFICATION_REMOTE_INPUT_CLOSE"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->NOTIFICATION_REMOTE_INPUT_CLOSE:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    new-instance v2, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    const/4 v3, 0x2

    const/16 v4, 0x31d

    const-string v5, "NOTIFICATION_REMOTE_INPUT_SEND"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->NOTIFICATION_REMOTE_INPUT_SEND:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    new-instance v3, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    const/4 v4, 0x3

    const/16 v5, 0x31e

    const-string v6, "NOTIFICATION_REMOTE_INPUT_FAILURE"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->NOTIFICATION_REMOTE_INPUT_FAILURE:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    new-instance v4, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    const/4 v5, 0x4

    const/16 v6, 0x339

    const-string v7, "NOTIFICATION_REMOTE_INPUT_ATTACH_IMAGE"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->NOTIFICATION_REMOTE_INPUT_ATTACH_IMAGE:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->$VALUES:[Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

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

    iput p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->$VALUES:[Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->mId:I

    return p0
.end method
