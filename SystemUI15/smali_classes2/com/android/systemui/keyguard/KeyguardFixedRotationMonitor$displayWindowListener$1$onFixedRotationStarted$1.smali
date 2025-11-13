.class public final Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newRotation:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;


# direct methods
.method public constructor <init>(ILcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;->$newRotation:I

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;->$newRotation:I

    const-string v1, "onFixedRotationStarted rotation="

    const-string v2, "KeyguardFixedRotation"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated:Z

    return-void
.end method
