.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedState$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedState$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    iput p0, p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCurrentState:I

    iget-object v0, p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    iput p0, v0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mCurrentState:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->checkTransitionEnd()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->setupAlphaTransition(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->createViewAndAttachToWindow(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->updateThemeColor()V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->setupAlphaTransition(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->checkTransitionEnd()V

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->removeTutorialFromWindowManager()V

    :goto_0
    return-void
.end method
