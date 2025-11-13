.class public final Landroid/renderscript/ScriptIntrinsicConvolve5x5;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve5x5.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mInput:Landroid/renderscript/Allocation;

.field private blacklist mScenario:Lcom/samsung/epic/Request;

.field private final greylist-max-o mValues:[F


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    const/16 v0, 0x19

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mScenario:Lcom/samsung/epic/Request;

    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve5x5;
    .locals 5

    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported element type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    new-instance v2, Landroid/renderscript/ScriptIntrinsicConvolve5x5;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;-><init>(JLandroid/renderscript/RenderScript;)V

    new-instance v3, Lcom/samsung/epic/Request;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/samsung/epic/Request;-><init>(I)V

    iput-object v3, v2, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mScenario:Lcom/samsung/epic/Request;

    iget-object v3, v2, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mScenario:Lcom/samsung/epic/Request;

    invoke-virtual {v3}, Lcom/samsung/epic/Request;->acquire_lock()Z

    return-object v2
.end method


# virtual methods
.method public whitelist forEach(Landroid/renderscript/Allocation;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, v0}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Landroid/renderscript/Allocation;

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public whitelist getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setCoefficients([F)V
    .locals 4

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    aget v3, p1, v1

    aput v3, v2, v1

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public whitelist setInput(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->mInput:Landroid/renderscript/Allocation;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method
