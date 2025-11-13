.class public final Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field public bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field public bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field public bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field public bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

.field public leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field public rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field public topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field public topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field public topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field public topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field public topRightCornerSize:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public static compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 1

    instance-of v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    instance-of v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/material/shape/CutCornerTreatment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object p0, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method
