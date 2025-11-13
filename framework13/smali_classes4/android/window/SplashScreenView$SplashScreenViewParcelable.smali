.class public Landroid/window/SplashScreenView$SplashScreenViewParcelable;
.super Ljava/lang/Object;
.source "SplashScreenView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashScreenViewParcelable"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/SplashScreenView$SplashScreenViewParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mBrandingBitmap:Landroid/graphics/Bitmap;

.field private blacklist mBrandingHeight:I

.field private blacklist mBrandingWidth:I

.field private blacklist mClientCallback:Landroid/os/RemoteCallback;

.field private blacklist mIconAnimationDurationMillis:J

.field private blacklist mIconAnimationStartMillis:J

.field private blacklist mIconBackground:Landroid/graphics/Bitmap;

.field private blacklist mIconBitmap:Landroid/graphics/Bitmap;

.field private blacklist mIconSize:I

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrandingHeight(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I
    .locals 0

    iget p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrandingWidth(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I
    .locals 0

    iget p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientCallback(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/os/RemoteCallback;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconAnimationDurationMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J
    .locals 2

    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconAnimationStartMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J
    .locals 2

    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfacePackage(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 806
    new-instance v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable$1;

    invoke-direct {v0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable$1;-><init>()V

    sput-object v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 769
    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->readParcel(Landroid/os/Parcel;)V

    .line 770
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/SplashScreenView$SplashScreenViewParcelable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/SplashScreenView;)V
    .locals 4
    .param p1, "view"    # Landroid/window/SplashScreenView;

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 724
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 725
    .local v1, "iconView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    .line 726
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    move-result v2

    iput v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    .line 727
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    iput-object v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    .line 728
    invoke-static {p1}, Landroid/window/SplashScreenView;->-$$Nest$fgetmSurfacePackageCopy(Landroid/window/SplashScreenView;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v2

    iput-object v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 729
    if-nez v2, :cond_3

    .line 731
    if-eqz v1, :cond_2

    .line 732
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_2
    nop

    :goto_2
    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 734
    :cond_3
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    .line 736
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 737
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    .line 738
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    .line 740
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationStart()Ljava/time/Instant;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 741
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationStart()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    .line 743
    :cond_4
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationDuration()Ljava/time/Duration;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 744
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationDuration()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    .line 746
    :cond_5
    return-void
.end method

.method private blacklist copyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 749
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 750
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 751
    .local v1, "initialBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 752
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 753
    .local v3, "height":I
    if-lez v2, :cond_1

    if-gtz v3, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 758
    .local v0, "snapshot":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 759
    .local v4, "bmpCanvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 760
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 761
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 762
    .local v5, "copyBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 763
    return-object v5

    .line 754
    .end local v0    # "snapshot":Landroid/graphics/Bitmap;
    .end local v4    # "bmpCanvas":Landroid/graphics/Canvas;
    .end local v5    # "copyBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 765
    .end local v1    # "initialBounds":Landroid/graphics/Rect;
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_2
    return-object v0
.end method

.method private blacklist readParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    .line 775
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    .line 778
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    .line 781
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    .line 782
    sget-object v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 783
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    .line 784
    return-void
.end method


# virtual methods
.method public blacklist clearIfNeeded()V
    .locals 2

    .line 820
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 822
    iput-object v1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 824
    :cond_0
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 826
    iput-object v1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    .line 828
    :cond_1
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getBackgroundColor()I
    .locals 1

    .line 835
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    return v0
.end method

.method blacklist getIconSize()I
    .locals 1

    .line 831
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    return v0
.end method

.method public blacklist setClientCallback(Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "clientCallback"    # Landroid/os/RemoteCallback;

    .line 843
    iput-object p1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    .line 844
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 793
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 796
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 799
    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 800
    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 801
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 802
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 803
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 804
    return-void
.end method
