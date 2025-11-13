.class final enum Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/history/NotificationHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationHistoryEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

.field public static final enum NOTIFICATION_HISTORY_CLOSE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

.field public static final enum NOTIFICATION_HISTORY_OFF:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

.field public static final enum NOTIFICATION_HISTORY_OLDER_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

.field public static final enum NOTIFICATION_HISTORY_OLDER_ITEM_DELETE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

.field public static final enum NOTIFICATION_HISTORY_ON:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

.field public static final enum NOTIFICATION_HISTORY_OPEN:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

.field public static final enum NOTIFICATION_HISTORY_PACKAGE_HISTORY_CLOSE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

.field public static final enum NOTIFICATION_HISTORY_PACKAGE_HISTORY_OPEN:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

.field public static final enum NOTIFICATION_HISTORY_RECENT_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

.field public static final enum NOTIFICATION_HISTORY_SNOOZED_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    const/4 v1, 0x0

    const/16 v2, 0x1f8

    const-string v3, "NOTIFICATION_HISTORY_ON"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_ON:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    new-instance v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    const/4 v2, 0x1

    const/16 v3, 0x1f9

    const-string v4, "NOTIFICATION_HISTORY_OFF"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OFF:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    new-instance v2, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    const/4 v3, 0x2

    const/16 v4, 0x1fa

    const-string v5, "NOTIFICATION_HISTORY_OPEN"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OPEN:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    new-instance v3, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    const/4 v4, 0x3

    const/16 v5, 0x1fb

    const-string v6, "NOTIFICATION_HISTORY_CLOSE"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_CLOSE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    new-instance v4, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    const/4 v5, 0x4

    const/16 v6, 0x1fc

    const-string v7, "NOTIFICATION_HISTORY_RECENT_ITEM_CLICK"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_RECENT_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    new-instance v5, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    const/4 v6, 0x5

    const/16 v7, 0x1fd

    const-string v8, "NOTIFICATION_HISTORY_SNOOZED_ITEM_CLICK"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_SNOOZED_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    new-instance v6, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    const/4 v7, 0x6

    const/16 v8, 0x1fe

    const-string v9, "NOTIFICATION_HISTORY_PACKAGE_HISTORY_OPEN"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_PACKAGE_HISTORY_OPEN:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    new-instance v7, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    const/4 v8, 0x7

    const/16 v9, 0x1ff

    const-string v10, "NOTIFICATION_HISTORY_PACKAGE_HISTORY_CLOSE"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_PACKAGE_HISTORY_CLOSE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    new-instance v8, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    const/16 v9, 0x8

    const/16 v10, 0x200

    const-string v11, "NOTIFICATION_HISTORY_OLDER_ITEM_CLICK"

    invoke-direct {v8, v11, v9, v10}, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OLDER_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    new-instance v9, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    const/16 v10, 0x9

    const/16 v11, 0x201

    const-string v12, "NOTIFICATION_HISTORY_OLDER_ITEM_DELETE"

    invoke-direct {v9, v12, v10, v11}, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OLDER_ITEM_DELETE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    filled-new-array/range {v0 .. v9}, [Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->$VALUES:[Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;
    .locals 1

    const-class v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->$VALUES:[Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    invoke-virtual {v0}, [Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->mId:I

    return p0
.end method
