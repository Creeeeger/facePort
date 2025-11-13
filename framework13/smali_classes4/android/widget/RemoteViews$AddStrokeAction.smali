.class Landroid/widget/RemoteViews$AddStrokeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddStrokeAction"
.end annotation


# static fields
.field public static final blacklist TAG:I = 0x2c


# instance fields
.field blacklist blendingOpacity:F

.field blacklist color:I

.field final blacklist methodName:Ljava/lang/String;

.field blacklist size:F

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;IFIF)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "size"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .line 7542
    iput-object p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7579
    const-string p1, "addStrokeTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->methodName:Ljava/lang/String;

    .line 7543
    iput p2, p0, Landroid/widget/RemoteViews$AddStrokeAction;->viewId:I

    .line 7544
    iput p3, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    .line 7545
    iput p4, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    .line 7546
    iput p5, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    .line 7547
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7549
    iput-object p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7579
    const-string p1, "addStrokeTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->methodName:Ljava/lang/String;

    .line 7550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->viewId:I

    .line 7551
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    .line 7552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    .line 7553
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    .line 7554
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 7565
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7566
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    return-void

    .line 7567
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    iget v2, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    iget v3, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    .line 7568
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 7569
    return-void
.end method

.method public blacklist getActionName()Ljava/lang/String;
    .locals 1

    .line 7572
    const-string v0, "AddStrokeAction"

    return-object v0
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 7581
    const/16 v0, 0x2c

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7557
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7558
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7559
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7560
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7561
    return-void
.end method
