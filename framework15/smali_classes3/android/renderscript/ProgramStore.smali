.class public Landroid/renderscript/ProgramStore;
.super Landroid/renderscript/BaseObj;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramStore$DepthFunc;,
        Landroid/renderscript/ProgramStore$BlendSrcFunc;,
        Landroid/renderscript/ProgramStore$BlendDstFunc;,
        Landroid/renderscript/ProgramStore$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field greylist-max-o mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field greylist-max-o mColorMaskA:Z

.field greylist-max-o mColorMaskB:Z

.field greylist-max-o mColorMaskG:Z

.field greylist-max-o mColorMaskR:Z

.field greylist-max-o mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field greylist-max-o mDepthMask:Z

.field greylist-max-o mDither:Z


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public static greylist-max-r BLEND_ALPHA_DEPTH_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public static greylist-max-o BLEND_ALPHA_DEPTH_TEST(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public static greylist-max-o BLEND_NONE_DEPTH_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public static greylist-max-o BLEND_NONE_DEPTH_TEST(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o getBlendDstFunc()Landroid/renderscript/ProgramStore$BlendDstFunc;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-object v0
.end method

.method public greylist-max-o getBlendSrcFunc()Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    return-object v0
.end method

.method public greylist-max-o getDepthFunc()Landroid/renderscript/ProgramStore$DepthFunc;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    return-object v0
.end method

.method public greylist-max-o isColorMaskAlphaEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    return v0
.end method

.method public greylist-max-o isColorMaskBlueEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    return v0
.end method

.method public greylist-max-o isColorMaskGreenEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    return v0
.end method

.method public greylist-max-o isColorMaskRedEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    return v0
.end method

.method public greylist-max-o isDepthMaskEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    return v0
.end method

.method public greylist-max-o isDitherEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mDither:Z

    return v0
.end method
