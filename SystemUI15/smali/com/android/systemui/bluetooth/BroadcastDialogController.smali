.class public final Lcom/android/systemui/bluetooth/BroadcastDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBroadcastDialogFactory:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$Factory;

.field public final mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mBroadcastDialogFactory:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$Factory;

    return-void
.end method
