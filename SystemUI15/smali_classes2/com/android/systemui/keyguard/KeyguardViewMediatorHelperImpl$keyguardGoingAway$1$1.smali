.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $flags:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(ILcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1$1;->$flags:I

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "keyguardGoingAway flags=0x"

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1$1;->$flags:I

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->keyguardGoingAway(I)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1$1;->$flags:I

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {p0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
