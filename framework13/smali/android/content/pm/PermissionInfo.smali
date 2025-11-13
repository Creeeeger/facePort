.class public Landroid/content/pm/PermissionInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "PermissionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PermissionInfo$Flags;,
        Landroid/content/pm/PermissionInfo$ProtectionFlags;,
        Landroid/content/pm/PermissionInfo$Protection;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_COSTS_MONEY:I = 0x1

.field public static final whitelist FLAG_HARD_RESTRICTED:I = 0x4

.field public static final whitelist FLAG_IMMUTABLY_RESTRICTED:I = 0x10

.field public static final whitelist FLAG_INSTALLED:I = 0x40000000

.field public static final whitelist FLAG_REMOVED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_SOFT_RESTRICTED:I = 0x8

.field public static final whitelist PROTECTION_DANGEROUS:I = 0x1

.field public static final whitelist PROTECTION_FLAG_APPOP:I = 0x40

.field public static final whitelist PROTECTION_FLAG_APP_PREDICTOR:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_COMPANION:I = 0x800000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_CONFIGURATOR:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_DEVELOPMENT:I = 0x20

.field public static final whitelist PROTECTION_FLAG_DOCUMENTER:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_INCIDENT_REPORT_APPROVER:I = 0x100000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_INSTALLER:I = 0x100

.field public static final whitelist PROTECTION_FLAG_INSTANT:I = 0x1000

.field public static final whitelist PROTECTION_FLAG_KNOWN_SIGNER:I = 0x8000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_OEM:I = 0x4000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_PRE23:I = 0x80

.field public static final whitelist PROTECTION_FLAG_PREINSTALLED:I = 0x400

.field public static final whitelist PROTECTION_FLAG_PRIVILEGED:I = 0x10

.field public static final whitelist PROTECTION_FLAG_RECENTS:I = 0x2000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_RETAIL_DEMO:I = 0x1000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_ROLE:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_RUNTIME_ONLY:I = 0x2000

.field public static final whitelist PROTECTION_FLAG_SETUP:I = 0x800

.field public static final whitelist PROTECTION_FLAG_SYSTEM:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTECTION_FLAG_SYSTEM_TEXT_CLASSIFIER:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PROTECTION_FLAG_VENDOR_PRIVILEGED:I = 0x8000

.field public static final whitelist PROTECTION_FLAG_VERIFIER:I = 0x200

.field public static final whitelist PROTECTION_FLAG_WELLBEING:I = 0x20000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTECTION_INTERNAL:I = 0x4

.field public static final whitelist PROTECTION_MASK_BASE:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTECTION_MASK_FLAGS:I = 0xfff0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTECTION_NORMAL:I = 0x0

.field public static final whitelist PROTECTION_SIGNATURE:I = 0x2

.field public static final whitelist PROTECTION_SIGNATURE_OR_SYSTEM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public final whitelist backgroundPermission:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist descriptionRes:I

.field public whitelist flags:I

.field public whitelist group:Ljava/lang/String;

.field public blacklist knownCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist nonLocalizedDescription:Ljava/lang/CharSequence;

.field public whitelist protectionLevel:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist requestRes:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 480
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Landroid/content/pm/PermissionInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 727
    new-instance v0, Landroid/content/pm/PermissionInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 607
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/PermissionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 615
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 616
    iget v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 617
    iget v0, p1, Landroid/content/pm/PermissionInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 618
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 619
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 620
    iget v0, p1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 621
    iget v0, p1, Landroid/content/pm/PermissionInfo;->requestRes:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 622
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 623
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 740
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 747
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 748
    sget-object v0, Landroid/content/pm/PermissionInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 749
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/PermissionInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundPermission"    # Ljava/lang/String;

    .line 598
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 599
    iput-object p1, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public static greylist-max-o fixProtectionLevel(I)I
    .locals 1
    .param p0, "level"    # I

    .line 493
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 494
    const/16 p0, 0x12

    .line 496
    :cond_0
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1

    .line 500
    const v0, -0x8001

    and-int/2addr p0, v0

    .line 502
    :cond_1
    return p0
.end method

.method public static greylist-max-r protectionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "level"    # I

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local v0, "protLevel":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0xf

    packed-switch v1, :pswitch_data_0

    .line 526
    const-string v1, "????"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 523
    :pswitch_0
    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    goto :goto_0

    .line 520
    :pswitch_1
    const-string/jumbo v1, "signatureOrSystem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    goto :goto_0

    .line 517
    :pswitch_2
    const-string/jumbo v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    goto :goto_0

    .line 511
    :pswitch_3
    const-string v1, "dangerous"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    goto :goto_0

    .line 514
    :pswitch_4
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    nop

    .line 529
    :goto_0
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    .line 530
    const-string/jumbo v1, "|privileged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_0
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_1

    .line 533
    const-string/jumbo v1, "|development"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_1
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_2

    .line 536
    const-string/jumbo v1, "|appop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_2
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_3

    .line 539
    const-string/jumbo v1, "|pre23"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_3
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_4

    .line 542
    const-string/jumbo v1, "|installer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_4
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_5

    .line 545
    const-string/jumbo v1, "|verifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_5
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_6

    .line 548
    const-string/jumbo v1, "|preinstalled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_6
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_7

    .line 551
    const-string/jumbo v1, "|setup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_7
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_8

    .line 554
    const-string/jumbo v1, "|instant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_8
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_9

    .line 557
    const-string/jumbo v1, "|runtime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_9
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_a

    .line 560
    const-string/jumbo v1, "|oem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_a
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b

    .line 563
    const-string/jumbo v1, "|vendorPrivileged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_b
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c

    .line 566
    const-string/jumbo v1, "|textClassifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_c
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_d

    .line 569
    const-string/jumbo v1, "|configurator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_d
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_e

    .line 572
    const-string/jumbo v1, "|incidentReportApprover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_e
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    .line 575
    const-string/jumbo v1, "|appPredictor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_f
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    .line 578
    const-string/jumbo v1, "|companion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_10
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    .line 581
    const-string/jumbo v1, "|retailDemo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_11
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    .line 584
    const-string/jumbo v1, "|recents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_12
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_13

    .line 587
    const-string/jumbo v1, "|role"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_13
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_14

    .line 590
    const-string/jumbo v1, "|knownSigner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o calculateFootprint()I
    .locals 2

    .line 692
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 693
    .local v0, "size":I
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 696
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 697
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 699
    :cond_1
    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getProtection()I
    .locals 1

    .line 654
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public whitelist getProtectionFlags()I
    .locals 1

    .line 662
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, -0x10

    return v0
.end method

.method public greylist-max-o isAppOp()Z
    .locals 1

    .line 719
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isHardRestricted()Z
    .locals 1

    .line 704
    iget v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isRestricted()Z
    .locals 1

    .line 714
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isRuntime()Z
    .locals 2

    .line 724
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isSoftRestricted()Z
    .locals 1

    .line 709
    iget v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 637
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 638
    return-object v0

    .line 640
    :cond_0
    iget v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 642
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 643
    return-object v0

    .line 646
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 668
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 679
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 680
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    iget v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 684
    iget v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget v0, p0, Landroid/content/pm/PermissionInfo;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 687
    sget-object v0, Landroid/content/pm/PermissionInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 688
    return-void
.end method
