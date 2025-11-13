.class public final Lcom/android/systemui/accessibility/ModeSwitchesController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;


# instance fields
.field public mClickListenerDelegate:Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;

.field public final mSwitchSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;

    new-instance v1, Lcom/android/systemui/accessibility/ModeSwitchesController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/ModeSwitchesController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/ModeSwitchesController;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/systemui/accessibility/ModeSwitchesController$SwitchSupplier;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/ModeSwitchesController;->mSwitchSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/ModeSwitchesController;->mSwitchSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    return-void
.end method


# virtual methods
.method public final onClick(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/ModeSwitchesController;->mClickListenerDelegate:Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;->onClick(I)V

    :cond_0
    return-void
.end method
