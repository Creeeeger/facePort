.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

.field public final synthetic val$valFloat:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$5;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iput p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$5;->val$valFloat:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$5;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-static {v0}, Lcom/android/systemui/qp/SubscreenBrightnessController;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qp/SubscreenBrightnessController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setAutoBrightnessTransitionTime(I)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$5;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayId:I

    iget p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$5;->val$valFloat:F

    invoke-virtual {v1, v0, p0}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    return-void
.end method
