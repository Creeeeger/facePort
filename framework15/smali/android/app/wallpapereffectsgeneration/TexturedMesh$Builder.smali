.class public final Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;
.super Ljava/lang/Object;
.source "TexturedMesh.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/TexturedMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mIndices:[I

.field private blacklist mIndicesLayoutType:I

.field private blacklist mVertices:[F

.field private blacklist mVerticesLayouttype:I


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/wallpapereffectsgeneration/TexturedMesh;
    .locals 8

    new-instance v7, Landroid/app/wallpapereffectsgeneration/TexturedMesh;

    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mIndices:[I

    iget-object v3, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mVertices:[F

    iget v4, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mIndicesLayoutType:I

    iget v5, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mVerticesLayouttype:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/app/wallpapereffectsgeneration/TexturedMesh;-><init>(Landroid/graphics/Bitmap;[I[FIILandroid/app/wallpapereffectsgeneration/TexturedMesh-IA;)V

    return-object v7
.end method

.method public whitelist setIndices([I)Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mIndices:[I

    return-object p0
.end method

.method public whitelist setIndicesLayoutType(I)Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;
    .locals 0

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mIndicesLayoutType:I

    return-object p0
.end method

.method public whitelist setVertices([F)Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mVertices:[F

    return-object p0
.end method

.method public whitelist setVerticesLayoutType(I)Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;
    .locals 0

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;->mVerticesLayouttype:I

    return-object p0
.end method
