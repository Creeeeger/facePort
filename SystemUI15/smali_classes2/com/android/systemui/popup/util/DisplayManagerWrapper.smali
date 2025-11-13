.class public Lcom/android/systemui/popup/util/DisplayManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mListener:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public isSubDisplay()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public registerDisplayChangedListener(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/popup/util/DisplayManagerWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/popup/util/DisplayManagerWrapper$1;-><init>(Lcom/android/systemui/popup/util/DisplayManagerWrapper;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object p0, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterDisplayChangedListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    return-void
.end method
