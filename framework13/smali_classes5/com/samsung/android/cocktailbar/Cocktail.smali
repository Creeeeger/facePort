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

.field private blacklist mIsPackageUpdated:Z

.field private blacklist mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

.field private blacklist mState:I

.field private blacklist mUid:I

.field private blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 378
    new-instance v0, Lcom/samsung/android/cocktailbar/Cocktail$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/Cocktail$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/Cocktail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    .line 45
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    .line 48
    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    .line 49
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mEnable:Z

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "cocktailId"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    .line 45
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    .line 48
    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    .line 49
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mEnable:Z

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    .line 68
    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(ILcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 0
    .param p1, "cocktailId"    # I
    .param p2, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    .line 81
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 82
    return-void
.end method

.method public static blacklist getUpdateIntentName(I)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # I

    .line 307
    const-string v0, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    packed-switch p0, :pswitch_data_0

    .line 313
    return-object v0

    .line 311
    :pswitch_0
    const-string v0, "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

    return-object v0

    .line 309
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
    .param p1, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 259
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump()Ljava/lang/String;
    .locals 4

    .line 321
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

    .line 322
    .local v0, "dumpResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has broadcast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->dump()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "cocktailInfoDump":Ljava/lang/String;
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

    .line 329
    .end local v1    # "cocktailInfoDump":Ljava/lang/String;
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

    .line 330
    return-object v0
.end method

.method public blacklist getBroadcast()Landroid/app/PendingIntent;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getCocktailId()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    return v0
.end method

.method public blacklist getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    return-object v0
.end method

.method public blacklist getProvider()Landroid/content/ComponentName;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    return-object v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    return-object v0
.end method

.method public blacklist getState()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    return v0
.end method

.method public blacklist getUid()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    return v0
.end method

.method public blacklist getUpdateIntentName()Ljava/lang/String;
    .locals 1

    .line 303
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersion()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    return v0
.end method

.method public blacklist isPackageUpdated()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    .line 361
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    .line 362
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    .line 363
    const-class v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    .line 365
    return-void
.end method

.method public blacklist setBroadcast(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "broadcast"    # Landroid/app/PendingIntent;

    .line 191
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    .line 192
    return-void
.end method

.method public blacklist setPackageUpdated(Z)V
    .locals 0
    .param p1, "isUpdated"    # Z

    .line 239
    iput-boolean p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    .line 240
    return-void
.end method

.method public blacklist setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V
    .locals 0
    .param p1, "providerInfo"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    .line 92
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    .line 93
    return-void
.end method

.method public blacklist setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 227
    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    .line 228
    return-void
.end method

.method public blacklist setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 103
    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    .line 104
    return-void
.end method

.method public blacklist setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 114
    iput p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    .line 115
    return-void
.end method

.method public blacklist updateCocktailContentView(Landroid/widget/RemoteViews;Z)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "isPartialUpdate"    # Z

    .line 283
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo;->updateContentView(Landroid/widget/RemoteViews;Z)V

    .line 286
    :cond_0
    return-void
.end method

.method public blacklist updateCocktailHelpView(Landroid/widget/RemoteViews;Z)V
    .locals 1
    .param p1, "helpView"    # Landroid/widget/RemoteViews;
    .param p2, "isPartialUpdate"    # Z

    .line 297
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo;->updateHelpView(Landroid/widget/RemoteViews;Z)V

    .line 300
    :cond_0
    return-void
.end method

.method public blacklist updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V
    .locals 1
    .param p1, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 267
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->mergeInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    goto :goto_1

    .line 268
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 272
    :goto_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 339
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mBroadcast:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mProviderInfo:Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mCocktailInfo:Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 346
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/Cocktail;->mIsPackageUpdated:Z

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 349
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 351
    :goto_0
    return-void
.end method
