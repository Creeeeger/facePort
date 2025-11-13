.class public final Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$setStartButtonOnClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $listener:Landroid/view/View$OnClickListener;

.field public final synthetic this$0:Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$setStartButtonOnClickListener$1;->this$0:Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$setStartButtonOnClickListener$1;->$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$setStartButtonOnClickListener$1;->this$0:Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->shouldLogCancel:Z

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$setStartButtonOnClickListener$1;->$listener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
