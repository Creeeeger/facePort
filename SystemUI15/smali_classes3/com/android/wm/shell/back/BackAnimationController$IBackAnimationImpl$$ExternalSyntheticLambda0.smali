.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/IOnBackInvokedCallback;

.field public final synthetic f$1:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;->f$0:Landroid/window/IOnBackInvokedCallback;

    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/IRemoteAnimationRunner;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;->f$0:Landroid/window/IOnBackInvokedCallback;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/IRemoteAnimationRunner;

    check-cast p1, Lcom/android/wm/shell/back/BackAnimationController;

    new-instance v1, Lcom/android/wm/shell/back/BackAnimationRunner;

    iget-object v2, p1, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    const/16 v3, 0x56

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/android/wm/shell/back/BackAnimationRunner;-><init>(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;Landroid/content/Context;I)V

    iget-object p0, p1, Lcom/android/wm/shell/back/BackAnimationController;->mShellBackAnimationRegistry:Lcom/android/wm/shell/back/ShellBackAnimationRegistry;

    iget-object p0, p0, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    return-void
.end method
