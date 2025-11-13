.class public final Lcom/android/systemui/statusbar/phone/AlertDialogWithDelegate;
.super Landroid/app/AlertDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# instance fields
.field public final delegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/DialogDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/systemui/statusbar/phone/DialogDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/AlertDialogWithDelegate;->delegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AlertDialogWithDelegate;->delegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->onConfigurationChanged(Landroid/app/Dialog;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AlertDialogWithDelegate;->delegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->beforeCreate(Landroid/app/Dialog;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AlertDialogWithDelegate;->delegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AlertDialogWithDelegate;->delegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->onStart(Landroid/app/Dialog;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    invoke-static {p0}, Landroid/view/ViewRootImpl;->removeConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AlertDialogWithDelegate;->delegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->onStop(Landroid/app/Dialog;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AlertDialogWithDelegate;->delegate:Lcom/android/systemui/statusbar/phone/DialogDelegate;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DialogDelegate;->onWindowFocusChanged(Landroid/app/Dialog;Z)V

    return-void
.end method
