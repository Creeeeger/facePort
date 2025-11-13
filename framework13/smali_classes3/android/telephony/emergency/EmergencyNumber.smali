.class public final Landroid/telephony/emergency/EmergencyNumber;
.super Ljava/lang/Object;
.source "EmergencyNumber.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/emergency/EmergencyNumber$EmergencyCallRouting;,
        Landroid/telephony/emergency/EmergencyNumber$EmergencyNumberSources;,
        Landroid/telephony/emergency/EmergencyNumber$EmergencyServiceCategories;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/telephony/emergency/EmergencyNumber;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALL_ROUTING_EMERGENCY:I = 0x1

.field public static final whitelist EMERGENCY_CALL_ROUTING_NORMAL:I = 0x2

.field public static final whitelist EMERGENCY_CALL_ROUTING_UNKNOWN:I = 0x0

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_DATABASE:I = 0x10

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_DEFAULT:I = 0x8

.field public static final blacklist EMERGENCY_NUMBER_SOURCE_HIGH_PRIORITY:I = 0x100

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_MODEM_CONFIG:I = 0x4

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_NETWORK_SIGNALING:I = 0x1

.field public static final blacklist EMERGENCY_NUMBER_SOURCE_OVER_DATABASE:I = 0x80

.field private static final blacklist EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_SIM:I = 0x2

.field public static final blacklist EMERGENCY_NUMBER_SOURCE_TEST:I = 0x20

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_AIEC:I = 0x40

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_AMBULANCE:I = 0x2

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_FIRE_BRIGADE:I = 0x4

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_MARINE_GUARD:I = 0x8

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_MIEC:I = 0x20

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_MOUNTAIN_RESCUE:I = 0x10

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_POLICE:I = 0x1

.field private static final blacklist EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_UNSPECIFIED:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "EmergencyNumber"


# instance fields
.field private final blacklist mCountryIso:Ljava/lang/String;

.field private final blacklist mEmergencyCallRouting:I

.field private final blacklist mEmergencyNumberSourceBitmask:I

.field private final blacklist mEmergencyServiceCategoryBitmask:I

.field private final blacklist mEmergencyUrns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMnc:Ljava/lang/String;

.field private final blacklist mNumber:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    .line 139
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    .line 216
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Landroid/telephony/emergency/EmergencyNumber$1;

    invoke-direct {v0}, Landroid/telephony/emergency/EmergencyNumber$1;-><init>()V

    sput-object v0, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    .line 284
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;
    .param p4, "emergencyServiceCategories"    # I
    .param p6, "emergencyNumberSources"    # I
    .param p7, "emergencyCallRouting"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 265
    .local p5, "emergencyUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    .line 267
    iput-object p2, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    .line 268
    iput-object p3, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    .line 269
    iput p4, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    .line 270
    iput-object p5, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    .line 271
    iput p6, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 272
    iput p7, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    .line 273
    return-void
.end method

.method public static blacklist areSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Z
    .locals 3
    .param p0, "first"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p1, "second"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 700
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 701
    return v1

    .line 703
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    return v1

    .line 706
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 707
    return v1

    .line 709
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    .line 710
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 711
    return v1

    .line 713
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 714
    return v1

    .line 716
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 717
    return v1

    .line 721
    :cond_5
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v2

    .line 722
    invoke-virtual {p1, v0}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 723
    return v1

    .line 725
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist getDisplayPriorityScore()I
    .locals 2

    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "score":I
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    add-int/lit8 v0, v0, 0x40

    .line 579
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    add-int/lit8 v0, v0, 0x20

    .line 582
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    add-int/lit8 v0, v0, 0x10

    .line 585
    :cond_2
    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 586
    add-int/lit8 v0, v0, 0x8

    .line 589
    :cond_3
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 590
    add-int/lit8 v0, v0, 0x4

    .line 592
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 593
    add-int/lit8 v0, v0, 0x2

    .line 595
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 596
    add-int/lit8 v0, v0, 0x1

    .line 598
    :cond_6
    return v0
.end method

.method public static blacklist mergeSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;
    .locals 9
    .param p0, "first"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p1, "second"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 740
    invoke-static {p0, p1}, Landroid/telephony/emergency/EmergencyNumber;->areSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    new-instance v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v4

    .line 742
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v5

    .line 743
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v6

    .line 744
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v1

    .line 745
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v7

    or-int/2addr v7, v1

    .line 746
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 741
    return-object v0

    .line 748
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 653
    .local p0, "emergencyNumberList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    if-nez p0, :cond_0

    .line 654
    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 657
    .local v0, "duplicatedEmergencyNumberPosition":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 658
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 659
    nop

    .line 660
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    .line 659
    invoke-static {v3, v4}, Landroid/telephony/emergency/EmergencyNumber;->areSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    nop

    .line 669
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    .line 668
    invoke-static {v3, v4}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 657
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 677
    .end local v1    # "i":I
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 678
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 679
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 677
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 682
    .end local v1    # "i":I
    :cond_5
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 683
    return-void
.end method

.method private blacklist serviceUnspecified()Z
    .locals 1

    .line 417
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist validateEmergencyNumberAddress(Ljava/lang/String;)Z
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .line 758
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 759
    return v0

    .line 761
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    .line 762
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 763
    return v0

    .line 761
    .end local v4    # "c":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 766
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist compareTo(Landroid/telephony/emergency/EmergencyNumber;)I
    .locals 4
    .param p1, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 611
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v0

    .line 612
    invoke-direct {p1}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    .line 613
    return v2

    .line 614
    :cond_0
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v0

    .line 615
    invoke-direct {p1}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 616
    return v3

    .line 617
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 619
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 620
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 621
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 622
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 623
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    .line 624
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 626
    nop

    .line 625
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    .line 626
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v1

    if-le v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    .line 625
    :goto_0
    return v2

    .line 627
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 629
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 631
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    .line 632
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 634
    nop

    .line 633
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    .line 634
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v1

    if-le v0, v1, :cond_8

    goto :goto_1

    :cond_8
    move v2, v3

    .line 633
    :goto_1
    return v2

    .line 636
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0, p1}, Landroid/telephony/emergency/EmergencyNumber;->compareTo(Landroid/telephony/emergency/EmergencyNumber;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 530
    const-class v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 531
    return v1

    .line 533
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 534
    .local v0, "other":Landroid/telephony/emergency/EmergencyNumber;
    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    .line 536
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    iget v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    .line 538
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    iget v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    iget v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 534
    :goto_0
    return v1
.end method

.method public whitelist getCountryIso()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEmergencyCallRouting()I
    .locals 1

    .line 487
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    return v0
.end method

.method public blacklist getEmergencyNumberSourceBitmask()I
    .locals 1

    .line 447
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    return v0
.end method

.method public whitelist getEmergencyNumberSources()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 458
    .local v2, "source":Ljava/lang/Integer;
    iget v3, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 459
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v2    # "source":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 462
    :cond_1
    return-object v0
.end method

.method public whitelist getEmergencyServiceCategories()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->serviceUnspecified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    return-object v0

    .line 385
    :cond_0
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 386
    .local v2, "category":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/telephony/emergency/EmergencyNumber;->isInEmergencyServiceCategories(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v2    # "category":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 390
    :cond_2
    return-object v0
.end method

.method public blacklist getEmergencyServiceCategoryBitmask()I
    .locals 1

    .line 352
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    return v0
.end method

.method public blacklist getEmergencyServiceCategoryBitmaskInternalDial()I
    .locals 2

    .line 364
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 365
    const/4 v0, 0x0

    return v0

    .line 367
    :cond_0
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    return v0
.end method

.method public whitelist getEmergencyUrns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMnc()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNumber()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 545
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 545
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isFromSources(I)Z
    .locals 1
    .param p1, "sources"    # I

    .line 474
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isInEmergencyServiceCategories(I)Z
    .locals 2
    .param p1, "categories"    # I

    .line 430
    if-nez p1, :cond_0

    .line 431
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->serviceUnspecified()Z

    move-result v0

    return v0

    .line 433
    :cond_0
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->serviceUnspecified()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 434
    return v1

    .line 436
    :cond_1
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v1, "|Category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string/jumbo v1, "|Source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    const-string/jumbo v1, "|Iso:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_0
    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    const-string/jumbo v1, "|Mnc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_1
    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 518
    const-string/jumbo v1, "|Urn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 520
    :cond_2
    iget v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    if-eqz v1, :cond_3

    .line 521
    const-string/jumbo v1, "|Routing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 289
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 294
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    return-void
.end method
