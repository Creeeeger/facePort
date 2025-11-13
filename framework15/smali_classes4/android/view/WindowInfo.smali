.class public Landroid/view/WindowInfo;
.super Ljava/lang/Object;
.source "WindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0xa

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o accessibilityIdOfAnchor:J

.field public greylist-max-o activityToken:Landroid/os/IBinder;

.field public greylist-max-o childTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist displayId:I

.field public greylist-max-o focused:Z

.field public blacklist hasFlagWatchOutsideTouch:Z

.field public greylist-max-o inPictureInPicture:Z

.field public greylist-max-o layer:I

.field public blacklist locales:Landroid/os/LocaleList;

.field public blacklist mMagnificationSpec:Landroid/view/MagnificationSpec;

.field public blacklist mTransformMatrix:[F

.field public greylist-max-o parentToken:Landroid/os/IBinder;

.field public blacklist regionInScreen:Landroid/graphics/Region;

.field public blacklist taskId:I

.field public greylist-max-o title:Ljava/lang/CharSequence;

.field public greylist-max-o token:Landroid/os/IBinder;

.field public greylist-max-o type:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/view/WindowInfo;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/WindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    new-instance v0, Landroid/view/WindowInfo$1;

    invoke-direct {v0}, Landroid/view/WindowInfo$1;-><init>()V

    sput-object v0, Landroid/view/WindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowInfo;->displayId:I

    iput v0, p0, Landroid/view/WindowInfo;->taskId:I

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    new-instance v0, Landroid/view/MagnificationSpec;

    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    return-void
.end method

.method private greylist-max-o clear()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowInfo;->displayId:I

    iput v0, p0, Landroid/view/WindowInfo;->taskId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowInfo;->type:I

    iput v0, p0, Landroid/view/WindowInfo;->layer:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iput-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    iput-boolean v0, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iput-boolean v0, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    iput-object v1, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    iput-object v0, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iget-object v0, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    move v0, v1

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    :cond_4
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    :cond_5
    sget-object v1, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MagnificationSpec;

    iput-object v1, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v1, 0x0

    const-class v2, Landroid/os/LocaleList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    return-void
.end method

.method public static greylist-max-o obtain()Landroid/view/WindowInfo;
    .locals 2

    sget-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/WindowInfo;

    invoke-direct {v1}, Landroid/view/WindowInfo;-><init>()V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public static greylist-max-o obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;
    .locals 4

    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowInfo;->displayId:I

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    iget v1, p0, Landroid/view/WindowInfo;->taskId:I

    iput v1, v0, Landroid/view/WindowInfo;->taskId:I

    iget v1, p0, Landroid/view/WindowInfo;->type:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    iget v1, p0, Landroid/view/WindowInfo;->layer:I

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    iget-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iget-boolean v1, p0, Landroid/view/WindowInfo;->focused:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->focused:Z

    iget-object v1, v0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v1, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-wide v1, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iput-wide v1, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-boolean v1, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iget-boolean v1, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    iget-object v3, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    iget-object v1, v0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    iget-object v1, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o recycle()V
    .locals 1

    invoke-direct {p0}, Landroid/view/WindowInfo;->clear()V

    sget-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessibility anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", watchOutsideTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    const-string v2, ", mTransformMatrix="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mMagnificationSpec="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", locales="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1, p2}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
