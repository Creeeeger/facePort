.class public final Lcom/android/systemui/keyguard/KeyguardService$1$1;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardService$1;

.field public final synthetic val$transition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardService$1;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService$1;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService$1$1;->val$transition:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationFinished()V
    .locals 2

    const-string v0, "KeyguardService"

    const-string v1, "Finish IRemoteAnimationRunner."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1$1;->val$transition:Landroid/os/IBinder;

    sget v1, Lcom/android/systemui/keyguard/KeyguardService$1;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$1;->finish(Landroid/os/IBinder;)V

    return-void
.end method
