.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field public final synthetic val$systemUIToast:Lcom/android/systemui/toast/SystemUIToast;

.field public final synthetic val$toastView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;Lcom/android/systemui/toast/SystemUIToast;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;->val$systemUIToast:Lcom/android/systemui/toast/SystemUIToast;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;->val$toastView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;->val$systemUIToast:Lcom/android/systemui/toast/SystemUIToast;

    iget-object v0, v0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3$1;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method
