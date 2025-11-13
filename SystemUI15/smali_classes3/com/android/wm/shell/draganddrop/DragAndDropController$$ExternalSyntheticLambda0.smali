.class public final synthetic Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Landroid/view/DragEvent;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;->f$1:Landroid/view/DragEvent;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;->f$1:Landroid/view/DragEvent;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;

    invoke-virtual {v1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    check-cast p0, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;

    invoke-interface {p1, v0, v2, p0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;->onUnhandledDrag(Landroid/app/PendingIntent;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;Landroid/view/DragEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
