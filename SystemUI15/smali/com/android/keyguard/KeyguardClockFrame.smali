.class public final Lcom/android/keyguard/KeyguardClockFrame;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/keyguard/KeyguardClockFrame$Companion;


# instance fields
.field public drawAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/KeyguardClockFrame$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardClockFrame$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguard/KeyguardClockFrame;->Companion:Lcom/android/keyguard/KeyguardClockFrame$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/keyguard/KeyguardClockFrame;->drawAlpha:I

    return-void
.end method

.method public static final synthetic access$dispatchDraw$s1310765783(Lcom/android/keyguard/KeyguardClockFrame;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardClockFrame;->Companion:Lcom/android/keyguard/KeyguardClockFrame$Companion;

    iget v1, p0, Lcom/android/keyguard/KeyguardClockFrame;->drawAlpha:I

    new-instance v2, Lcom/android/keyguard/KeyguardClockFrame$dispatchDraw$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardClockFrame$dispatchDraw$1;-><init>(Lcom/android/keyguard/KeyguardClockFrame;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v1, v2}, Lcom/android/keyguard/KeyguardClockFrame$Companion;->saveCanvasAlpha(Landroid/view/View;Landroid/graphics/Canvas;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onSetAlpha(I)Z
    .locals 1

    const/16 p1, 0xff

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTransitionAlpha()F

    move-result p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/keyguard/KeyguardClockFrame;->drawAlpha:I

    const/4 p0, 0x1

    return p0
.end method
