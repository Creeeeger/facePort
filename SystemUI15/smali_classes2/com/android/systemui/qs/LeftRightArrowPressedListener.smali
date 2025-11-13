.class public final Lcom/android/systemui/qs/LeftRightArrowPressedListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final Companion:Lcom/android/systemui/qs/LeftRightArrowPressedListener$Companion;


# instance fields
.field public lastKeyCode:Ljava/lang/Integer;

.field public listener:Landroidx/core/util/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/LeftRightArrowPressedListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/LeftRightArrowPressedListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/LeftRightArrowPressedListener;->Companion:Lcom/android/systemui/qs/LeftRightArrowPressedListener$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/LeftRightArrowPressedListener;->lastKeyCode:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/LeftRightArrowPressedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/LeftRightArrowPressedListener;->lastKeyCode:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p1, 0x15

    if-eq p2, p1, :cond_0

    const/16 p1, 0x16

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/LeftRightArrowPressedListener;->lastKeyCode:Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/LeftRightArrowPressedListener;->listener:Landroidx/core/util/Consumer;

    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/LeftRightArrowPressedListener;->lastKeyCode:Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/LeftRightArrowPressedListener;->lastKeyCode:Ljava/lang/Integer;

    :cond_4
    :goto_1
    return v0
.end method
