.class public final synthetic Lcom/android/systemui/reardisplay/RearDisplayDialogController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/reardisplay/RearDisplayDialogController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/reardisplay/RearDisplayDialogController;

    iget-boolean p1, p0, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->mServiceNotified:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/reardisplay/RearDisplayDialogController;->closeOverlayAndNotifyService(Z)V

    :cond_0
    return-void
.end method
