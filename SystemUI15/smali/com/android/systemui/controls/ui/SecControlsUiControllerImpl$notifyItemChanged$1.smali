.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyItemChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $model:Lcom/android/systemui/controls/management/model/MainControlModel;

.field public final synthetic $position:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;ILcom/android/systemui/controls/management/model/MainControlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyItemChanged$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iput p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyItemChanged$1;->$position:I

    iput-object p3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyItemChanged$1;->$model:Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyItemChanged$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyItemChanged$1;->$position:I

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyItemChanged$1;->$model:Lcom/android/systemui/controls/management/model/MainControlModel;

    sget v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->$r8$clinit:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V

    return-void
.end method
