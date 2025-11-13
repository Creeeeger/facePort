.class Landroid/widget/RemoteViews$BitmapReflectionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapReflectionAction"
.end annotation


# instance fields
.field greylist mBitmap:Landroid/graphics/Bitmap;

.field blacklist mBitmapId:I

.field greylist mMethodName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput-object p4, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mViewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
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

    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mViewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object p1

    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    iget v1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mViewId:I

    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mMethodName:Ljava/lang/String;

    const/16 v3, 0xc

    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$ReflectionAction;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 2

    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
