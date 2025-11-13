.class public final Landroid/renderscript/Script$KernelID;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KernelID"
.end annotation


# instance fields
.field greylist-max-o mScript:Landroid/renderscript/Script;

.field greylist-max-o mSig:I

.field greylist-max-o mSlot:I


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p4, p0, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    iput p5, p0, Landroid/renderscript/Script$KernelID;->mSlot:I

    iput p6, p0, Landroid/renderscript/Script$KernelID;->mSig:I

    return-void
.end method
