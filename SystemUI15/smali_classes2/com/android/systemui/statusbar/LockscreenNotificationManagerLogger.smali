.class public final Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final DEBUG:Z

.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;->DEBUG:Z

    return-void
.end method
