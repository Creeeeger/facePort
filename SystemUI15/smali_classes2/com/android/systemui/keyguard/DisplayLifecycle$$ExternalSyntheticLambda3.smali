.class public final synthetic Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchFolderStateChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    const-string v2, " -> "

    const-string v3, "DisplayLifecycle"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)Z

    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;Z)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
