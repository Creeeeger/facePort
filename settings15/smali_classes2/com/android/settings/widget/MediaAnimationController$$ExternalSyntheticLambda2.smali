.class public final synthetic Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/widget/MediaAnimationController;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/MediaAnimationController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/widget/MediaAnimationController;

    iput-object p2, p0, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda2;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/widget/MediaAnimationController;

    iget-object v0, p0, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController$$ExternalSyntheticLambda2;->f$2:Landroid/view/View;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/widget/MediaAnimationController;->updateViewStates(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
