.class public Lcom/samsung/android/nexus/egl/world/BaseWorld;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mMVMatrix:[F

.field public final mMVPMatrix:[F

.field public final mModelMatrix:[F

.field public mProjectionMatrix:[F

.field public final mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mViewMatrix:[F

    new-array v3, v0, [F

    iput-object v3, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    new-array v4, v0, [F

    iput-object v4, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVPMatrix:[F

    const/4 p0, 0x0

    invoke-static {v1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v2, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v3, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final sendParams(Lcom/samsung/android/nexus/egl/core/Shader;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mViewMatrix:[F

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v8, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    iget-object v10, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVPMatrix:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v0, 0x1

    iget v2, p1, Lcom/samsung/android/nexus/egl/core/Shader;->modelMatrixHandle:I

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    invoke-static {v2, v0, v1, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_1
    iget p1, p1, Lcom/samsung/android/nexus/egl/core/Shader;->mvpMatrixHandle:I

    if-ltz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVPMatrix:[F

    invoke-static {p1, v0, v1, p0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_2
    return-void
.end method
