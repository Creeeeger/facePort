.class public final Lcom/android/compose/animation/scene/NoOpDragController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/DragController;


# static fields
.field public static final INSTANCE:Lcom/android/compose/animation/scene/NoOpDragController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/compose/animation/scene/NoOpDragController;

    invoke-direct {v0}, Lcom/android/compose/animation/scene/NoOpDragController;-><init>()V

    sput-object v0, Lcom/android/compose/animation/scene/NoOpDragController;->INSTANCE:Lcom/android/compose/animation/scene/NoOpDragController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(F)V
    .locals 0

    return-void
.end method

.method public final onStop(FZ)V
    .locals 0

    return-void
.end method
