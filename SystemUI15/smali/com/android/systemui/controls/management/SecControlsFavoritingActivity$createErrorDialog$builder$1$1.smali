.class public final Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    sget p2, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->$r8$clinit:I

    iget-object p2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$1;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    new-instance v1, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$2;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    new-instance v2, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$3;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->secController:Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
