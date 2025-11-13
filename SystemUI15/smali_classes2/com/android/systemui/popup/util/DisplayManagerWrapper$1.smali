.class Lcom/android/systemui/popup/util/DisplayManagerWrapper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/DisplayManagerWrapper;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper$1;->this$0:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
