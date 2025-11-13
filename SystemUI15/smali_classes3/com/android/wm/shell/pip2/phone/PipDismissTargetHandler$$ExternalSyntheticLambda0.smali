.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->updateMagneticTargetSize()V

    :cond_0
    return-object p2
.end method
