.class public final Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;-><init>(Lcom/android/systemui/cover/CoverScreenManager;)V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    iget-object v0, v0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    new-instance v1, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    iget-object v0, v0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    new-instance v1, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 0

    return-void
.end method

.method public final onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method
