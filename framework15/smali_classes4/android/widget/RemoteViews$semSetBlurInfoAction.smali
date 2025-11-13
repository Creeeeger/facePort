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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p2, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    sget-object p1, Landroid/view/SemBlurInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SemBlurInfo;

    iput-object p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 5

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    iget v1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    const/16 v2, 0x1e

    iget-object v3, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    const-string/jumbo v4, "semSetBlurInfo"

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$ReflectionAction;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    const/16 v0, 0x69

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/SemBlurInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
