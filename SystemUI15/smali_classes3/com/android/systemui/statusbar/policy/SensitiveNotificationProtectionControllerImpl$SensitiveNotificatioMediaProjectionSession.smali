.class public final Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mExempt:Z

.field public final mProjectionAppUid:I

.field public final mSessionId:J


# direct methods
.method public constructor <init>(JIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;->mSessionId:J

    iput p3, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;->mProjectionAppUid:I

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;->mExempt:Z

    return-void
.end method
