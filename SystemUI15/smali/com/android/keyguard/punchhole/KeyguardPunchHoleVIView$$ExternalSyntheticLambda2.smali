.class public final synthetic Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse json composition : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    return-void
.end method
