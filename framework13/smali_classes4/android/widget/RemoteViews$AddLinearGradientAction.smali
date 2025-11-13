.class Landroid/widget/RemoteViews$AddLinearGradientAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddLinearGradientAction"
.end annotation


# static fields
.field public static final blacklist TAG:I = 0x2d


# instance fields
.field blacklist alphas:[F

.field blacklist angle:F

.field blacklist blendingOpacity:F

.field blacklist colors:[I

.field final blacklist methodName:Ljava/lang/String;

.field blacklist positions:[F

.field blacklist scale:F

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;IFF[I[F[FF)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "angle"    # F
    .param p4, "scale"    # F
    .param p5, "colors"    # [I
    .param p6, "alphas"    # [F
    .param p7, "positions"    # [F
    .param p8, "blendingOpacity"    # F

    .line 7588
    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7636
    const-string p1, "addLinearGradientTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->methodName:Ljava/lang/String;

    .line 7589
    iput p2, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    .line 7590
    iput p3, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    .line 7591
    iput p4, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    .line 7592
    iput-object p5, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    .line 7593
    iput-object p6, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    .line 7594
    iput-object p7, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    .line 7595
    iput p8, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    .line 7596
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7598
    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7636
    const-string p1, "addLinearGradientTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->methodName:Ljava/lang/String;

    .line 7599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    .line 7600
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    .line 7601
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    .line 7602
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    .line 7603
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    .line 7604
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    .line 7605
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    .line 7606
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 7620
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7621
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    return-void

    .line 7622
    :cond_0
    iget v2, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    iget v3, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    iget-object v4, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    iget-object v5, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    iget-object v6, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    iget v7, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->semAddLinearGradientTextEffect(FF[I[F[FF)I

    .line 7623
    return-void
.end method

.method public blacklist getActionName()Ljava/lang/String;
    .locals 1

    .line 7626
    const-string v0, "AddLinearGradientAction"

    return-object v0
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 7638
    const/16 v0, 0x2d

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7609
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7610
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7611
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7612
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7613
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 7614
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 7615
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7616
    return-void
.end method
