.class Landroid/widget/RemoteViews$AddInnerShadowAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddInnerShadowAction"
.end annotation


# static fields
.field public static final blacklist TAG:I = 0x2b


# instance fields
.field blacklist angle:F

.field blacklist blendingOpacity:F

.field blacklist color:I

.field final blacklist methodName:Ljava/lang/String;

.field blacklist offset:F

.field blacklist softness:F

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;IFFFIF)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "angle"    # F
    .param p4, "offset"    # F
    .param p5, "softness"    # F
    .param p6, "color"    # I
    .param p7, "blendingOpacity"    # F

    .line 7488
    iput-object p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7533
    const-string p1, "addInnerShadowTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->methodName:Ljava/lang/String;

    .line 7489
    iput p2, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->viewId:I

    .line 7490
    iput p3, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    .line 7491
    iput p4, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    .line 7492
    iput p5, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    .line 7493
    iput p6, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    .line 7494
    iput p7, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    .line 7495
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7497
    iput-object p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7533
    const-string p1, "addInnerShadowTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->methodName:Ljava/lang/String;

    .line 7498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->viewId:I

    .line 7499
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    .line 7500
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    .line 7501
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    .line 7502
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    .line 7503
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    .line 7504
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 7517
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7518
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    return-void

    .line 7519
    :cond_0
    iget v2, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    iget v3, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    iget v4, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    iget v5, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    iget v6, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/TextView;->semAddInnerShadowTextEffect(FFFIF)I

    .line 7520
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 7521
    return-void
.end method

.method public blacklist getActionName()Ljava/lang/String;
    .locals 1

    .line 7524
    const-string v0, "AddInnerShadowAction"

    return-object v0
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 7535
    const/16 v0, 0x2b

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7507
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7508
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7509
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7510
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7511
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7512
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7513
    return-void
.end method
