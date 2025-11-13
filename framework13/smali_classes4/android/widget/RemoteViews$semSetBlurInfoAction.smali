.class Landroid/widget/RemoteViews$semSetBlurInfoAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "semSetBlurInfoAction"
.end annotation


# instance fields
.field blacklist blurInfo:Landroid/view/SemBlurInfo;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;

.field blacklist viewId:I


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/view/SemBlurInfo;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "blurInfo"    # Landroid/view/SemBlurInfo;

    .line 8309
    iput-object p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 8310
    iput p2, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    .line 8311
    iput-object p3, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    .line 8312
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 8314
    iput-object p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 8315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    .line 8316
    sget-object p1, Landroid/view/SemBlurInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SemBlurInfo;

    iput-object p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    .line 8317
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 8326
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    iget-object v1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->this$0:Landroid/widget/RemoteViews;

    iget v2, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    iget-object v5, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    const-string/jumbo v3, "semSetBlurInfo"

    const/16 v4, 0x1e

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    .line 8329
    .local v0, "ra":Landroid/widget/RemoteViews$ReflectionAction;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$ReflectionAction;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    .line 8330
    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 8334
    const/16 v0, 0x69

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 8320
    iget v0, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8321
    iget-object v0, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/SemBlurInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8322
    return-void
.end method
