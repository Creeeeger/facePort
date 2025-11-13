.class public final Lcom/android/keyguard/KeyguardStatusContainer;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public drawAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/keyguard/KeyguardStatusContainer;->drawAlpha:I

    return-void
.end method

.method public static final synthetic access$dispatchDraw$s1127291599(Lcom/android/keyguard/KeyguardStatusContainer;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardClockFrame;->Companion:Lcom/android/keyguard/KeyguardClockFrame$Companion;

    iget v1, p0, Lcom/android/keyguard/KeyguardStatusContainer;->drawAlpha:I

    new-instance v2, Lcom/android/keyguard/KeyguardStatusContainer$dispatchDraw$1;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardStatusContainer$dispatchDraw$1;-><init>(Lcom/android/keyguard/KeyguardStatusContainer;Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v1, v2}, Lcom/android/keyguard/KeyguardClockFrame$Companion;->saveCanvasAlpha(Landroid/view/View;Landroid/graphics/Canvas;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onSetAlpha(I)Z
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardStatusContainer;->drawAlpha:I

    const/4 p0, 0x1

    return p0
.end method
