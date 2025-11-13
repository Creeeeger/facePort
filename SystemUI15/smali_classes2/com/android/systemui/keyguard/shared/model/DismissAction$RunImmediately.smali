.class public final Lcom/android/systemui/keyguard/shared/model/DismissAction$RunImmediately;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/shared/model/DismissAction;


# instance fields
.field public final message:Ljava/lang/String;

.field public final onCancelAction:Ljava/lang/Runnable;

.field public final onDismissAction:Lkotlin/jvm/functions/Function0;

.field public final willAnimateOnLockscreen:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/Runnable;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$RunImmediately;->onDismissAction:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$RunImmediately;->onCancelAction:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$RunImmediately;->message:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$RunImmediately;->willAnimateOnLockscreen:Z

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$RunImmediately;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getOnCancelAction()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$RunImmediately;->onCancelAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getOnDismissAction()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$RunImmediately;->onDismissAction:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getWillAnimateOnLockscreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/shared/model/DismissAction$RunImmediately;->willAnimateOnLockscreen:Z

    return p0
.end method
