.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    if-eqz p2, :cond_0

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->notification:Landroid/app/Notification;

    new-instance p1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;-><init>(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
