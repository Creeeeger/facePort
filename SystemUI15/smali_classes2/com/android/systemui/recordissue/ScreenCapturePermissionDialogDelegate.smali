.class public final Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;


# instance fields
.field public final dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public final state:Lcom/android/systemui/recordissue/IssueRecordingState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Lcom/android/systemui/recordissue/IssueRecordingState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate;->dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iput-object p2, p0, Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate;->state:Lcom/android/systemui/recordissue/IssueRecordingState;

    return-void
.end method


# virtual methods
.method public final beforeCreate(Landroid/app/Dialog;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v0, 0x7f080aef

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    const v0, 0x7f130fec

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    const v0, 0x7f130fed

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    new-instance v0, Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate$beforeCreate$1$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate$beforeCreate$1$1;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    const v1, 0x7f131267

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate$beforeCreate$1$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate$beforeCreate$1$2;-><init>(Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    const p0, 0x7f131265

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    return-void
.end method

.method public final createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recordissue/ScreenCapturePermissionDialogDelegate;->dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method
