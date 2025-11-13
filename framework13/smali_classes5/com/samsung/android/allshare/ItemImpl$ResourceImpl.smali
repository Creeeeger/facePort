.class final Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;
.super Lcom/samsung/android/allshare/Item$Resource;
.source "ItemImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ItemImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResourceImpl"
.end annotation


# instance fields
.field public final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBundle:Landroid/os/Bundle;

.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ItemImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ItemImpl;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ItemImpl;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 387
    iput-object p1, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->this$0:Lcom/samsung/android/allshare/ItemImpl;

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/Item$Resource;-><init>(Lcom/samsung/android/allshare/Item;)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    .line 489
    new-instance v0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl$1;-><init>(Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 388
    iput-object p2, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    .line 389
    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemImpl;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ItemImpl;
    .param p2, "src"    # Landroid/os/Parcel;

    .line 485
    iput-object p1, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->this$0:Lcom/samsung/android/allshare/ItemImpl;

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/Item$Resource;-><init>(Lcom/samsung/android/allshare/Item;)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    .line 489
    new-instance v0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl$1;-><init>(Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 486
    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 487
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/ItemImpl;Landroid/os/Parcel;Lcom/samsung/android/allshare/ItemImpl$ResourceImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;-><init>(Lcom/samsung/android/allshare/ItemImpl;Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 480
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 482
    .local v0, "bundle":Landroid/os/Bundle;
    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    .line 483
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBitrate()I
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 464
    const/4 v0, -0x1

    return v0

    .line 466
    :cond_0
    const-string v1, "BUNDLE_STRING_RESOURCE_ITEM_BITRATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 427
    const-wide/16 v0, -0x1

    return-wide v0

    .line 429
    :cond_0
    const-string v1, "BUNDLE_LONG_RESOURCE_ITEM_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFileSize()J
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 443
    const-wide/16 v0, -0x1

    return-wide v0

    .line 445
    :cond_0
    const-string v1, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 446
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 447
    const-wide/16 v0, -0x1

    .line 450
    :cond_1
    return-wide v0
.end method

.method public blacklist getMimetype()Ljava/lang/String;
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 456
    const-string v0, ""

    return-object v0

    .line 458
    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResolution()Ljava/lang/String;
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 435
    const-string v0, ""

    return-object v0

    .line 437
    :cond_0
    const-string v1, "BUNDLE_STRING_RESOURCE_ITEM_RESOLUTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 406
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 408
    :cond_0
    nop

    .line 409
    const-string v1, "BUNDLE_STRING_RESOURCE_ITEM_SEEKMODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "seekModeStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 411
    sget-object v1, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v1

    .line 413
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/allshare/Item$SeekMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$SeekMode;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getType()Lcom/samsung/android/allshare/Item$MediaType;
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 394
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 396
    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "typeStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 398
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v1

    .line 400
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    return-object v0

    .line 421
    :cond_0
    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 476
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 477
    return-void
.end method
