.class public Landroid/graphics/MeshSpecification$Attribute;
.super Ljava/lang/Object;
.source "MeshSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/MeshSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOffset:I

.field private final blacklist mType:I


# direct methods
.method public constructor whitelist <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/MeshSpecification$Attribute;->mType:I

    iput p2, p0, Landroid/graphics/MeshSpecification$Attribute;->mOffset:I

    iput-object p3, p0, Landroid/graphics/MeshSpecification$Attribute;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/MeshSpecification$Attribute;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOffset()I
    .locals 1

    iget v0, p0, Landroid/graphics/MeshSpecification$Attribute;->mOffset:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/graphics/MeshSpecification$Attribute;->mType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/MeshSpecification$Attribute;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/MeshSpecification$Attribute;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/MeshSpecification$Attribute;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
