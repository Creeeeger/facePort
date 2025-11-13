.class public Lcom/samsung/android/globalactions/features/SepEffectStrategy;
.super Ljava/lang/Object;
.source "SepEffectStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;


# instance fields
.field private final blacklist BLUR_DIM_AMOUNT:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/samsung/android/globalactions/features/SepEffectStrategy;->BLUR_DIM_AMOUNT:F

    return-void
.end method


# virtual methods
.method public blacklist onDecorateWindow(Landroid/view/Window;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
