.class public final Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;
.super Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mClickListener:Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;-><init>(Landroid/hardware/display/DisplayManager;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;->mClickListener:Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;

    return-void
.end method


# virtual methods
.method public final createInstance(Landroid/view/Display;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;->mContext:Landroid/content/Context;

    const/16 v1, 0x7f7

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    iget-object p0, p0, Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;->mClickListener:Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;)V

    return-object v0
.end method
