.class Landroid/widget/RemoteViews$AddOuterShadowAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOuterShadowAction"
.end annotation


# static fields
.field public static final blacklist TAG:I = 0x2a


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

    .line 7434
    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7479
    const-string p1, "addOuterShadowTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->methodName:Ljava/lang/String;

    .line 7435
    iput p2, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    .line 7436
    iput p3, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    .line 7437
    iput p4, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    .line 7438
    iput p5, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    .line 7439
    iput p6, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    .line 7440
    iput p7, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    .line 7441
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7443
    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7479
    const-string p1, "addOuterShadowTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->methodName:Ljava/lang/String;

    .line 7444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    .line 7445
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    .line 7446
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    .line 7447
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    .line 7448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    .line 7449
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    .line 7450
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 7463
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7464
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    return-void

    .line 7465
    :cond_0
    iget v2, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    iget v3, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    iget v4, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    iget v5, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    iget v6, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/TextView;->semAddOuterShadowTextEffect(FFFIF)I

    .line 7466
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 7467
    return-void
.end method

.method public blacklist getActionName()Ljava/lang/String;
    .locals 1

    .line 7470
    const-string v0, "AddOuterShadowAction"

    return-object v0
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 7481
    const/16 v0, 0x2a

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7453
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7454
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7455
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7456
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7457
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7458
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7459
    return-void
.end method
