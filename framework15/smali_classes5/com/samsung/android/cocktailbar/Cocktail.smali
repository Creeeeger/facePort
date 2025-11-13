.class public Lcom/samsung/android/cocktailbar/Cocktail;
.super Ljava/lang/Object;
.source "Cocktail.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATE_DISABLE:I = 0x2

.field public static final blacklist STATE_ENABLE:I = 0x1

.field public static final blacklist STATE_NONE:I


# instance fields
.field private blacklist mBroadcast:Landroid/app/PendingIntent;

.field private blacklist mCocktailId:I

.field private blacklist mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

.field private blacklist mEnable:Z

.field private blacklist mIsPackageSuspended:Z

.field private blacklist mIsPackageUpdated:Z

.field private blacklist mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

.field private blacklist mState:I

.field private blacklist mUid:I

.field private blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/cocktailbar/Cocktail$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/Cocktail$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/Cocktail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mEnable:Z

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageSuspended:Z

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mEnable:Z

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageSuspended:Z

    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    return-void
.end method

.method public constructor blacklist <init>(ILcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    return-void
.end method

.method public static blacklist getUpdateIntentName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string v0, "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

    return-object v0

    :pswitch_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist addCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CocktailId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has broadcast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->dump()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBroadcast()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getCocktailId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    return v0
.end method

.method public blacklist getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    return-object v0
.end method

.method public blacklist getProvider()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    iget-object v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    return-object v0
.end method

.method public blacklist getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    return v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    return v0
.end method

.method public blacklist getUpdateIntentName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    return v0
.end method

.method public blacklist isPackageSuspended()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageSuspended:Z

    return v0
.end method

.method public blacklist isPackageUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    const-class v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageSuspended:Z

    return-void
.end method

.method public blacklist setBroadcast(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    return-void
.end method

.method public blacklist setPackageSuspended(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageSuspended:Z

    return-void
.end method

.method public blacklist setPackageUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    return-void
.end method

.method public blacklist setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    return-void
.end method

.method public blacklist setState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    return-void
.end method

.method public blacklist setUid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    return-void
.end method

.method public blacklist setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    return-void
.end method

.method public blacklist updateCocktailContentView(Landroid/widget/RemoteViews;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo;->updateContentView(Landroid/widget/RemoteViews;Z)V

    :cond_0
    return-void
.end method

.method public blacklist updateCocktailHelpView(Landroid/widget/RemoteViews;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo;->updateHelpView(Landroid/widget/RemoteViews;Z)V

    :cond_0
    return-void
.end method

.method public blacklist updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->mergeInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    :goto_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageSuspended:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    return-void
.end method
