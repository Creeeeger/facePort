.class public Landroid/content/IntentFilter;
.super Ljava/lang/Object;
.source "IntentFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentFilter$AuthorityEntry;,
        Landroid/content/IntentFilter$MalformedMimeTypeException;,
        Landroid/content/IntentFilter$InstantAppVisibility;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_STR:Ljava/lang/String; = "action"

.field private static final greylist-max-o AGLOB_STR:Ljava/lang/String; = "aglob"

.field private static final greylist-max-o AUTH_STR:Ljava/lang/String; = "auth"

.field private static final greylist-max-o AUTO_VERIFY_STR:Ljava/lang/String; = "autoVerify"

.field private static final greylist-max-o CAT_STR:Ljava/lang/String; = "cat"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GROUP_STR:Ljava/lang/String; = "group"

.field private static final greylist-max-o HOST_STR:Ljava/lang/String; = "host"

.field private static final greylist-max-o LITERAL_STR:Ljava/lang/String; = "literal"

.field public static final whitelist MATCH_ADJUSTMENT_MASK:I = 0xffff

.field public static final whitelist MATCH_ADJUSTMENT_NORMAL:I = 0x8000

.field public static final whitelist MATCH_CATEGORY_EMPTY:I = 0x100000

.field public static final whitelist MATCH_CATEGORY_HOST:I = 0x300000

.field public static final whitelist MATCH_CATEGORY_MASK:I = 0xfff0000

.field public static final whitelist MATCH_CATEGORY_PATH:I = 0x500000

.field public static final whitelist MATCH_CATEGORY_PORT:I = 0x400000

.field public static final whitelist MATCH_CATEGORY_SCHEME:I = 0x200000

.field public static final whitelist MATCH_CATEGORY_SCHEME_SPECIFIC_PART:I = 0x580000

.field public static final whitelist MATCH_CATEGORY_TYPE:I = 0x600000

.field private static final greylist-max-o NAME_STR:Ljava/lang/String; = "name"

.field public static final whitelist NO_MATCH_ACTION:I = -0x3

.field public static final whitelist NO_MATCH_CATEGORY:I = -0x4

.field public static final whitelist NO_MATCH_DATA:I = -0x2

.field public static final whitelist NO_MATCH_TYPE:I = -0x1

.field private static final greylist-max-o PATH_STR:Ljava/lang/String; = "path"

.field private static final greylist-max-o PORT_STR:Ljava/lang/String; = "port"

.field private static final greylist-max-o PREFIX_STR:Ljava/lang/String; = "prefix"

.field public static final greylist-max-o SCHEME_HTTP:Ljava/lang/String; = "http"

.field public static final greylist-max-o SCHEME_HTTPS:Ljava/lang/String; = "https"

.field public static final blacklist SCHEME_PACKAGE:Ljava/lang/String; = "package"

.field private static final greylist-max-o SCHEME_STR:Ljava/lang/String; = "scheme"

.field private static final greylist-max-o SGLOB_STR:Ljava/lang/String; = "sglob"

.field private static final greylist-max-o SSP_STR:Ljava/lang/String; = "ssp"

.field private static final greylist-max-o STATE_NEED_VERIFY:I = 0x10

.field private static final greylist-max-o STATE_NEED_VERIFY_CHECKED:I = 0x100

.field private static final greylist-max-o STATE_VERIFIED:I = 0x1000

.field private static final greylist-max-o STATE_VERIFY_AUTO:I = 0x1

.field private static final blacklist STATIC_TYPE_STR:Ljava/lang/String; = "staticType"

.field private static final blacklist SUFFIX_STR:Ljava/lang/String; = "suffix"

.field public static final whitelist SYSTEM_HIGH_PRIORITY:I = 0x3e8

.field public static final whitelist SYSTEM_LOW_PRIORITY:I = -0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "IntentFilter"

.field private static final greylist-max-o TYPE_STR:Ljava/lang/String; = "type"

.field public static final greylist-max-o VISIBILITY_EXPLICIT:I = 0x1

.field public static final greylist-max-o VISIBILITY_IMPLICIT:I = 0x2

.field public static final greylist-max-o VISIBILITY_NONE:I = 0x0

.field public static final blacklist WILDCARD:Ljava/lang/String; = "*"

.field public static final blacklist WILDCARD_PATH:Ljava/lang/String; = "/*"


# instance fields
.field private final greylist mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataSchemeSpecificParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataSchemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasDynamicPartialTypes:Z

.field private blacklist mHasStaticPartialTypes:Z

.field private greylist-max-o mInstantAppVisibility:I

.field private blacklist mMimeGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mOrder:I

.field private greylist-max-o mPriority:I

.field private blacklist mStaticDataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVerifyState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2311
    new-instance v0, Landroid/content/IntentFilter$1;

    invoke-direct {v0}, Landroid/content/IntentFilter$1;-><init>()V

    sput-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 307
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 308
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 309
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 310
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 311
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 312
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 313
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 315
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 435
    iput v0, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    .line 437
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "o"    # Landroid/content/IntentFilter;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 307
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 308
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 309
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 310
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 311
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 312
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 313
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 315
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 482
    iget v0, p1, Landroid/content/IntentFilter;->mPriority:I

    iput v0, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 483
    iget v0, p1, Landroid/content/IntentFilter;->mOrder:I

    iput v0, p0, Landroid/content/IntentFilter;->mOrder:I

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    .line 485
    iget-object v0, p1, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 488
    :cond_0
    iget-object v0, p1, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 491
    :cond_1
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 494
    :cond_2
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 497
    :cond_3
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 500
    :cond_4
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 503
    :cond_5
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 506
    :cond_6
    iget-object v0, p1, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 509
    :cond_7
    iget-boolean v0, p1, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 510
    iget-boolean v0, p1, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 511
    iget v0, p1, Landroid/content/IntentFilter;->mVerifyState:I

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 512
    iget v0, p1, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    iput v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    .line 513
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 307
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 308
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 309
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 310
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 311
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 312
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 313
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 315
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 2421
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    .line 2422
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 2423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 2425
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 2427
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 2429
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 2431
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 2433
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 2435
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 2436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 2437
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 2439
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 2441
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 2443
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2444
    .local v1, "N":I
    if-lez v1, :cond_5

    .line 2445
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 2446
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 2447
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2450
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2451
    if-lez v1, :cond_6

    .line 2452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 2453
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 2454
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    new-instance v4, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-direct {v4, p1}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2453
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2457
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2458
    if-lez v1, :cond_7

    .line 2459
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 2460
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_7

    .line 2461
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2460
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2464
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 2465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_8

    move v2, v3

    goto :goto_3

    :cond_8
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 2466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_9

    move v2, v3

    goto :goto_4

    :cond_9
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 2467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_a

    move v0, v3

    :cond_a
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    .line 2468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 2469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/IntentFilter;->mOrder:I

    .line 2470
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 307
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 308
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 309
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 310
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 311
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 312
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 313
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 315
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 447
    iput v0, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    .line 449
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "dataType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 307
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 308
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 309
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 310
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 311
    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 312
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 313
    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 315
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 470
    iput v0, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    .line 472
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method private static greylist-max-o addStringToSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .locals 4
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .line 354
    invoke-static {p0, p1, p2, p3}, Landroid/content/IntentFilter;->findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    move-result v0

    if-ltz v0, :cond_0

    return-object p0

    .line 355
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p0, :cond_1

    .line 356
    new-array p0, v1, [Ljava/lang/String;

    .line 357
    aput-object p1, p0, v0

    .line 358
    const/4 v0, 0x1

    aput v0, p2, p3

    .line 359
    return-object p0

    .line 361
    :cond_1
    aget v2, p2, p3

    .line 362
    .local v2, "N":I
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 363
    aput-object p1, p0, v2

    .line 364
    add-int/lit8 v0, v2, 0x1

    aput v0, p2, p3

    .line 365
    return-object p0

    .line 368
    :cond_2
    mul-int/lit8 v3, v2, 0x3

    div-int/2addr v3, v1

    add-int/2addr v3, v1

    new-array v1, v3, [Ljava/lang/String;

    .line 369
    .local v1, "newSet":[Ljava/lang/String;
    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    move-object p0, v1

    .line 371
    aput-object p1, p0, v2

    .line 372
    add-int/lit8 v0, v2, 0x1

    aput v0, p2, p3

    .line 373
    return-object p0
.end method

.method public static whitelist create(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "dataType"    # Ljava/lang/String;

    .line 425
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad MIME type"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final greylist-max-o findMimeType(Ljava/lang/String;)Z
    .locals 9
    .param p1, "type"    # Ljava/lang/String;

    .line 2477
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 2479
    .local v0, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2480
    return v1

    .line 2483
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2484
    return v3

    .line 2488
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2489
    .local v2, "typeLength":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    const-string v4, "*/*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2490
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    return v1

    .line 2494
    :cond_2
    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2495
    return v3

    .line 2498
    :cond_3
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2499
    .local v4, "slashpos":I
    if-lez v4, :cond_6

    .line 2500
    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2501
    return v3

    .line 2503
    :cond_4
    add-int/lit8 v5, v4, 0x2

    if-ne v2, v5, :cond_6

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_6

    .line 2506
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2507
    .local v5, "numTypes":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_6

    .line 2508
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2509
    .local v7, "v":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v1, v7, v1, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2510
    return v3

    .line 2507
    .end local v7    # "v":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2516
    .end local v5    # "numTypes":I
    .end local v6    # "i":I
    :cond_6
    return v1
.end method

.method private static greylist-max-o findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I
    .locals 4
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .line 344
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 345
    :cond_0
    aget v1, p2, p3

    .line 346
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 347
    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 346
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private blacklist hasDataPath(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "wildcardSupported"    # Z

    .line 1493
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1494
    return v1

    .line 1496
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const-string v2, "/*"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1497
    return v0

    .line 1499
    :cond_1
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1500
    .local v2, "numDataPaths":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1501
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 1502
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v4, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1503
    return v0

    .line 1500
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1506
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method private blacklist hasDataSchemeSpecificPart(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "supportWildcards"    # Z

    .line 1299
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1300
    return v1

    .line 1302
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const-string v2, "*"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1303
    return v0

    .line 1305
    :cond_1
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1306
    .local v2, "numDataSchemeSpecificParts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1307
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 1308
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v4, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1309
    return v0

    .line 1306
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1312
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method private blacklist hasPartialTypes()Z
    .locals 1

    .line 2473
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

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

.method private blacklist matchAction(Ljava/lang/String;ZLjava/util/Collection;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "wildcardSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 807
    .local p3, "ignoreActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 808
    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 809
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 811
    :cond_0
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 812
    iget-object v3, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 813
    return v1

    .line 811
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 816
    .end local v2    # "i":I
    :cond_2
    return v0

    .line 818
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 819
    return v0

    .line 821
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)I
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/net/Uri;
    .param p4, "wildcardSupported"    # Z

    .line 1616
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1617
    .local v0, "wildcardWithMimegroups":Z
    :goto_0
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 1618
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 1620
    .local v2, "schemes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v3, 0x100000

    .line 1622
    .local v3, "match":I
    const/4 v4, -0x2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 1623
    if-nez p1, :cond_1

    if-nez p3, :cond_1

    .line 1624
    const v4, 0x108000

    goto :goto_1

    :cond_1
    nop

    .line 1623
    :goto_1
    return v4

    .line 1627
    :cond_2
    const-string v5, "*"

    const-string v6, ""

    if-eqz v2, :cond_d

    .line 1628
    if-eqz p2, :cond_3

    move-object v6, p2

    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p4, :cond_4

    .line 1629
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 1632
    :cond_4
    return v4

    .line 1630
    :cond_5
    :goto_2
    const/high16 v3, 0x200000

    .line 1635
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 1636
    .local v5, "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    const/high16 v6, 0x580000

    if-eqz v5, :cond_7

    if-eqz p3, :cond_7

    .line 1637
    invoke-virtual {p3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p4}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1638
    move v7, v6

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    move v3, v7

    .line 1640
    :cond_7
    if-eq v3, v6, :cond_b

    .line 1642
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 1643
    .local v6, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v6, :cond_b

    .line 1644
    invoke-virtual {p0, p3, p4}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;Z)I

    move-result v7

    .line 1645
    .local v7, "authMatch":I
    if-ltz v7, :cond_a

    .line 1646
    iget-object v8, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 1647
    .local v8, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    if-nez v8, :cond_8

    .line 1648
    move v3, v7

    goto :goto_4

    .line 1649
    :cond_8
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p4}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1650
    const/high16 v3, 0x500000

    .line 1654
    .end local v8    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :goto_4
    goto :goto_5

    .line 1652
    .restart local v8    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_9
    return v4

    .line 1655
    .end local v8    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_a
    return v4

    .line 1660
    .end local v6    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v7    # "authMatch":I
    :cond_b
    :goto_5
    if-ne v3, v4, :cond_c

    .line 1661
    return v4

    .line 1663
    .end local v5    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_c
    goto :goto_6

    .line 1669
    :cond_d
    if-eqz p2, :cond_f

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1670
    const-string v6, "content"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1671
    const-string v6, "file"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    if-eqz p4, :cond_e

    .line 1672
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1673
    :cond_e
    return v4

    .line 1677
    :cond_f
    :goto_6
    if-eqz v0, :cond_10

    .line 1678
    const/high16 v4, 0x600000

    return v4

    .line 1679
    :cond_10
    const/4 v4, -0x1

    if-eqz v1, :cond_12

    .line 1680
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->findMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1681
    const/high16 v3, 0x600000

    goto :goto_7

    .line 1683
    :cond_11
    return v4

    .line 1688
    :cond_12
    if-eqz p1, :cond_13

    .line 1689
    return v4

    .line 1693
    :cond_13
    :goto_7
    const v4, 0x8000

    add-int/2addr v4, v3

    return v4
.end method

.method private blacklist processMimeType(Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 912
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 913
    .local v0, "slashpos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 914
    .local v1, "typelen":I
    if-lez v0, :cond_1

    add-int/lit8 v2, v0, 0x2

    if-lt v1, v2, :cond_1

    .line 918
    move-object v2, p1

    .line 919
    .local v2, "internalType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 920
    .local v3, "isPartialType":Z
    add-int/lit8 v4, v0, 0x2

    if-ne v1, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_0

    .line 921
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 922
    const/4 v3, 0x1

    .line 925
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 926
    return-void

    .line 915
    .end local v2    # "internalType":Ljava/lang/String;
    .end local v3    # "isPartialType":Z
    :cond_1
    new-instance v2, Landroid/content/IntentFilter$MalformedMimeTypeException;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter$MalformedMimeTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o removeStringFromSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .locals 5
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .line 378
    invoke-static {p0, p1, p2, p3}, Landroid/content/IntentFilter;->findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    move-result v0

    .line 379
    .local v0, "pos":I
    if-gez v0, :cond_0

    return-object p0

    .line 380
    :cond_0
    aget v1, p2, p3

    .line 381
    .local v1, "N":I
    array-length v2, p0

    div-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_2

    .line 382
    add-int/lit8 v2, v0, 0x1

    sub-int v2, v1, v2

    .line 383
    .local v2, "copyLen":I
    if-lez v2, :cond_1

    .line 384
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    :cond_1
    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    aput-object v4, p0, v3

    .line 387
    add-int/lit8 v3, v1, -0x1

    aput v3, p2, p3

    .line 388
    return-object p0

    .line 391
    .end local v2    # "copyLen":I
    :cond_2
    array-length v2, p0

    div-int/lit8 v2, v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 392
    .local v2, "newSet":[Ljava/lang/String;
    if-lez v0, :cond_3

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    :cond_3
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_4

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x1

    sub-int v4, v1, v4

    invoke-static {p0, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    :cond_4
    return-object v2
.end method

.method private blacklist writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2042
    const/4 v0, 0x0

    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2044
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 2045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2048
    :cond_0
    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2049
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2050
    return-void
.end method

.method private blacklist writeDataTypesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2019
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2020
    return-void

    .line 2023
    :cond_0
    const/4 v1, 0x0

    .line 2024
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "type"

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2025
    .local v2, "staticType":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2026
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v4, v3}, Landroid/content/IntentFilter;->writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2030
    :cond_1
    const-string/jumbo v3, "staticType"

    invoke-direct {p0, p1, v2, v3}, Landroid/content/IntentFilter;->writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    nop

    .end local v2    # "staticType":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 2032
    goto :goto_0

    .line 2034
    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 2035
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v3}, Landroid/content/IntentFilter;->writeDataTypeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2038
    :cond_3
    return-void
.end method


# virtual methods
.method public final whitelist actionsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 829
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final whitelist addAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 745
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_0
    return-void
.end method

.method public final whitelist addCategory(Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .line 1707
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 1708
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1709
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    :cond_1
    return-void
.end method

.method public final greylist-max-o addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V
    .locals 1
    .param p1, "ent"    # Landroid/content/IntentFilter$AuthorityEntry;

    .line 1366
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 1368
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    return-void
.end method

.method public final whitelist addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .line 1360
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 1361
    :cond_0
    new-instance v0, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 1362
    return-void
.end method

.method public final greylist-max-o addDataPath(Landroid/os/PatternMatcher;)V
    .locals 1
    .param p1, "path"    # Landroid/os/PatternMatcher;

    .line 1454
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 1455
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    return-void
.end method

.method public final whitelist addDataPath(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1449
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 1450
    return-void
.end method

.method public final whitelist addDataScheme(Ljava/lang/String;)V
    .locals 2
    .param p1, "scheme"    # Ljava/lang/String;

    .line 1061
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 1062
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1063
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    :cond_1
    return-void
.end method

.method public final greylist-max-o addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V
    .locals 1
    .param p1, "ssp"    # Landroid/os/PatternMatcher;

    .line 1259
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 1262
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    return-void
.end method

.method public final whitelist addDataSchemeSpecificPart(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ssp"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1254
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-direct {v0, p1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V

    .line 1255
    return-void
.end method

.method public final whitelist addDataType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 853
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter$$ExternalSyntheticLambda0;-><init>(Landroid/content/IntentFilter;)V

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->processMimeType(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    .line 869
    return-void
.end method

.method public final blacklist addDynamicDataType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 893
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter$$ExternalSyntheticLambda1;-><init>(Landroid/content/IntentFilter;)V

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->processMimeType(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    .line 904
    return-void
.end method

.method public final blacklist addMimeGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1016
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    .line 1019
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    :cond_1
    return-void
.end method

.method public whitelist asPredicate()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1789
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;-><init>(Landroid/content/IntentFilter;)V

    return-object v0
.end method

.method public whitelist asPredicateWithTypeResolution(Landroid/content/ContentResolver;)Ljava/util/function/Predicate;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1804
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    new-instance v0, Landroid/content/IntentFilter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/content/IntentFilter$$ExternalSyntheticLambda3;-><init>(Landroid/content/IntentFilter;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public final whitelist authoritiesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation

    .line 1418
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final whitelist categoriesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1744
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final blacklist clearDynamicDataTypes()V
    .locals 2

    .line 935
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 936
    return-void

    .line 939
    :cond_0
    iget-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 940
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 941
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 943
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 946
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 947
    return-void
.end method

.method public final whitelist countActions()I
    .locals 1

    .line 765
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final whitelist countCategories()I
    .locals 1

    .line 1717
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist countDataAuthorities()I
    .locals 1

    .line 1375
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist countDataPaths()I
    .locals 1

    .line 1462
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist countDataSchemeSpecificParts()I
    .locals 1

    .line 1269
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist countDataSchemes()I
    .locals 1

    .line 1071
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist countDataTypes()I
    .locals 1

    .line 989
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final blacklist countMimeGroups()I
    .locals 1

    .line 1036
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist countStaticDataTypes()I
    .locals 1

    .line 954
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final blacklist dataTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist-max-o debugCheck()Z
    .locals 1

    .line 2400
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist describeContents()I
    .locals 1

    .line 2323
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6
    .param p1, "du"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2204
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "\""

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 2205
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2206
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2208
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Action: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2213
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2214
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2215
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2216
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2217
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Category: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2222
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2223
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2224
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2226
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Scheme: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2231
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2232
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2233
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 2235
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2236
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Ssp: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2239
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    goto :goto_3

    .line 2241
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :cond_3
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 2242
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2243
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 2245
    .local v4, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2246
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Authority: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    invoke-static {v4}, Landroid/content/IntentFilter$AuthorityEntry;->-$$Nest$fgetmHost(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2248
    invoke-static {v4}, Landroid/content/IntentFilter$AuthorityEntry;->-$$Nest$fgetmPort(Landroid/content/IntentFilter$AuthorityEntry;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2249
    invoke-static {v4}, Landroid/content/IntentFilter$AuthorityEntry;->-$$Nest$fgetmWild(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, " WILD"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2251
    .end local v4    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    goto :goto_4

    .line 2253
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :cond_5
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 2254
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2255
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 2257
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2258
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Path: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2261
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    goto :goto_5

    .line 2263
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :cond_6
    iget-object v1, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 2264
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2265
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2267
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "StaticType: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2272
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 2273
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2274
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2276
    .local v4, "dataType":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/IntentFilter;->hasExactStaticDataType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2277
    goto :goto_7

    .line 2280
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2281
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Type: \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2284
    .end local v4    # "dataType":Ljava/lang/String;
    goto :goto_7

    .line 2286
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    iget-object v1, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 2287
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2288
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2289
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2290
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MimeGroup: \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 2295
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    iget v1, p0, Landroid/content/IntentFilter;->mPriority:I

    if-nez v1, :cond_b

    iget v1, p0, Landroid/content/IntentFilter;->mOrder:I

    if-nez v1, :cond_b

    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2296
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2297
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2298
    const-string/jumbo v1, "mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2299
    const-string v1, ", mOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/IntentFilter;->mOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2300
    const-string v1, ", mHasStaticPartialTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2301
    const-string v1, ", mHasDynamicPartialTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2304
    :cond_c
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2305
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2306
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AutoVerify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2309
    :cond_d
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2145
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2146
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2147
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2148
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2149
    const-wide v3, 0x20900000001L

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 2152
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2153
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2154
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2155
    const-wide v3, 0x20900000002L

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    .line 2158
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 2159
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2160
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2161
    const-wide v3, 0x20900000003L

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_2

    .line 2164
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 2165
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2166
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    const-wide v4, 0x20b00000004L

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/PatternMatcher;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_3

    .line 2170
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :cond_3
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 2171
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2172
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter$AuthorityEntry;

    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/IntentFilter$AuthorityEntry;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_4

    .line 2176
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :cond_4
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 2177
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2178
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    const-wide v4, 0x20b00000006L

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/PatternMatcher;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_5

    .line 2182
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :cond_5
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 2183
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2184
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2185
    const-wide v3, 0x20900000007L

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_6

    .line 2188
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    iget-object v2, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 2189
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2190
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2191
    const-wide v3, 0x2090000000bL

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_7

    .line 2194
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    iget v2, p0, Landroid/content/IntentFilter;->mPriority:I

    if-nez v2, :cond_8

    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2195
    :cond_8
    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2196
    const-wide v2, 0x10800000009L

    invoke-direct {p0}, Landroid/content/IntentFilter;->hasPartialTypes()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2198
    :cond_9
    const-wide v2, 0x1080000000aL

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2199
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2200
    return-void
.end method

.method public final whitelist getAction(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 772
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final greylist-max-o getAutoVerify()Z
    .locals 2

    .line 595
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final whitelist getCategory(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1724
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;
    .locals 1
    .param p1, "index"    # I

    .line 1382
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    return-object v0
.end method

.method public final whitelist getDataPath(I)Landroid/os/PatternMatcher;
    .locals 1
    .param p1, "index"    # I

    .line 1469
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    return-object v0
.end method

.method public final whitelist getDataScheme(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1078
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;
    .locals 1
    .param p1, "index"    # I

    .line 1276
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    return-object v0
.end method

.method public final whitelist getDataType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 996
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getHosts()[Ljava/lang/String;
    .locals 2

    .line 2538
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getHostsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2539
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public greylist-max-o getHostsList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2524
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2525
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v1, :cond_0

    .line 2526
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2527
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter$AuthorityEntry;

    .line 2528
    .local v2, "entry":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v2}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2529
    .end local v2    # "entry":Landroid/content/IntentFilter$AuthorityEntry;
    goto :goto_0

    .line 2531
    :cond_0
    return-object v0
.end method

.method public final blacklist getMimeGroup(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1031
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getOrder()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 553
    iget v0, p0, Landroid/content/IntentFilter;->mOrder:I

    return v0
.end method

.method public final whitelist getPriority()I
    .locals 1

    .line 541
    iget v0, p0, Landroid/content/IntentFilter;->mPriority:I

    return v0
.end method

.method public greylist-max-o getVisibilityToInstantApp()I
    .locals 1

    .line 722
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    return v0
.end method

.method public final greylist-max-o handleAllWebDataURI()Z
    .locals 2

    .line 614
    const-string v0, "android.intent.category.APP_BROWSER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 614
    :cond_1
    return v1
.end method

.method public final greylist-max-o handlesWebUris(Z)Z
    .locals 6
    .param p1, "onlyWebSchemes"    # Z

    .line 636
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 637
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 639
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 644
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 645
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 646
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 647
    .local v3, "scheme":Ljava/lang/String;
    nop

    .line 648
    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v5

    .line 649
    .local v4, "isWebScheme":Z
    :goto_2
    if-eqz p1, :cond_3

    .line 653
    if-nez v4, :cond_4

    .line 654
    return v1

    .line 659
    :cond_3
    if-eqz v4, :cond_4

    .line 660
    return v5

    .line 645
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "isWebScheme":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    .end local v2    # "i":I
    :cond_5
    return p1

    .line 640
    .end local v0    # "N":I
    :cond_6
    :goto_3
    return v1
.end method

.method public final whitelist hasAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 784
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 1735
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final greylist-max-r hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 4
    .param p1, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;

    .line 1402
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1403
    return v1

    .line 1405
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1406
    .local v0, "numDataAuthorities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1407
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1408
    const/4 v1, 0x1

    return v1

    .line 1406
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1411
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public final whitelist hasDataAuthority(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    .line 1396
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final greylist-max-r hasDataPath(Landroid/os/PatternMatcher;)Z
    .locals 6
    .param p1, "path"    # Landroid/os/PatternMatcher;

    .line 1512
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1513
    return v1

    .line 1515
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1516
    .local v0, "numDataPaths":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1517
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1518
    .local v3, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1519
    const/4 v1, 0x1

    return v1

    .line 1516
    .end local v3    # "pe":Landroid/os/PatternMatcher;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1522
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public final whitelist hasDataPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 1484
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasDataScheme(Ljava/lang/String;)Z
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;

    .line 1091
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final greylist-max-r hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z
    .locals 6
    .param p1, "ssp"    # Landroid/os/PatternMatcher;

    .line 1318
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1319
    return v1

    .line 1321
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1322
    .local v0, "numDataSchemeSpecificParts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1323
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1324
    .local v3, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1325
    const/4 v1, 0x1

    return v1

    .line 1322
    .end local v3    # "pe":Landroid/os/PatternMatcher;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1328
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public final whitelist hasDataSchemeSpecificPart(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 1290
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasDataType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 966
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->findMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final greylist-max-r hasExactDataType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 972
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final blacklist hasExactDynamicDataType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 977
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasExactStaticDataType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final blacklist hasExactStaticDataType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 982
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final blacklist hasMimeGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1026
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isExplicitlyVisibleToInstantApp()Z
    .locals 2

    .line 730
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o isImplicitlyVisibleToInstantApp()Z
    .locals 2

    .line 734
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final greylist-max-p isVerified()Z
    .locals 4

    .line 697
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-ne v1, v3, :cond_1

    .line 698
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 700
    :cond_1
    return v2
.end method

.method public greylist-max-o isVisibleToInstantApp()Z
    .locals 1

    .line 726
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$addDataType$0$android-content-IntentFilter(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "internalType"    # Ljava/lang/String;
    .param p2, "isPartial"    # Ljava/lang/Boolean;

    .line 854
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 857
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    .line 861
    :cond_1
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    return-void

    .line 865
    :cond_2
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    .line 868
    return-void
.end method

.method synthetic blacklist lambda$addDynamicDataType$1$android-content-IntentFilter(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "internalType"    # Ljava/lang/String;
    .param p2, "isPartial"    # Ljava/lang/Boolean;

    .line 894
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 898
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 899
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    .line 903
    :cond_3
    return-void
.end method

.method synthetic blacklist lambda$asPredicate$2$android-content-IntentFilter(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .line 1789
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "IntentFilter"

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method synthetic blacklist lambda$asPredicateWithTypeResolution$3$android-content-IntentFilter(Landroid/content/ContentResolver;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "i"    # Landroid/content/Intent;

    .line 1805
    const/4 v0, 0x1

    const-string v1, "IntentFilter"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolve"    # Z
    .param p4, "logTag"    # Ljava/lang/String;

    .line 1828
    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 1829
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1830
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 1829
    move-object v1, p0

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final whitelist match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/Uri;
    .param p6, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1863
    .local p5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public final blacklist match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/Uri;
    .param p6, "logTag"    # Ljava/lang/String;
    .param p7, "supportWildcards"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1880
    .local p5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p8, "ignoreActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p7, p8}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;ZLjava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1883
    const/4 v0, -0x3

    return v0

    .line 1886
    :cond_0
    invoke-direct {p0, p2, p3, p4, p7}, Landroid/content/IntentFilter;->matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v0

    .line 1887
    .local v0, "dataMatch":I
    if-gez v0, :cond_1

    .line 1898
    return v0

    .line 1901
    :cond_1
    invoke-virtual {p0, p5}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 1902
    .local v1, "categoryMismatch":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1906
    const/4 v2, -0x4

    return v2

    .line 1917
    :cond_2
    return v0
.end method

.method public final whitelist matchAction(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 796
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;ZLjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final whitelist matchCategories(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1759
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1760
    return-object v0

    .line 1763
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1765
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1766
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0

    .line 1769
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1770
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1771
    .local v2, "category":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1772
    return-object v2

    .line 1774
    .end local v2    # "category":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 1776
    :cond_4
    return-object v0
.end method

.method public final whitelist matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/net/Uri;

    .line 1607
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/IntentFilter;->matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method public final whitelist matchDataAuthority(Landroid/net/Uri;)I
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    .line 1543
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method public final blacklist matchDataAuthority(Landroid/net/Uri;Z)I
    .locals 5
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "wildcardSupported"    # Z

    .line 1554
    const/4 v0, -0x2

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1557
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1558
    .local v1, "numDataAuthorities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1559
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1560
    .local v3, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v3, p1, p2}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;Z)I

    move-result v4

    .line 1561
    .local v4, "match":I
    if-ltz v4, :cond_1

    .line 1562
    return v4

    .line 1558
    .end local v3    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v4    # "match":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1565
    .end local v2    # "i":I
    :cond_2
    return v0

    .line 1555
    .end local v1    # "numDataAuthorities":I
    :cond_3
    :goto_1
    return v0
.end method

.method public final blacklist mimeGroupsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final greylist-max-o needsVerification()Z
    .locals 2

    .line 685
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final whitelist pathsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 1529
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2054
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const-string v0, "autoVerify"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2055
    .local v4, "autoVerify":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    .line 2057
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2059
    .local v6, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_1e

    const/4 v0, 0x3

    if-ne v7, v0, :cond_2

    .line 2061
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_1e

    .line 2062
    :cond_2
    if-eq v7, v0, :cond_1

    const/4 v9, 0x4

    if-ne v7, v9, :cond_3

    .line 2064
    goto :goto_1

    .line 2067
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2068
    .local v10, "tagName":Ljava/lang/String;
    const-string v11, "action"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string/jumbo v12, "name"

    if-eqz v11, :cond_5

    .line 2069
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2070
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 2071
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2073
    .end local v0    # "name":Ljava/lang/String;
    :cond_4
    goto/16 :goto_6

    :cond_5
    const-string v11, "cat"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2074
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2075
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 2076
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2078
    .end local v0    # "name":Ljava/lang/String;
    :cond_6
    goto/16 :goto_6

    :cond_7
    const-string/jumbo v11, "staticType"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2079
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2080
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 2082
    :try_start_0
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2084
    goto :goto_2

    .line 2083
    :catch_0
    move-exception v0

    .line 2086
    .end local v8    # "name":Ljava/lang/String;
    :cond_8
    :goto_2
    goto/16 :goto_6

    :cond_9
    const-string/jumbo v11, "type"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2087
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2088
    .restart local v8    # "name":Ljava/lang/String;
    if-eqz v8, :cond_a

    .line 2090
    :try_start_1
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addDynamicDataType(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2092
    goto :goto_3

    .line 2091
    :catch_1
    move-exception v0

    .line 2094
    .end local v8    # "name":Ljava/lang/String;
    :cond_a
    :goto_3
    goto/16 :goto_6

    :cond_b
    const-string v11, "group"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2095
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2096
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 2097
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    .line 2099
    .end local v0    # "name":Ljava/lang/String;
    :cond_c
    goto/16 :goto_6

    :cond_d
    const-string/jumbo v11, "scheme"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2100
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2101
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 2102
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2104
    .end local v0    # "name":Ljava/lang/String;
    :cond_e
    goto/16 :goto_6

    :cond_f
    const-string/jumbo v11, "ssp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string/jumbo v12, "suffix"

    const/4 v13, 0x2

    const-string v14, "aglob"

    const-string/jumbo v15, "sglob"

    const-string/jumbo v9, "prefix"

    const-string v0, "literal"

    if-eqz v11, :cond_15

    .line 2105
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2106
    .local v0, "ssp":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 2107
    invoke-virtual {v1, v0, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_4

    .line 2108
    :cond_10
    invoke-interface {v2, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    if-eqz v9, :cond_11

    .line 2109
    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_4

    .line 2110
    :cond_11
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_12

    .line 2111
    invoke-virtual {v1, v0, v13}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_4

    .line 2112
    :cond_12
    invoke-interface {v2, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_13

    .line 2113
    const/4 v8, 0x3

    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_4

    .line 2114
    :cond_13
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_14

    .line 2115
    const/4 v8, 0x4

    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 2117
    .end local v0    # "ssp":Ljava/lang/String;
    :cond_14
    :goto_4
    goto/16 :goto_6

    :cond_15
    const-string v11, "auth"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 2118
    const-string v0, "host"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2119
    .local v0, "host":Ljava/lang/String;
    const-string/jumbo v8, "port"

    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2120
    .local v8, "port":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 2121
    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    .end local v0    # "host":Ljava/lang/String;
    .end local v8    # "port":Ljava/lang/String;
    :cond_16
    goto :goto_6

    :cond_17
    const-string/jumbo v11, "path"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 2124
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2125
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 2126
    invoke-virtual {v1, v0, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_5

    .line 2127
    :cond_18
    invoke-interface {v2, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    if-eqz v9, :cond_19

    .line 2128
    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_5

    .line 2129
    :cond_19
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_1a

    .line 2130
    invoke-virtual {v1, v0, v13}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_5

    .line 2131
    :cond_1a
    invoke-interface {v2, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_1b

    .line 2132
    const/4 v8, 0x3

    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto :goto_5

    .line 2133
    :cond_1b
    invoke-interface {v2, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    if-eqz v8, :cond_1c

    .line 2134
    const/4 v8, 0x4

    invoke-virtual {v1, v0, v8}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 2136
    .end local v0    # "path":Ljava/lang/String;
    :cond_1c
    :goto_5
    goto :goto_6

    .line 2137
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tag parsing IntentFilter: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "IntentFilter"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2140
    .end local v10    # "tagName":Ljava/lang/String;
    goto/16 :goto_1

    .line 2141
    :cond_1e
    return-void
.end method

.method public final blacklist removeAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 755
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 758
    :cond_0
    return-void
.end method

.method public final whitelist schemeSpecificPartsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final whitelist schemesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final greylist-max-r setAutoVerify(Z)V
    .locals 1
    .param p1, "autoVerify"    # Z

    .line 581
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 582
    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 583
    :cond_0
    return-void
.end method

.method public final whitelist setOrder(I)V
    .locals 0
    .param p1, "order"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 547
    iput p1, p0, Landroid/content/IntentFilter;->mOrder:I

    .line 548
    return-void
.end method

.method public final whitelist setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 530
    iput p1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 531
    return-void
.end method

.method public greylist-max-o setVerified(Z)V
    .locals 1
    .param p1, "verified"    # Z

    .line 711
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 712
    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 713
    if-eqz p1, :cond_0

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 714
    :cond_0
    return-void
.end method

.method public greylist-max-o setVisibilityToInstantApp(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 718
    iput p1, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    .line 719
    return-void
.end method

.method public final whitelist typesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1003
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2327
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2328
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2329
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2330
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 2332
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2334
    :goto_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2335
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2336
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_1

    .line 2338
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2340
    :goto_1
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2341
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2342
    iget-object v0, p0, Landroid/content/IntentFilter;->mStaticDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_2

    .line 2344
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2346
    :goto_2
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 2347
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2348
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_3

    .line 2350
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    :goto_3
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 2353
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2354
    iget-object v0, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_4

    .line 2356
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2358
    :goto_4
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 2359
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2360
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_5

    .line 2362
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    invoke-virtual {v3, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2361
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2364
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_5
    goto :goto_6

    .line 2365
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2367
    :goto_6
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 2368
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2369
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2370
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v0, :cond_7

    .line 2371
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter$AuthorityEntry;->writeToParcel(Landroid/os/Parcel;)V

    .line 2370
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2373
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_7
    goto :goto_8

    .line 2374
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2376
    :goto_8
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 2377
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2378
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2379
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    if-ge v1, v0, :cond_9

    .line 2380
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    invoke-virtual {v2, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2379
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2382
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_9
    goto :goto_a

    .line 2383
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2385
    :goto_a
    iget v0, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2386
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasStaticPartialTypes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2387
    iget-boolean v0, p0, Landroid/content/IntentFilter;->mHasDynamicPartialTypes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2389
    iget v0, p0, Landroid/content/IntentFilter;->mInstantAppVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2390
    iget v0, p0, Landroid/content/IntentFilter;->mOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2391
    return-void
.end method

.method public whitelist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 12
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1925
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1926
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "autoVerify"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1929
    :cond_0
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 1930
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string/jumbo v3, "name"

    if-ge v2, v0, :cond_1

    .line 1931
    const-string v4, "action"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1932
    iget-object v5, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1933
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1930
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1935
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 1936
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1937
    const-string v4, "cat"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1938
    iget-object v5, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1939
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1936
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1941
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->writeDataTypesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1942
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v0

    .line 1943
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1944
    const-string v4, "group"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1945
    iget-object v5, p0, Landroid/content/IntentFilter;->mMimeGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1946
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1943
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1948
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 1949
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_4

    .line 1950
    const-string/jumbo v4, "scheme"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1951
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1952
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1949
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1954
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 1955
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    const-string/jumbo v3, "suffix"

    const-string v4, "aglob"

    const-string/jumbo v5, "sglob"

    const-string/jumbo v6, "prefix"

    const-string v7, "literal"

    if-ge v2, v0, :cond_5

    .line 1956
    const-string/jumbo v8, "ssp"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1957
    iget-object v9, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PatternMatcher;

    .line 1958
    .local v9, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_5

    .line 1972
    :pswitch_0
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 1969
    :pswitch_1
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1970
    goto :goto_5

    .line 1966
    :pswitch_2
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1967
    goto :goto_5

    .line 1963
    :pswitch_3
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1964
    goto :goto_5

    .line 1960
    :pswitch_4
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1961
    nop

    .line 1975
    :goto_5
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1955
    .end local v9    # "pe":Landroid/os/PatternMatcher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1977
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 1978
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v0, :cond_7

    .line 1979
    const-string v8, "auth"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1980
    iget-object v9, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1981
    .local v9, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v9}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v10

    const-string v11, "host"

    invoke-interface {p1, v1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1982
    invoke-virtual {v9}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v10

    if-ltz v10, :cond_6

    .line 1983
    invoke-virtual {v9}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "port"

    invoke-interface {p1, v1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1985
    :cond_6
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1978
    .end local v9    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1987
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 1988
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v0, :cond_8

    .line 1989
    const-string/jumbo v8, "path"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1990
    iget-object v9, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PatternMatcher;

    .line 1991
    .local v9, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    goto :goto_8

    .line 2005
    :pswitch_5
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 2002
    :pswitch_6
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2003
    goto :goto_8

    .line 1999
    :pswitch_7
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2000
    goto :goto_8

    .line 1996
    :pswitch_8
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1997
    goto :goto_8

    .line 1993
    :pswitch_9
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1994
    nop

    .line 2008
    :goto_8
    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1988
    .end local v9    # "pe":Landroid/os/PatternMatcher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2010
    .end local v2    # "i":I
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
