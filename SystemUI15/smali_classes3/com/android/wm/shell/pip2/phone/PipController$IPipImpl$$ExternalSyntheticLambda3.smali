.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;

    check-cast p1, Lcom/android/wm/shell/pip2/phone/PipController;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mPipAnimationListener:Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$1;

    iput-object p0, p1, Lcom/android/wm/shell/pip2/phone/PipController;->mPipRecentsAnimationListener:Lcom/android/wm/shell/pip2/phone/PipController$PipAnimationListener;

    if-eqz p0, :cond_0

    iget-object v0, p1, Lcom/android/wm/shell/pip2/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cd4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070cf4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$1;->onPipResourceDimensionsChanged(II)V

    :cond_0
    return-void
.end method
