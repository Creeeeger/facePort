.class public final Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$6;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$6;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->access$getTouchRegion(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method
