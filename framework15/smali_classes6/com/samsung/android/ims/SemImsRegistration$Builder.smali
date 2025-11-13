.class public Lcom/samsung/android/ims/SemImsRegistration$Builder;
.super Ljava/lang/Object;
.source "SemImsRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeregiReason:I

.field protected blacklist mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mDomain:Ljava/lang/String;

.field private blacklist mEcmpStatus:I

.field private blacklist mEpdgOverCellularData:Z

.field private blacklist mEpdgStatus:Z

.field protected blacklist mHandle:I

.field protected blacklist mInstanceId:Ljava/lang/String;

.field private blacklist mNetwork:Landroid/net/Network;

.field protected blacklist mOwnNumber:Ljava/lang/String;

.field private blacklist mPAssociatedUri2nd:Ljava/lang/String;

.field protected blacklist mPcscf:Ljava/lang/String;

.field protected blacklist mPdnType:I

.field protected blacklist mPhoneId:I

.field protected blacklist mPreferredPublicUserId:Ljava/lang/String;

.field protected blacklist mPrivateUserId:Ljava/lang/String;

.field private blacklist mProhibited:Z

.field protected blacklist mPublicUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mRat:I

.field private blacklist mRegExpiryStatus:I

.field private blacklist mRegisterSipResponse:Ljava/lang/String;

.field protected blacklist mRegisteredPublicUserId:Ljava/lang/String;

.field blacklist mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSubscriptionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeregiReason(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEcmpStatus(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEcmpStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEpdgOverCellularData(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEpdgOverCellularData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEpdgStatus(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEpdgStatus:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetwork(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPAssociatedUri2nd(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProhibited(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegExpiryStatus(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegExpiryStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisterSipResponse(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mSubscriptionId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPhoneId:I

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    return-void
.end method


# virtual methods
.method public blacklist addService(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist build()Lcom/samsung/android/ims/SemImsRegistration;
    .locals 1

    new-instance v0, Lcom/samsung/android/ims/SemImsRegistration;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/SemImsRegistration;-><init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V

    return-object v0
.end method

.method public blacklist setDeregiReason(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    return-object p0
.end method

.method public blacklist setDeviceList(Ljava/util/List;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/SemImsRegistration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public blacklist setDomain(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setEcmpStatus(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEcmpStatus:I

    return-object p0
.end method

.method public blacklist setEpdgOverCellularData(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEpdgOverCellularData:Z

    return-object p0
.end method

.method public blacklist setEpdgStatus(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEpdgStatus:Z

    return-object p0
.end method

.method public blacklist setHandle(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mHandle:I

    return-object p0
.end method

.method public blacklist setInstanceId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNetwork(Landroid/net/Network;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public blacklist setOwnNumber(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mOwnNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPAssociatedUri2nd(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPcscf(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPdnType(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPdnType:I

    return-object p0
.end method

.method public blacklist setPhoneId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPhoneId:I

    return-object p0
.end method

.method public blacklist setPreferredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPreferredPublicUserId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPrivateUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setProhibited(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    return-object p0
.end method

.method public blacklist setPublicUserId(Ljava/util/List;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/SemImsRegistration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public blacklist setRegExpiryStatus(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegExpiryStatus:I

    return-object p0
.end method

.method public blacklist setRegiRat(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRat:I

    return-object p0
.end method

.method public blacklist setRegisterSipResponse(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setRegisteredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisteredPublicUserId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setServices(Ljava/util/Set;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/SemImsRegistration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public blacklist setSubscriptionId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mSubscriptionId:I

    return-object p0
.end method
