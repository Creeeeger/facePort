.class public Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
.super Ljava/lang/Object;
.source "SemExecutableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/SemExecutableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery$QueryFlags;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_GET_ALL_KINDS:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_GET_DYNAMIC:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_GET_KEY_FIELDS_ONLY:I = 0x4

.field public static final blacklist FLAG_GET_MANIFEST:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_GET_PINNED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_MATCH_ALL_KINDS:I = 0xb

.field public static final blacklist FLAG_MATCH_DYNAMIC:I = 0x1

.field public static final blacklist FLAG_MATCH_MANIFEST:I = 0x8

.field public static final blacklist FLAG_MATCH_PINNED:I = 0x2


# instance fields
.field blacklist mActivity:Landroid/content/ComponentName;

.field blacklist mChangedSince:J

.field blacklist mPackage:Ljava/lang/String;

.field blacklist mQueryFlags:I

.field blacklist mShortcutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    return-void
.end method


# virtual methods
.method public blacklist setActivity(Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .locals 0
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 684
    iput-object p1, p0, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    .line 685
    return-object p0
.end method

.method public blacklist setChangedSince(J)Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .locals 0
    .param p1, "changedSince"    # J

    .line 654
    iput-wide p1, p0, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mChangedSince:J

    .line 655
    return-object p0
.end method

.method public blacklist setPackage(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 663
    iput-object p1, p0, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mPackage:Ljava/lang/String;

    .line 664
    return-object p0
.end method

.method public blacklist setQueryFlags(I)Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .locals 0
    .param p1, "queryFlags"    # I

    .line 701
    iput p1, p0, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mQueryFlags:I

    .line 702
    return-object p0
.end method

.method public blacklist setShortcutIds(Ljava/util/List;)Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;"
        }
    .end annotation

    .line 673
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    .line 674
    return-object p0
.end method
