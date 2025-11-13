.class public final Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;


# instance fields
.field public final animateFrom:Landroid/app/Dialog;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->animateFrom:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->animateFrom:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public final dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->animateFrom:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
