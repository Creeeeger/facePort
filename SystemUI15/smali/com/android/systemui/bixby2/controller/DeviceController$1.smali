.class Lcom/android/systemui/bixby2/controller/DeviceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/DeviceController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$res:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/DeviceController;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController$1;->this$0:Lcom/android/systemui/bixby2/controller/DeviceController;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/DeviceController$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/bixby2/controller/DeviceController$1;->val$res:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController$1;->val$res:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
