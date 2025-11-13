.class public final Lcom/android/systemui/accessibility/FullscreenMagnificationController$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/FullscreenMagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/FullscreenMagnificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/FullscreenMagnificationController;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController$1;->this$0:Lcom/android/systemui/accessibility/FullscreenMagnificationController;

    sget-object p1, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->sEmptyRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->handleScreenRotation()V

    return-void
.end method
