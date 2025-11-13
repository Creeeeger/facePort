.class Landroid/widget/RemoteViews$SetIntTagAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetIntTagAction"
.end annotation


# instance fields
.field private final blacklist mKey:I

.field private final blacklist mTag:I

.field private final blacklist mViewId:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;III)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "key"    # I
    .param p4, "tag"    # I

    .line 3509
    iput-object p1, p0, Landroid/widget/RemoteViews$SetIntTagAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3510
    iput p2, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mViewId:I

    .line 3511
    iput p3, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mKey:I

    .line 3512
    iput p4, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mTag:I

    .line 3513
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 3515
    iput-object p1, p0, Landroid/widget/RemoteViews$SetIntTagAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mViewId:I

    .line 3517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mKey:I

    .line 3518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mTag:I

    .line 3519
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 3530
    iget v0, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3531
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 3533
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mKey:I

    iget v2, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mTag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 3534
    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 3538
    const/16 v0, 0x16

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3522
    iget v0, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3523
    iget v0, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3524
    iget v0, p0, Landroid/widget/RemoteViews$SetIntTagAction;->mTag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3525
    return-void
.end method
