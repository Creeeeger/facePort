.class public final synthetic Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardDisplayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardDisplayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardDisplayManager;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardDisplayManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mVisibilityListener:Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
