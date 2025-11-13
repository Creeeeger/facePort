.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyToUpdateComponent$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyToUpdateComponent$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyToUpdateComponent$1;->$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyToUpdateComponent$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    sget v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->loadComponentInfo()V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyToUpdateComponent$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyToUpdateComponent$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "notifyToUpdateComponent-Skip reload selectedCompInfo: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateComp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecControlsUiControllerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->access$reload(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Lcom/android/systemui/controls/ui/SelectedItem;)V

    return-void
.end method
