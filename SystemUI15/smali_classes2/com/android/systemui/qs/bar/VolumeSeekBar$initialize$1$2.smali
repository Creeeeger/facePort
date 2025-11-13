.class public final Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$2;

    invoke-direct {v0}, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$2;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$2;->INSTANCE:Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/16 p2, 0x9

    const/4 v0, 0x1

    if-eq p0, p2, :cond_1

    const/16 p2, 0xa

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setHovered(Z)V

    const/16 p0, 0x100

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setHovered(Z)V

    const/16 p0, 0x80

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :goto_0
    return v0
.end method
