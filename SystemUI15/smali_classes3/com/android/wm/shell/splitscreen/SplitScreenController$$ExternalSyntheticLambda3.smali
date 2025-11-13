.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragToDesktopTransitionHandler:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iput-object p0, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
