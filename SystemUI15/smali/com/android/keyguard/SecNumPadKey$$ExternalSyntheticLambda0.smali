.class public final synthetic Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/SecNumPadKey;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/SecNumPadKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/SecNumPadKey;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    sget v0, Lcom/android/keyguard/SecNumPadKey;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecNumPadKey"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/keyguard/SecNumPadKey;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/SecNumPadKey$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/SecNumPadKey;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
