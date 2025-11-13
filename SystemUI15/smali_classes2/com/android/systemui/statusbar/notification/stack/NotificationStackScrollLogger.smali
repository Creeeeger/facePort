.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public final notificationRenderBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final shadeLogBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->notificationRenderBuffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;->shadeLogBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method
