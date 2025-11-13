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

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    .line 593
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mSubscriptionId:I

    .line 594
    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPhoneId:I

    .line 604
    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    .line 607
    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    .line 611
    return-void
.end method


# virtual methods
.method public blacklist addService(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 636
    return-object p0
.end method

.method public blacklist build()Lcom/samsung/android/ims/SemImsRegistration;
    .locals 1

    .line 614
    new-instance v0, Lcom/samsung/android/ims/SemImsRegistration;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/SemImsRegistration;-><init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V

    return-object v0
.end method

.method public blacklist setDeregiReason(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "reason"    # I

    .line 720
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    .line 721
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

    .line 665
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 666
    return-object p0
.end method

.method public blacklist setDomain(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .line 640
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDomain:Ljava/lang/String;

    .line 641
    return-object p0
.end method

.method public blacklist setEcmpStatus(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "ecmp"    # I

    .line 695
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEcmpStatus:I

    .line 696
    return-object p0
.end method

.method public blacklist setEpdgOverCellularData(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "epdgOverCellularData"    # Z

    .line 710
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEpdgOverCellularData:Z

    .line 711
    return-object p0
.end method

.method public blacklist setEpdgStatus(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "epdgStatus"    # Z

    .line 705
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEpdgStatus:Z

    .line 706
    return-object p0
.end method

.method public blacklist setHandle(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "handle"    # I

    .line 618
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mHandle:I

    .line 619
    return-object p0
.end method

.method public blacklist setInstanceId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 680
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    .line 681
    return-object p0
.end method

.method public blacklist setNetwork(Landroid/net/Network;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 730
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    .line 731
    return-object p0
.end method

.method public blacklist setOwnNumber(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "ownNumber"    # Ljava/lang/String;

    .line 740
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mOwnNumber:Ljava/lang/String;

    .line 741
    return-object p0
.end method

.method public blacklist setPAssociatedUri2nd(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 735
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 736
    return-object p0
.end method

.method public blacklist setPcscf(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "pcscf"    # Ljava/lang/String;

    .line 690
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    .line 691
    return-object p0
.end method

.method public blacklist setPdnType(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "pdn"    # I

    .line 685
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPdnType:I

    .line 686
    return-object p0
.end method

.method public blacklist setPhoneId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "phoneId"    # I

    .line 675
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPhoneId:I

    .line 676
    return-object p0
.end method

.method public blacklist setPreferredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "impu"    # Ljava/lang/String;

    .line 655
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPreferredPublicUserId:Ljava/lang/String;

    .line 656
    return-object p0
.end method

.method public blacklist setPrivateUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "privateId"    # Ljava/lang/String;

    .line 645
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    .line 646
    return-object p0
.end method

.method public blacklist setProhibited(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "prohibit"    # Z

    .line 715
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    .line 716
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

    .line 660
    .local p1, "impus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 661
    return-object p0
.end method

.method public blacklist setRegExpiryStatus(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "regExpiry"    # I

    .line 700
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegExpiryStatus:I

    .line 701
    return-object p0
.end method

.method public blacklist setRegiRat(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "rat"    # I

    .line 630
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRat:I

    .line 631
    return-object p0
.end method

.method public blacklist setRegisterSipResponse(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "sip"    # Ljava/lang/String;

    .line 725
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    .line 726
    return-object p0
.end method

.method public blacklist setRegisteredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;

    .line 650
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisteredPublicUserId:Ljava/lang/String;

    .line 651
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

    .line 624
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 625
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 626
    return-object p0
.end method

.method public blacklist setSubscriptionId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0
    .param p1, "subscriptionId"    # I

    .line 670
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mSubscriptionId:I

    .line 671
    return-object p0
.end method
