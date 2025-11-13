.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
.super Ljava/lang/Object;
.source "SprObjectShapePath.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathInfo"
.end annotation


# instance fields
.field public blacklist type:B

.field public blacklist x:F

.field public blacklist x1:F

.field public blacklist x2:F

.field public blacklist y:F

.field public blacklist y1:F

.field public blacklist y2:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 53
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    .line 54
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    .line 55
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 56
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    .line 57
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    return-void
.end method


# virtual methods
.method protected blacklist clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 61
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    return-object v0
.end method

.method protected bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    move-result-object v0

    return-object v0
.end method
