.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;

.field public final synthetic f$1:Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;->f$1:Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;

    check-cast p1, Lcom/android/wm/shell/pip2/phone/PipController;

    if-eqz p0, :cond_0

    iget-object p1, v0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    :goto_0
    return-void
.end method
