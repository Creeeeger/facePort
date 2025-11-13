.class public Lcom/samsung/android/ims/SemImsRegistration;
.super Ljava/lang/Object;
.source "SemImsRegistration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemImsRegistration$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/SemImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemImsRegistration"

.field private static final blacklist NETWORK_TYPE_MOBILE:I = 0x1

.field private static final blacklist NETWORK_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist NETWORK_TYPE_WIFI:I = 0x2


# instance fields
.field private blacklist mDeregiReason:I

.field private final blacklist mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDomain:Ljava/lang/String;

.field private final blacklist mEcmpStatus:I

.field private blacklist mEpdgOverCellularData:Z

.field private blacklist mEpdgStatus:Z

.field private final blacklist mHandle:I

.field private final blacklist mInstanceId:Ljava/lang/String;

.field private final blacklist mNetwork:Landroid/net/Network;

.field private final blacklist mOwnNumber:Ljava/lang/String;

.field private blacklist mPAssociatedUri2nd:Ljava/lang/String;

.field private final blacklist mPcscf:Ljava/lang/String;

.field private final blacklist mPdnType:I

.field private final blacklist mPhoneId:I

.field private final blacklist mPreferredPublicUserId:Ljava/lang/String;

.field private final blacklist mPrivateUserId:Ljava/lang/String;

.field private blacklist mProhibited:Z

.field private final blacklist mPublicUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRat:I

.field private final blacklist mRegExpiryStatus:I

.field private final blacklist mRegisterSipResponse:Ljava/lang/String;

.field private final blacklist mRegisteredPublicUserId:Ljava/lang/String;

.field private final blacklist mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubscriptionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 418
    new-instance v0, Lcom/samsung/android/ims/SemImsRegistration$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/SemImsRegistration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/SemImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 78
    const/16 v1, 0xe

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 79
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    .line 433
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    .line 434
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsRegistration;->readServices(Landroid/os/Parcel;)V

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    goto :goto_0

    .line 442
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    .line 444
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 446
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    .line 448
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v0, v3

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    goto :goto_2

    .line 462
    :cond_3
    iput-object v2, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 464
    :goto_2
    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    .line 467
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/SemImsRegistration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsRegistration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 78
    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 515
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mHandle:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    .line 516
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    .line 517
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRat:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    .line 518
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    .line 519
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 520
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisteredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    .line 521
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPreferredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    .line 522
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 523
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    .line 524
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mSubscriptionId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    .line 525
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPhoneId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    .line 526
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 527
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPdnType:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    .line 528
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    .line 529
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmEcmpStatus(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    .line 530
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmRegExpiryStatus(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    .line 531
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmEpdgStatus(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    .line 532
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmEpdgOverCellularData(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    .line 533
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmProhibited(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 534
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmRegisterSipResponse(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 535
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmNetwork(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    .line 536
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmDeregiReason(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 537
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmPAssociatedUri2nd(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 538
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mOwnNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/ims/SemImsRegistration;)V
    .locals 2
    .param p1, "src"    # Lcom/samsung/android/ims/SemImsRegistration;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 78
    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 485
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    .line 486
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    .line 487
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    .line 488
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    .line 489
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 490
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    .line 491
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    .line 494
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    .line 495
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    .line 496
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 497
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    .line 498
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    .line 499
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    .line 500
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    .line 501
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    .line 502
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    .line 503
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 504
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 505
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    .line 506
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 507
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 508
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/ims/SemImsRegistration;Ljava/util/Set;)V
    .locals 2
    .param p1, "src"    # Lcom/samsung/android/ims/SemImsRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ims/SemImsRegistration;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 544
    .local p2, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 78
    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 545
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    .line 546
    iput-object p2, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    .line 547
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    .line 548
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    .line 549
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 550
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    .line 551
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    .line 554
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    .line 555
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    .line 556
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 557
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    .line 558
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    .line 559
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    .line 560
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    .line 561
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    .line 562
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    .line 563
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 564
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 565
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    .line 566
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 567
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 568
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public static blacklist getBuilder()Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1

    .line 575
    new-instance v0, Lcom/samsung/android/ims/SemImsRegistration$Builder;

    invoke-direct {v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;-><init>()V

    return-object v0
.end method

.method private blacklist readServices(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 478
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 479
    return-void
.end method

.method private blacklist writeServices(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 471
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeregiReason()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    return v0
.end method

.method public whitelist getDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getDomain()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEcmpStatus()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    return v0
.end method

.method public whitelist getEpdgStatus()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    return v0
.end method

.method public blacklist getHandle()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    return v0
.end method

.method public blacklist getImpi()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImpuList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getInstanceId()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNetwork()Landroid/net/Network;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public blacklist getNetworkType()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    return v0
.end method

.method public whitelist getOwnNumber()Ljava/lang/String;
    .locals 2

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    const/16 v1, 0xaf2

    if-lt v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    return-object v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsRegistration;->getPreferredImpu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPcscf()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPhoneId()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    return v0
.end method

.method public whitelist getPreferredImpu()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRegisterSipResponse()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRegisteredFeatures()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getRegisteredImpu()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRegisteredRat()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    return v0
.end method

.method public blacklist getSecondPAssociatedUri()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getSubscriptionId()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    return v0
.end method

.method public whitelist hasRcsService()Z
    .locals 2

    .line 195
    new-instance v0, Ljava/util/HashSet;

    .line 196
    invoke-static {}, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v0, "rcsServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public whitelist hasService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isEpdgOverCellularData()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    return v0
.end method

.method public blacklist isImsiBased(Ljava/lang/String;)Z
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public blacklist isProhibited()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    return v0
.end method

.method public blacklist setDeregiReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 324
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 325
    return-void
.end method

.method public blacklist setEpdgOverCellularData(Z)V
    .locals 0
    .param p1, "isEpdgOverCellularData"    # Z

    .line 281
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    .line 282
    return-void
.end method

.method public blacklist setEpdgStatus(Z)V
    .locals 0
    .param p1, "isEpdgConnected"    # Z

    .line 266
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    .line 267
    return-void
.end method

.method public blacklist setProhibited(Z)V
    .locals 0
    .param p1, "prohibited"    # Z

    .line 296
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 297
    return-void
.end method

.method public blacklist setRegiRat(I)V
    .locals 0
    .param p1, "rat"    # I

    .line 338
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    .line 339
    return-void
.end method

.method public blacklist setSecondPAssociatedUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "pAssociatedUri"    # Ljava/lang/String;

    .line 356
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 381
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsRegistration;->writeServices(Landroid/os/Parcel;)V

    .line 383
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 397
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 407
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 409
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 413
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    return-void
.end method
