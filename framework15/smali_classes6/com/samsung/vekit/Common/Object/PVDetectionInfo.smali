.class public Lcom/samsung/vekit/Common/Object/PVDetectionInfo;
.super Ljava/lang/Object;
.source "PVDetectionInfo.java"


# instance fields
.field blacklist angles:I

.field blacklist bottom:I

.field blacklist id:I

.field blacklist left:I

.field blacklist objectType:Lcom/samsung/vekit/Common/Type/PVObjectType;

.field blacklist right:I

.field blacklist top:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->left:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->top:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->right:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->bottom:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->angles:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->id:I

    sget-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->FACE:Lcom/samsung/vekit/Common/Type/PVObjectType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->objectType:Lcom/samsung/vekit/Common/Type/PVObjectType;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIILcom/samsung/vekit/Common/Type/PVObjectType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->left:I

    iput p2, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->top:I

    iput p3, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->right:I

    iput p4, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->bottom:I

    iput p5, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->angles:I

    iput p6, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->id:I

    iput-object p7, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->objectType:Lcom/samsung/vekit/Common/Type/PVObjectType;

    return-void
.end method


# virtual methods
.method public blacklist getAngles()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->angles:I

    return v0
.end method

.method public blacklist getBottom()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->bottom:I

    return v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->id:I

    return v0
.end method

.method public blacklist getLeft()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->left:I

    return v0
.end method

.method public blacklist getObjectType()Lcom/samsung/vekit/Common/Type/PVObjectType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->objectType:Lcom/samsung/vekit/Common/Type/PVObjectType;

    return-object v0
.end method

.method public blacklist getRight()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->right:I

    return v0
.end method

.method public blacklist getTop()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->top:I

    return v0
.end method

.method public blacklist setAngles(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->angles:I

    return-void
.end method

.method public blacklist setBottom(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->bottom:I

    return-void
.end method

.method public blacklist setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->id:I

    return-void
.end method

.method public blacklist setLeft(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->left:I

    return-void
.end method

.method public blacklist setObjectType(Lcom/samsung/vekit/Common/Type/PVObjectType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->objectType:Lcom/samsung/vekit/Common/Type/PVObjectType;

    return-void
.end method

.method public blacklist setRight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->right:I

    return-void
.end method

.method public blacklist setTop(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->top:I

    return-void
.end method
