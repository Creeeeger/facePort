.class public final Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$onCreate$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $dialog:Landroid/app/AlertDialog;

.field public final synthetic this$0:Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$onCreate$2;->this$0:Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$onCreate$2;->$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$onCreate$2;->this$0:Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;->onCancelClicked:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$onCreate$2;->$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
