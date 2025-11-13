.class Landroid/widget/RemoteViews$SetRemoteInputsAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetRemoteInputsAction"
.end annotation


# instance fields
.field final blacklist mRemoteInputs:[Landroid/os/Parcelable;


# direct methods
.method public constructor blacklist <init>(I[Landroid/app/RemoteInput;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    iput-object p2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    sget-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 3

    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x10204e4

    iget-object v2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
