.class public final synthetic Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mDisableScreenShareProtections:Z

    return-void
.end method
