.class public final Lcom/android/systemui/doze/DozeScreenState$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeScreenState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeScreenState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState$1;->this$0:Lcom/android/systemui/doze/DozeScreenState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-boolean p1, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState$1;->this$0:Lcom/android/systemui/doze/DozeScreenState;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenState;->updateUdfpsController()V

    :cond_0
    return-void
.end method

.method public final onEnrollmentsChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-boolean p1, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState$1;->this$0:Lcom/android/systemui/doze/DozeScreenState;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenState;->updateUdfpsController()V

    :cond_0
    return-void
.end method
