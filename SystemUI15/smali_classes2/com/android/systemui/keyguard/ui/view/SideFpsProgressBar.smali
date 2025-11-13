.class public final Lcom/android/systemui/keyguard/ui/view/SideFpsProgressBar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final overlayViewParams:Landroid/view/WindowManager$LayoutParams;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/WindowManager;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1000118

    const/4 v5, -0x2

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string p1, "SideFpsProgressBar"

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 p1, 0x33

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p1, 0x3

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const p1, 0x20000040

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method
