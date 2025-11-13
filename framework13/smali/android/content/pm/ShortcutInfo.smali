.class public final Landroid/content/pm/ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ShortcutInfo$Builder;,
        Landroid/content/pm/ShortcutInfo$Surface;,
        Landroid/content/pm/ShortcutInfo$DisabledReason;,
        Landroid/content/pm/ShortcutInfo$CloneFlags;,
        Landroid/content/pm/ShortcutInfo$ShortcutFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final blacklist CLONE_REMOVE_FOR_APP_PREDICTION:I = 0x9

.field public static final greylist-max-o CLONE_REMOVE_FOR_CREATOR:I = 0x9

.field public static final greylist-max-o CLONE_REMOVE_FOR_LAUNCHER:I = 0x1b

.field public static final greylist-max-o CLONE_REMOVE_FOR_LAUNCHER_APPROVAL:I = 0x1a

.field private static final greylist-max-o CLONE_REMOVE_ICON:I = 0x1

.field private static final greylist-max-o CLONE_REMOVE_INTENT:I = 0x2

.field public static final greylist-max-o CLONE_REMOVE_NON_KEY_INFO:I = 0x4

.field public static final blacklist CLONE_REMOVE_PERSON:I = 0x10

.field public static final greylist-max-o CLONE_REMOVE_RES_NAMES:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISABLED_REASON_APP_CHANGED:I = 0x2

.field public static final whitelist DISABLED_REASON_BACKUP_NOT_SUPPORTED:I = 0x65

.field public static final whitelist DISABLED_REASON_BY_APP:I = 0x1

.field public static final whitelist DISABLED_REASON_NOT_DISABLED:I = 0x0

.field public static final whitelist DISABLED_REASON_OTHER_RESTORE_ISSUE:I = 0x67

.field private static final greylist-max-o DISABLED_REASON_RESTORE_ISSUE_START:I = 0x64

.field public static final whitelist DISABLED_REASON_SIGNATURE_MISMATCH:I = 0x66

.field public static final whitelist DISABLED_REASON_UNKNOWN:I = 0x3

.field public static final whitelist DISABLED_REASON_VERSION_LOWER:I = 0x64

.field public static final greylist-max-o FLAG_ADAPTIVE_BITMAP:I = 0x200

.field public static final blacklist FLAG_CACHED_ALL:I = 0x60004000

.field public static final blacklist FLAG_CACHED_BUBBLES:I = 0x40000000

.field public static final blacklist FLAG_CACHED_NOTIFICATIONS:I = 0x4000

.field public static final blacklist FLAG_CACHED_PEOPLE_TILE:I = 0x20000000

.field public static final greylist-max-o FLAG_DISABLED:I = 0x40

.field public static final greylist-max-o FLAG_DYNAMIC:I = 0x1

.field public static final greylist-max-o FLAG_HAS_ICON_FILE:I = 0x8

.field public static final greylist-max-o FLAG_HAS_ICON_RES:I = 0x4

.field public static final blacklist FLAG_HAS_ICON_URI:I = 0x8000

.field public static final greylist-max-o FLAG_ICON_FILE_PENDING_SAVE:I = 0x800

.field public static final greylist-max-o FLAG_IMMUTABLE:I = 0x100

.field public static final greylist-max-o FLAG_KEY_FIELDS_ONLY:I = 0x10

.field public static final blacklist FLAG_LONG_LIVED:I = 0x2000

.field public static final greylist-max-o FLAG_MANIFEST:I = 0x20

.field public static final greylist-max-o FLAG_PINNED:I = 0x2

.field public static final greylist-max-o FLAG_RETURNED_BY_SERVICE:I = 0x400

.field public static final greylist-max-o FLAG_SHADOW:I = 0x1000

.field public static final greylist-max-o FLAG_STRINGS_RESOLVED:I = 0x80

.field private static final greylist-max-o IMPLICIT_RANK_MASK:I = 0x7fffffff

.field public static final greylist-max-o RANK_CHANGED_BIT:I = -0x80000000

.field public static final greylist-max-o RANK_NOT_SET:I = 0x7fffffff

.field private static final greylist-max-o RES_TYPE_STRING:Ljava/lang/String; = "string"

.field public static final whitelist SHORTCUT_CATEGORY_CONVERSATION:Ljava/lang/String; = "android.shortcut.conversation"

.field public static final whitelist SURFACE_LAUNCHER:I = 0x1

.field static final greylist-max-o TAG:Ljava/lang/String; = "Shortcut"

.field public static final greylist-max-o VERSION_CODE_UNKNOWN:I = -0x1


# instance fields
.field private greylist-max-o mActivity:Landroid/content/ComponentName;

.field private greylist-max-o mBitmapPath:Ljava/lang/String;

.field private blacklist mCapabilityBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDisabledMessage:Ljava/lang/CharSequence;

.field private greylist-max-o mDisabledMessageResId:I

.field private greylist-max-o mDisabledMessageResName:Ljava/lang/String;

.field private greylist-max-o mDisabledReason:I

.field private blacklist mExcludedSurfaces:I

.field private greylist-max-o mExtras:Landroid/os/PersistableBundle;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconResId:I

.field private greylist-max-o mIconResName:Ljava/lang/String;

.field private blacklist mIconUri:Ljava/lang/String;

.field private final greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mImplicitRank:I

.field private greylist-max-o mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

.field private greylist-max-o mIntents:[Landroid/content/Intent;

.field private greylist-max-o mLastChangedTimestamp:J

.field private blacklist mLocusId:Landroid/content/LocusId;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mPersons:[Landroid/app/Person;

.field private greylist-max-o mRank:I

.field private blacklist mStartingThemeResName:Ljava/lang/String;

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextResId:I

.field private greylist-max-o mTextResName:Ljava/lang/String;

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleResId:I

.field private greylist-max-o mTitleResName:Ljava/lang/String;

.field private final greylist-max-o mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 0

    invoke-static {p0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smclonePersons([Landroid/app/Person;)[Landroid/app/Person;
    .locals 0

    invoke-static {p0}, Landroid/content/pm/ShortcutInfo;->clonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2450
    new-instance v0, Landroid/content/pm/ShortcutInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ShortcutInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .param p1, "userId"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "titleResId"    # I
    .param p8, "titleResName"    # Ljava/lang/String;
    .param p9, "text"    # Ljava/lang/CharSequence;
    .param p10, "textResId"    # I
    .param p11, "textResName"    # Ljava/lang/String;
    .param p12, "disabledMessage"    # Ljava/lang/CharSequence;
    .param p13, "disabledMessageResId"    # I
    .param p14, "disabledMessageResName"    # Ljava/lang/String;
    .param p16, "intentsWithExtras"    # [Landroid/content/Intent;
    .param p17, "rank"    # I
    .param p18, "extras"    # Landroid/os/PersistableBundle;
    .param p19, "lastChangedTimestamp"    # J
    .param p21, "flags"    # I
    .param p22, "iconResId"    # I
    .param p23, "iconResName"    # Ljava/lang/String;
    .param p24, "bitmapPath"    # Ljava/lang/String;
    .param p25, "iconUri"    # Ljava/lang/String;
    .param p26, "disabledReason"    # I
    .param p27, "persons"    # [Landroid/app/Person;
    .param p28, "locusId"    # Landroid/content/LocusId;
    .param p29, "startingThemeResName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/PersistableBundle;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Landroid/app/Person;",
            "Landroid/content/LocusId;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 2706
    .local p15, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p30, "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2707
    move/from16 v1, p1

    iput v1, v0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    .line 2708
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    .line 2709
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 2710
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 2711
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2712
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 2713
    move/from16 v7, p7

    iput v7, v0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 2714
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 2715
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 2716
    move/from16 v10, p10

    iput v10, v0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 2717
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 2718
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 2719
    move/from16 v13, p13

    iput v13, v0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 2720
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 2721
    invoke-static/range {p15 .. p15}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 2722
    invoke-static/range {p16 .. p16}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 2723
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    .line 2724
    move/from16 v15, p17

    iput v15, v0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 2725
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    .line 2726
    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    .line 2727
    move/from16 v1, p21

    iput v1, v0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 2728
    move/from16 v2, p22

    iput v2, v0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 2729
    move-object/from16 v1, p23

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 2730
    move-object/from16 v1, p24

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 2731
    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    .line 2732
    move/from16 v1, p26

    iput v1, v0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    .line 2733
    move-object/from16 v1, p27

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    .line 2734
    move-object/from16 v1, p28

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    .line 2735
    move-object/from16 v1, p29

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    .line 2736
    invoke-static/range {p30 .. p30}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 2737
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/pm/ShortcutInfo$Builder;)V
    .locals 2
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo$Builder;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmContext(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    .line 480
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmId(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shortcut ID must be provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    .line 484
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmContext(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 485
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmActivity(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 486
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmIcon(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 487
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmTitle(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 488
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmTitleResId(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 489
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmText(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 490
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmTextResId(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 491
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmDisabledMessage(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 492
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmDisabledMessageResId(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 493
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmCategories(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 494
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmIntents(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 495
    invoke-direct {p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    .line 496
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmPersons(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/app/Person;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    .line 497
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmIsLongLived(Landroid/content/pm/ShortcutInfo$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->setLongLived()V

    .line 500
    :cond_0
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmExcludedSurfaces(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    .line 501
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmRank(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 502
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmExtras(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    .line 503
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmLocusId(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/LocusId;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    .line 504
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmCapabilityBindings(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Map;

    move-result-object v0

    .line 505
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 506
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmStartingThemeResId(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmContext(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->-$$Nest$fgetmStartingThemeResId(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    .line 508
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->updateTimestamp()V

    .line 509
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/pm/ShortcutInfo;I)V
    .locals 3
    .param p1, "source"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "cloneFlags"    # I

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mUserId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    .line 608
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    .line 609
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 610
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 611
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mFlags:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 612
    iget-wide v1, p1, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    iput-wide v1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    .line 613
    iget v1, p1, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    .line 614
    iget-object v1, p1, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    .line 615
    iget v1, p1, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    .line 618
    iget v1, p1, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 620
    and-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_3

    .line 622
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 624
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 625
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    .line 628
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 629
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 630
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 631
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 632
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 633
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 634
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 635
    and-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_1

    .line 636
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    .line 638
    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_2

    .line 639
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 640
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 641
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 643
    :cond_2
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 644
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    .line 646
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_4

    .line 647
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 648
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 649
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 650
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    goto :goto_0

    .line 654
    :cond_3
    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 656
    :cond_4
    :goto_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 658
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    .line 659
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2337
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2339
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    .line 2340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    .line 2341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 2342
    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 2343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 2344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 2345
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    .line 2346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    .line 2348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    .line 2349
    return-void

    .line 2352
    :cond_0
    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2353
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 2354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 2355
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 2356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 2357
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 2358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 2359
    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 2360
    const-class v1, Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 2361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 2362
    const-class v1, Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    .line 2363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 2365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 2366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 2367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 2368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 2370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2371
    .local v1, "N":I
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2372
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    goto :goto_1

    .line 2374
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 2375
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2376
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2375
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2380
    .end local v3    # "i":I
    :cond_2
    :goto_1
    const-class v3, Landroid/app/Person;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/app/Person;

    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    .line 2381
    const-class v3, Landroid/content/LocusId;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/LocusId;

    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    .line 2382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    .line 2383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    .line 2384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    .line 2386
    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/util/HashMap;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v2

    .line 2388
    .local v2, "rawCapabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2389
    new-instance v3, Landroid/util/ArrayMap;

    .line 2390
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2391
    .local v3, "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/pm/ShortcutInfo$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/content/pm/ShortcutInfo$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2392
    invoke-static {v3}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 2394
    .end local v3    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_3
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ShortcutInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # Ljava/lang/String;

    .line 2493
    if-eqz p2, :cond_0

    .line 2494
    const-string v0, "\n  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2495
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2497
    :cond_0
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    :goto_0
    return-void
.end method

.method private static blacklist cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 2273
    .local p0, "orig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-nez p0, :cond_0

    .line 2274
    const/4 v0, 0x0

    return-object v0

    .line 2276
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2277
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2278
    .local v2, "capability":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2280
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v3, :cond_1

    .line 2281
    const/4 v4, 0x0

    .local v4, "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_2

    .line 2283
    .end local v4    # "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    new-instance v4, Landroid/util/ArrayMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2284
    .restart local v4    # "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2285
    .local v6, "paramName":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2286
    .local v7, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    .end local v6    # "paramName":Ljava/lang/String;
    .end local v7    # "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 2289
    :cond_2
    :goto_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    .end local v2    # "capability":Ljava/lang/String;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 2291
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 534
    .local p0, "source":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 535
    const/4 v0, 0x0

    return-object v0

    .line 537
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 538
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 539
    .local v2, "s":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 540
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 542
    .end local v2    # "s":Ljava/lang/CharSequence;
    :cond_1
    goto :goto_0

    .line 543
    :cond_2
    return-object v0
.end method

.method private static greylist-max-o cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 4
    .param p0, "intents"    # [Landroid/content/Intent;

    .line 547
    if-nez p0, :cond_0

    .line 548
    const/4 v0, 0x0

    return-object v0

    .line 550
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/content/Intent;

    .line 551
    .local v0, "ret":[Landroid/content/Intent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 552
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 553
    new-instance v2, Landroid/content/Intent;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v2, v0, v1

    .line 551
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private static greylist-max-o clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;
    .locals 4
    .param p0, "bundle"    # [Landroid/os/PersistableBundle;

    .line 560
    if-nez p0, :cond_0

    .line 561
    const/4 v0, 0x0

    return-object v0

    .line 563
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/os/PersistableBundle;

    .line 564
    .local v0, "ret":[Landroid/os/PersistableBundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 565
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 566
    new-instance v2, Landroid/os/PersistableBundle;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    aput-object v2, v0, v1

    .line 564
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private static blacklist clonePersons([Landroid/app/Person;)[Landroid/app/Person;
    .locals 4
    .param p0, "persons"    # [Landroid/app/Person;

    .line 573
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 574
    return-object v0

    .line 576
    :cond_0
    array-length v1, p0

    new-array v1, v1, [Landroid/app/Person;

    .line 577
    .local v1, "ret":[Landroid/app/Person;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 578
    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 580
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v3

    aput-object v3, v1, v2

    .line 577
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public static blacklist createFromGenericDocument(ILandroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;
    .locals 1
    .param p0, "userId"    # I
    .param p1, "document"    # Landroid/app/appsearch/GenericDocument;

    .line 680
    new-instance v0, Landroid/content/pm/AppSearchShortcutInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/AppSearchShortcutInfo;-><init>(Landroid/app/appsearch/GenericDocument;)V

    invoke-virtual {v0, p0}, Landroid/content/pm/AppSearchShortcutInfo;->toShortcutInfo(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromGenericDocument(Landroid/content/Context;Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "document"    # Landroid/app/appsearch/GenericDocument;

    .line 670
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {v0, p1}, Landroid/content/pm/ShortcutInfo;->createFromGenericDocument(ILandroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o fixUpIntentExtras()V
    .locals 6

    .line 516
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 517
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 518
    return-void

    .line 520
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 522
    aget-object v2, v2, v0

    .line 523
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 524
    .local v3, "extras":Landroid/os/Bundle;
    if-nez v3, :cond_1

    .line 525
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aput-object v1, v4, v0

    goto :goto_1

    .line 527
    :cond_1
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5, v3}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    aput-object v5, v4, v0

    .line 528
    move-object v4, v1

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 521
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "extras":Landroid/os/Bundle;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static greylist-max-o getDisabledReasonDebugString(I)Ljava/lang/String;
    .locals 2
    .param p0, "disabledReason"    # I

    .line 306
    sparse-switch p0, :sswitch_data_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Disabled: unknown reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 320
    :sswitch_0
    const-string v0, "[Disabled: unknown restore issue]"

    return-object v0

    .line 318
    :sswitch_1
    const-string v0, "[Disabled: signature mismatch]"

    return-object v0

    .line 316
    :sswitch_2
    const-string v0, "[Disabled: backup not supported]"

    return-object v0

    .line 314
    :sswitch_3
    const-string v0, "[Disabled: lower version]"

    return-object v0

    .line 312
    :sswitch_4
    const-string v0, "[Disabled: app changed]"

    return-object v0

    .line 310
    :sswitch_5
    const-string v0, "[Disabled: by app]"

    return-object v0

    .line 308
    :sswitch_6
    const-string v0, "[Not disabled]"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o getDisabledReasonForRestoreIssue(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "disabledReason"    # I

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 338
    .local v0, "res":Landroid/content/res/Resources;
    sparse-switch p1, :sswitch_data_0

    .line 355
    const/4 v1, 0x0

    return-object v1

    .line 349
    :sswitch_0
    const v1, 0x1040d53

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 346
    :sswitch_1
    const v1, 0x1040d52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 343
    :sswitch_2
    const v1, 0x1040d51

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 340
    :sswitch_3
    const v1, 0x1040d54

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 352
    :sswitch_4
    const v1, 0x1040d50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o getInvalidIconException()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 1036
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported icon type: only the bitmap and resource types are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getResourceEntryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullResourceName"    # Ljava/lang/String;

    .line 810
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 811
    .local v0, "p1":I
    if-gez v0, :cond_0

    .line 812
    const/4 v1, 0x0

    return-object v1

    .line 814
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getResourcePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullResourceName"    # Ljava/lang/String;

    .line 764
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 765
    .local v0, "p1":I
    if-gez v0, :cond_0

    .line 766
    const/4 v1, 0x0

    return-object v1

    .line 768
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "defValue"    # Ljava/lang/CharSequence;

    .line 691
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource for ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Shortcut"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-object p3
.end method

.method public static greylist-max-o getResourceTypeAndEntryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullResourceName"    # Ljava/lang/String;

    .line 796
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 797
    .local v0, "p1":I
    if-gez v0, :cond_0

    .line 798
    const/4 v1, 0x0

    return-object v1

    .line 800
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getResourceTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fullResourceName"    # Ljava/lang/String;

    .line 778
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 779
    .local v0, "p1":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 780
    return-object v1

    .line 782
    :cond_0
    const/16 v2, 0x2f

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 783
    .local v2, "p2":I
    if-gez v2, :cond_1

    .line 784
    return-object v1

    .line 786
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o isDisabledForRestoreIssue(I)Z
    .locals 1
    .param p0, "disabledReason"    # I

    .line 360
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "resourceType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 832
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 833
    return v0

    .line 838
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 843
    :catch_0
    move-exception v1

    goto :goto_0

    .line 839
    :catch_1
    move-exception v1

    .line 842
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 844
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID for name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Shortcut"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return v0
.end method

.method public static greylist-max-o lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "withType"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 736
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 737
    return-object v0

    .line 740
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "fullName":Ljava/lang/String;
    const-string v2, "android"

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourcePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 745
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 747
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourceTypeAndEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_2
    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourceEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-object v0

    .line 749
    .end local v1    # "fullName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 750
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource name for ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Resource IDs may change when the application is upgraded, and the system may not be able to find the correct resource."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Shortcut"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-object v0
.end method

.method public static greylist-max-o setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 2227
    if-nez p1, :cond_0

    .line 2228
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 2230
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2232
    :goto_0
    return-object p0
.end method

.method private greylist-max-o toStringInner(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "secure"    # Z
    .param p2, "includeInternalData"    # Z
    .param p3, "indent"    # Ljava/lang/String;

    .line 2502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2504
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 2505
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2508
    :cond_0
    const-string v1, "ShortcutInfo {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2510
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2511
    const-string v1, "***"

    if-eqz p1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    const-string v2, ", flags=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2516
    iget v2, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_2

    .line 2519
    const-string v2, "Sdw"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2521
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2522
    const-string v2, "Dis"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2525
    const-string v2, "Im"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    :cond_4
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2528
    const-string v2, "Man"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    :cond_5
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2531
    const-string v2, "Dyn"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2534
    const-string v2, "Pin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2536
    :cond_7
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2537
    const-string v2, "Ic-f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2540
    const-string v2, "Pens"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    :cond_9
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2543
    const-string v2, "Ic-r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2546
    const-string v2, "Ic-u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2548
    :cond_b
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2549
    const-string v2, "Ic-a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    :cond_c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2552
    const-string v2, "Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    :cond_d
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasStringResourcesResolved()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2555
    const-string v2, "Str"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2558
    const-string v2, "Rets"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2561
    const-string v2, "Liv"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    :cond_10
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2564
    const-string v2, "Hid-L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    :cond_11
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2570
    const-string/jumbo v3, "packageName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2573
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2575
    const-string v3, "activity="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2578
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2580
    const-string/jumbo v3, "shortLabel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    if-eqz p1, :cond_12

    move-object v3, v1

    goto :goto_1

    :cond_12
    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2582
    const-string v3, ", resId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    iget v4, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2584
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    iget-object v5, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2588
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2590
    const-string v5, "longLabel="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2591
    if-eqz p1, :cond_13

    move-object v5, v1

    goto :goto_2

    :cond_13
    iget-object v5, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2592
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    iget v5, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2594
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    iget-object v5, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2600
    const-string v5, "disabledMessage="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    if-eqz p1, :cond_14

    goto :goto_3

    :cond_14
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2602
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2604
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2606
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2608
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2610
    const-string v1, "disabledReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getDisabledReasonDebugString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 2614
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2615
    const-string v1, "SplashScreenThemeResName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2619
    :cond_15
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2621
    const-string v1, "categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2622
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2624
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2626
    const-string/jumbo v1, "persons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2629
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2631
    const-string v1, "icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2634
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2636
    const-string/jumbo v1, "rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2637
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2639
    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2640
    iget-wide v5, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2642
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2644
    const-string v1, "intents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2645
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-nez v1, :cond_16

    .line 2646
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2648
    :cond_16
    if-eqz p1, :cond_17

    .line 2649
    const-string/jumbo v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2652
    :cond_17
    array-length v1, v1

    .line 2653
    .local v1, "size":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2654
    const-string v3, ""

    .line 2655
    .local v3, "sep":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v1, :cond_18

    .line 2656
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
    const-string v3, ", "

    .line 2658
    iget-object v6, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2659
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
    iget-object v6, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2655
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2662
    .end local v5    # "i":I
    :cond_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2666
    .end local v1    # "size":I
    .end local v3    # "sep":Ljava/lang/String;
    :goto_5
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2668
    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2669
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2671
    if-eqz p2, :cond_19

    .line 2672
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2674
    const-string v1, "iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2675
    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2676
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2678
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2680
    const-string v1, ", bitmapPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2681
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2683
    const-string v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2684
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2687
    :cond_19
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_1a

    .line 2688
    const-string v1, "locusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2691
    :cond_1a
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1017
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1025
    :pswitch_0
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1023
    :pswitch_1
    nop

    .line 1027
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hasTint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    return-object p0

    .line 1028
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Icons with tints are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 1847
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 1848
    return-void
.end method

.method public greylist-max-o clearFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 1852
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 1853
    return-void
.end method

.method public greylist-max-o clearIcon()V
    .locals 1

    .line 2107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2108
    return-void
.end method

.method public greylist-max-o clearIconPendingSave()V
    .locals 1

    .line 2048
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 2049
    return-void
.end method

.method public greylist-max-o clearImplicitRankAndRankChangedFlag()V
    .locals 1

    .line 1781
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    .line 1782
    return-void
.end method

.method public greylist-max-o clone(I)Landroid/content/pm/ShortcutInfo;
    .locals 1
    .param p1, "cloneFlags"    # I

    .line 903
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {v0, p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;I)V

    return-object v0
.end method

.method public greylist-max-o copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "source"    # Landroid/content/pm/ShortcutInfo;

    .line 941
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 943
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 944
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 947
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 948
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 950
    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 951
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 952
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 953
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    .line 955
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 956
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 957
    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 958
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    goto :goto_0

    .line 959
    :cond_2
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-eqz v0, :cond_3

    .line 960
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 961
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 962
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 965
    :cond_3
    :goto_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 966
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 967
    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 968
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    goto :goto_1

    .line 969
    :cond_4
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-eqz v0, :cond_5

    .line 970
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 971
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 972
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 974
    :cond_5
    :goto_1
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 975
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 976
    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 977
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    goto :goto_2

    .line 978
    :cond_6
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-eqz v0, :cond_7

    .line 979
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 980
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 981
    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 983
    :cond_7
    :goto_2
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_8

    .line 984
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 986
    :cond_8
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    if-eqz v0, :cond_9

    .line 987
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    .line 989
    :cond_9
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_a

    .line 990
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 991
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 992
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    .line 994
    :cond_a
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_b

    .line 995
    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 997
    :cond_b
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_c

    .line 998
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    .line 1001
    :cond_c
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    if-eqz v0, :cond_d

    .line 1002
    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    .line 1004
    :cond_d
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1005
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    .line 1007
    :cond_e
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 1008
    nop

    .line 1009
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    .line 1011
    :cond_f
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 2462
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o enforceMandatoryFields(Z)V
    .locals 2
    .param p1, "forPinned"    # Z

    .line 592
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    const-string v1, "Shortcut ID must be provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 593
    if-nez p1, :cond_0

    .line 594
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    const-string v1, "Activity must be provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 596
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 597
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Short label must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    const-string v1, "Shortcut Intent must be provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 601
    return-void
.end method

.method public greylist-max-o ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V
    .locals 3
    .param p1, "source"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "isUpdating"    # Z

    .line 912
    if-eqz p2, :cond_0

    .line 913
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    const-string v1, "[Framework BUG] Invisible shortcuts can\'t be updated"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 916
    :cond_0
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    iget v1, p1, Landroid/content/pm/ShortcutInfo;->mUserId:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Owner User ID must match"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 917
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ID must match"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 918
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Package name must match"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 921
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v1, "Target ShortcutInfo is immutable"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 925
    :cond_2
    return-void
.end method

.method public whitelist getActivity()Landroid/content/ComponentName;
    .locals 1

    .line 1542
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getBitmapPath()Ljava/lang/String;
    .locals 1

    .line 2146
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCapabilities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/Capability;",
            ">;"
        }
    .end annotation

    .line 2299
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2300
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 2302
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/pm/ShortcutInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/content/pm/ShortcutInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2303
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2302
    return-object v0
.end method

.method public blacklist getCapabilityBindingsInternal()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 2267
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCapabilityBindings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCapabilityParams(Landroid/content/pm/Capability;)Ljava/util/List;
    .locals 11
    .param p1, "capability"    # Landroid/content/pm/Capability;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/Capability;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/CapabilityParams;",
            ">;"
        }
    .end annotation

    .line 2313
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 2317
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/Capability;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2318
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v0, :cond_1

    .line 2319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2

    .line 2321
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2322
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/CapabilityParams;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2323
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2324
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2325
    .local v6, "primaryValue":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 2326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5, v8, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 2327
    .local v7, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v8, Landroid/content/pm/CapabilityParams$Builder;

    invoke-direct {v8, v4, v6}, Landroid/content/pm/CapabilityParams$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    .local v8, "builder":Landroid/content/pm/CapabilityParams$Builder;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2329
    .local v10, "alias":Ljava/lang/String;
    invoke-virtual {v8, v10}, Landroid/content/pm/CapabilityParams$Builder;->addAlias(Ljava/lang/String;)Landroid/content/pm/CapabilityParams$Builder;

    move-result-object v8

    .line 2330
    .end local v10    # "alias":Ljava/lang/String;
    goto :goto_2

    .line 2331
    :cond_3
    invoke-virtual {v8}, Landroid/content/pm/CapabilityParams$Builder;->build()Landroid/content/pm/CapabilityParams;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2332
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "primaryValue":Ljava/lang/String;
    .end local v7    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "builder":Landroid/content/pm/CapabilityParams$Builder;
    goto :goto_0

    .line 2333
    :cond_4
    return-object v2
.end method

.method public whitelist getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1677
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 1649
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getDisabledMessageResName()Ljava/lang/String;
    .locals 1

    .line 2192
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getDisabledMessageResourceId()I
    .locals 1

    .line 1654
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    return v0
.end method

.method public whitelist getDisabledReason()I
    .locals 1

    .line 1667
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    return v0
.end method

.method public whitelist getExcludedFromSurfaces()I
    .locals 1

    .line 2258
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 1812
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .locals 1

    .line 1837
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    return v0
.end method

.method public greylist-max-p getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 1558
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public greylist-max-o getIconResName()Ljava/lang/String;
    .locals 1

    .line 2202
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getIconResourceId()I
    .locals 1

    .line 2123
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    return v0
.end method

.method public blacklist getIconUri()Ljava/lang/String;
    .locals 1

    .line 2136
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 1509
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getImplicitRank()I
    .locals 2

    .line 1792
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 3

    .line 1692
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1695
    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 1696
    .local v0, "last":I
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1697
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 1693
    .end local v0    # "last":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getIntentPersistableExtrases()[Landroid/os/PersistableBundle;
    .locals 1

    .line 1751
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getIntents()[Landroid/content/Intent;
    .locals 4

    .line 1711
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1712
    const/4 v0, 0x0

    return-object v0

    .line 1714
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Landroid/content/Intent;

    .line 1716
    .local v0, "ret":[Landroid/content/Intent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1717
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v2, v0, v1

    .line 1718
    aget-object v2, v0, v1

    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1721
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public greylist-max-o getIntentsNoExtras()[Landroid/content/Intent;
    .locals 1

    .line 1730
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 1628
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1629
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1630
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1633
    :cond_0
    return-object v0
.end method

.method public whitelist getLastChangedTimestamp()J
    .locals 2

    .line 1831
    iget-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    return-wide v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .locals 1

    .line 1520
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public whitelist getLongLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1618
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getLongLabelResourceId()I
    .locals 1

    .line 1638
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    return v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .locals 1

    .line 1528
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPersons()[Landroid/app/Person;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1741
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersons([Landroid/app/Person;)[Landroid/app/Person;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRank()I
    .locals 1

    .line 1766
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    return v0
.end method

.method public whitelist getShortLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1603
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getShortLabelResourceId()I
    .locals 1

    .line 1608
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    return v0
.end method

.method public blacklist getStartingThemeResName()Ljava/lang/String;
    .locals 1

    .line 1567
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1587
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getTextResId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1593
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    return v0
.end method

.method public greylist-max-o getTextResName()Ljava/lang/String;
    .locals 1

    .line 2182
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1574
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getTitleResId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1580
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    return v0
.end method

.method public greylist-max-o getTitleResName()Ljava/lang/String;
    .locals 1

    .line 2172
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 1824
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getUserId()I
    .locals 1

    .line 1817
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    return v0
.end method

.method public greylist-max-o hasAdaptiveBitmap()Z
    .locals 1

    .line 2033
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasAnyResources()Z
    .locals 1

    .line 2014
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

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

.method public greylist-max-o hasFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 1857
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasIconFile()Z
    .locals 1

    .line 2023
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasIconResource()Z
    .locals 1

    .line 1995
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasIconUri()Z
    .locals 1

    .line 2004
    const v0, 0x8000

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasKeyFieldsOnly()Z
    .locals 1

    .line 2086
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasRank()Z
    .locals 2

    .line 1771
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasStringResources()Z
    .locals 1

    .line 2009
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

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

.method public greylist-max-o hasStringResourcesResolved()Z
    .locals 1

    .line 2091
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isAlive()Z
    .locals 2

    .line 1980
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1981
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 1980
    :goto_1
    return v1
.end method

.method public whitelist isCached()Z
    .locals 2

    .line 1887
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v0

    const v1, 0x60004000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isDeclaredInManifest()Z
    .locals 1

    .line 1911
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDynamic()Z
    .locals 1

    .line 1892
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isDynamicVisible()Z
    .locals 1

    .line 1935
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 1975
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isExcludedFromSurfaces(I)Z
    .locals 1
    .param p1, "surface"    # I

    .line 2248
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isFloating()Z
    .locals 1

    .line 1925
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isIconPendingSave()Z
    .locals 1

    .line 2038
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isImmutable()Z
    .locals 1

    .line 1967
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isLongLived()Z
    .locals 1

    .line 1872
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isManifestShortcut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1917
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isManifestVisible()Z
    .locals 1

    .line 1945
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isNonManifestVisible()Z
    .locals 1

    .line 1950
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1951
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1950
    :goto_0
    return v0
.end method

.method public greylist-max-o isOriginallyFromManifest()Z
    .locals 1

    .line 1930
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPinned()Z
    .locals 1

    .line 1897
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isPinnedVisible()Z
    .locals 1

    .line 1940
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isRankChanged()Z
    .locals 2

    .line 1802
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isReturnedByServer()Z
    .locals 1

    .line 1862
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isVisibleToPublisher()Z
    .locals 1

    .line 2060
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->isDisabledForRestoreIssue(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o lookupAndFillInResourceIds(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 884
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 886
    return-void

    .line 889
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "string"

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    .line 890
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    .line 891
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 895
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 896
    return-void
.end method

.method public greylist-max-o lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 860
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-nez v0, :cond_0

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    if-nez v1, :cond_0

    .line 862
    return-void

    .line 866
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 867
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 868
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 872
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 873
    return-void
.end method

.method public greylist-max-o replaceFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 1842
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 1843
    return-void
.end method

.method public greylist-max-o resolveResourceStrings(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 708
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    .line 710
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-nez v0, :cond_0

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-nez v1, :cond_0

    .line 711
    return-void

    .line 714
    :cond_0
    if-eqz v0, :cond_1

    .line 715
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    .line 717
    :cond_1
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-eqz v0, :cond_2

    .line 718
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    .line 720
    :cond_2
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-eqz v0, :cond_3

    .line 721
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 723
    :cond_3
    return-void
.end method

.method public greylist-max-o setActivity(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 1547
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    .line 1548
    return-void
.end method

.method public greylist-max-o setBitmapPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitmapPath"    # Ljava/lang/String;

    .line 2151
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    .line 2152
    return-void
.end method

.method public blacklist setCached(I)V
    .locals 0
    .param p1, "cacheFlag"    # I

    .line 1882
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 1883
    return-void
.end method

.method public greylist-max-o setCategories(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2241
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    .line 2242
    return-void
.end method

.method public greylist-max-o setDisabledMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "disabledMessage"    # Ljava/lang/String;

    .line 2165
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 2166
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 2167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 2168
    return-void
.end method

.method public greylist-max-o setDisabledMessageResId(I)V
    .locals 2
    .param p1, "disabledMessageResId"    # I

    .line 2156
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 2157
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 2159
    :cond_0
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    .line 2160
    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 2161
    return-void
.end method

.method public greylist-max-o setDisabledMessageResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "disabledMessageResName"    # Ljava/lang/String;

    .line 2197
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    .line 2198
    return-void
.end method

.method public greylist-max-o setDisabledReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 1659
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    .line 1660
    return-void
.end method

.method public greylist-max-o setIconPendingSave()V
    .locals 1

    .line 2043
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 2044
    return-void
.end method

.method public greylist-max-o setIconResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconResName"    # Ljava/lang/String;

    .line 2207
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 2208
    return-void
.end method

.method public greylist-max-o setIconResourceId(I)V
    .locals 1
    .param p1, "iconResourceId"    # I

    .line 2112
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    if-eq v0, p1, :cond_0

    .line 2113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    .line 2115
    :cond_0
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    .line 2116
    return-void
.end method

.method public blacklist setIconUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUri"    # Ljava/lang/String;

    .line 2128
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    .line 2129
    return-void
.end method

.method public greylist-max-o setImplicitRank(I)V
    .locals 2
    .param p1, "rank"    # I

    .line 1787
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    .line 1788
    return-void
.end method

.method public greylist-max-o setIntents([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2218
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2221
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    .line 2222
    invoke-direct {p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    .line 2223
    return-void
.end method

.method public blacklist setLongLived()V
    .locals 1

    .line 1877
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 1878
    return-void
.end method

.method public greylist-max-o setRank(I)V
    .locals 0
    .param p1, "rank"    # I

    .line 1776
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    .line 1777
    return-void
.end method

.method public greylist-max-o setRankChanged()V
    .locals 2

    .line 1797
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    .line 1798
    return-void
.end method

.method public greylist-max-o setReturnedByServer()V
    .locals 1

    .line 1867
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 1868
    return-void
.end method

.method public greylist-max-o setTextResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "textResName"    # Ljava/lang/String;

    .line 2187
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    .line 2188
    return-void
.end method

.method public greylist-max-o setTimestamp(J)V
    .locals 0
    .param p1, "value"    # J

    .line 2102
    iput-wide p1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    .line 2103
    return-void
.end method

.method public greylist-max-o setTitleResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleResName"    # Ljava/lang/String;

    .line 2177
    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    .line 2178
    return-void
.end method

.method public greylist-max-o toDumpString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 2484
    const-string v0, "0x4f4c"

    .line 2485
    .local v0, "debugLow":Ljava/lang/String;
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2486
    const-string/jumbo v1, "ro.boot.debug_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2488
    .local v1, "isUserLow":Z
    :goto_0
    invoke-direct {p0, v1, v2, p1}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o toInsecureString()Ljava/lang/String;
    .locals 3

    .line 2477
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 2471
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o updateTimestamp()V
    .locals 2

    .line 2096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    .line 2097
    return-void
.end method

.method public greylist-max-o usesQuota()Z
    .locals 2

    .line 1986
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2398
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2399
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2400
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2402
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2403
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2404
    iget-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2405
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2407
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2408
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2409
    return-void

    .line 2411
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2414
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2415
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2416
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2417
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2418
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2419
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2421
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2422
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2423
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2425
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2427
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2428
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2429
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2430
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2432
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    .line 2433
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 2434
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2436
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2438
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 2439
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2442
    :goto_1
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPersons:[Landroid/app/Person;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2443
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2444
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2445
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mStartingThemeResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2446
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mExcludedSurfaces:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2447
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCapabilityBindings:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2448
    return-void
.end method
