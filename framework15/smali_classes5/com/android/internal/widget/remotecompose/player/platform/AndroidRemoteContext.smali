.class Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
.super Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.source "AndroidRemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;
    }
.end annotation


# instance fields
.field blacklist mVarNameHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blacklist addClickArea(IIFFFFI)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move v2, p2

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move/from16 v11, p7

    invoke-virtual {v3, v11}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move v4, p1

    move-object v5, v1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object v10, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V

    return-void
.end method

.method public blacklist getColor(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getColor(I)I

    move-result v0

    return v0
.end method

.method public blacklist getFloat(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    return-object v0
.end method

.method public blacklist getText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->listenToVar(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    return-void
.end method

.method public blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist loadBitmap(III[B)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p4

    invoke-static {p4, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist loadColor(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateColor(II)V

    return-void
.end method

.method public blacklist loadFloat(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    return-void
.end method

.method public blacklist loadPathData(I[F)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist loadText(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->update(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public blacklist loadVariableName(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist updateOps()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getOpsToUpdate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    return v0
.end method

.method public blacklist useCanvas(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->reset()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->setCanvas(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mWidth:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mHeight:F

    return-void
.end method
