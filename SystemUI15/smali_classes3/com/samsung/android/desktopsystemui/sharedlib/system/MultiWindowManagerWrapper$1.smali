.class Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$1;
.super Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowSnappingChanged(ILandroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowSnappingChanged , taskId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", othersBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DS]MultiWindowManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;->DeXWindowSnappingChanged(ILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method
