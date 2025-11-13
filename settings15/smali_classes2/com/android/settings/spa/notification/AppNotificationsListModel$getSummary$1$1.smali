.class final Lcom/android/settings/spa/notification/AppNotificationsListModel$getSummary$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lcom/android/settings/spa/notification/NotificationSentState;

.field final synthetic this$0:Lcom/android/settings/spa/notification/AppNotificationsListModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/notification/AppNotificationsListModel;Lcom/android/settings/spa/notification/NotificationSentState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$getSummary$1$1;->this$0:Lcom/android/settings/spa/notification/AppNotificationsListModel;

    iput-object p2, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$getSummary$1$1;->$it:Lcom/android/settings/spa/notification/NotificationSentState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$getSummary$1$1;->this$0:Lcom/android/settings/spa/notification/AppNotificationsListModel;

    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$getSummary$1$1;->$it:Lcom/android/settings/spa/notification/NotificationSentState;

    iget-wide v1, p0, Lcom/android/settings/spa/notification/NotificationSentState;->lastSent:J

    iget-object p0, v0, Lcom/android/settings/spa/notification/AppNotificationsListModel;->context:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/settings/spa/notification/AppNotificationsListModel;->now:J

    sub-long/2addr v3, v1

    long-to-double v0, v3

    const/4 v2, 0x1

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
