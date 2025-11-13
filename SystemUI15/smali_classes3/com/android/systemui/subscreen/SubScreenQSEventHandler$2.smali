.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-static {v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmContextSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-static {v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmDisplayManager(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-static {v3}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmIsRotation0(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-static {v3, v2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmIsRotation0(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    move v0, v1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-static {p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmIsRotation180(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z

    move-result p1

    if-eq v0, p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-static {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmIsRotation180(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    :cond_4
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
