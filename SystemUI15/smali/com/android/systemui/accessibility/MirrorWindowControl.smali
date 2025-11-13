.class public abstract Lcom/android/systemui/accessibility/MirrorWindowControl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DBG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mControlPosition:Landroid/graphics/Point;

.field public mControlsView:Landroid/view/View;

.field public final mDraggableBound:Landroid/graphics/Rect;

.field public final mTmpPoint:Landroid/graphics/Point;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MirrorWindowControl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/accessibility/MirrorWindowControl;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mDraggableBound:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mTmpPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mControlPosition:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public abstract getWindowTitle()Ljava/lang/String;
.end method

.method public abstract onCreateView()Landroid/view/View;
.end method
