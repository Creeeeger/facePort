.class public abstract Lcom/android/settingslib/drawer/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/Tile$ResourceInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public badgeCnt:I

.field public cornerFlags:I

.field public displayBadgeCnt:I

.field public displayIsEnable:Z

.field public fragment:Ljava/lang/String;

.field public isEnable:Z

.field public isLast:Z

.field public isVisible:Z

.field private mCategory:Ljava/lang/String;

.field protected mComponentInfo:Landroid/content/pm/ComponentInfo;

.field private final mComponentName:Ljava/lang/String;

.field private final mComponentPackage:Ljava/lang/String;

.field public mIconResIdOverride:I

.field private final mIntent:Landroid/content/Intent;

.field mLastUpdateTime:J

.field private mMetaData:Landroid/os/Bundle;

.field public mOrderOverride:I

.field public mSaLoggingIdOverride:Ljava/lang/String;

.field private mSummaryOverride:Ljava/lang/CharSequence;

.field private mSummaryResIdOverride:I

.field private mTitleResIdOverride:I

.field public role:Ljava/lang/String;

.field public support:Ljava/lang/String;

.field public tileId:Ljava/lang/String;

.field public userHandle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UXAt4ARpQFiubiw40N8kVxrxBUI(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/drawer/Tile;->lambda$static$0(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 647
    new-instance v0, Lcom/android/settingslib/drawer/Tile$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/Tile$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 674
    new-instance v0, Lcom/android/settingslib/drawer/Tile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/Tile$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/Tile;->TILE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ComponentInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/android/settingslib/drawer/Tile;->isEnable:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/settingslib/drawer/Tile;->displayIsEnable:Z

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    .line 99
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->displayBadgeCnt:I

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    .line 101
    iput-boolean v0, p0, Lcom/android/settingslib/drawer/Tile;->isLast:Z

    .line 105
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    .line 107
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    .line 111
    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    .line 112
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    .line 113
    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    .line 116
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->isNewTask()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x10000000

    .line 118
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    :cond_0
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mTitleResIdOverride:I

    .line 122
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mSummaryResIdOverride:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/android/settingslib/drawer/Tile;->isEnable:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/settingslib/drawer/Tile;->displayIsEnable:Z

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    .line 99
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->displayBadgeCnt:I

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    .line 101
    iput-boolean v0, p0, Lcom/android/settingslib/drawer/Tile;->isLast:Z

    .line 105
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    .line 107
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    .line 129
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->role:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->isNewTask()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 145
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private ensureMetadataNotStale(Landroid/content/Context;)V
    .locals 4

    .line 629
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 634
    iget-wide v2, p0, Lcom/android/settingslib/drawer/Tile;->mLastUpdateTime:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 639
    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    .line 640
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->getComponentInfo(Landroid/content/Context;)Landroid/content/pm/ComponentInfo;

    .line 641
    iput-wide v0, p0, Lcom/android/settingslib/drawer/Tile;->mLastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Tile"

    const-string p1, "Can\'t find package, probably uninstalled."

    .line 643
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static isPrimaryProfileOnly(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "all_profiles"

    if-eqz p0, :cond_0

    const-string v1, "com.android.settings.profile"

    .line 669
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    const-string/jumbo p0, "primary_profile_only"

    .line 671
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I
    .locals 0

    .line 675
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getComponentInfo(Landroid/content/Context;)Landroid/content/pm/ComponentInfo;
.end method

.method protected abstract getComponentLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .locals 4

    .line 570
    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 575
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    goto :goto_0

    .line 578
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->getComponentInfo(Landroid/content/Context;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find ComponentInfo for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Tile"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 585
    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.icon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const v3, 0x106000d

    if-eq v2, v3, :cond_3

    .line 588
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->isIconTintable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    new-array p0, p0, [I

    const v1, 0x1010429

    const/4 v2, 0x0

    aput v1, p0, v2

    .line 590
    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 592
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 593
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 594
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getIconResourceInfo(Landroid/content/Context;)Lcom/android/settingslib/drawer/Tile$ResourceInfo;
    .locals 4

    .line 328
    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Lcom/android/settingslib/drawer/Tile$ResourceInfo;

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.settings"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settingslib/drawer/Tile$ResourceInfo;-><init>(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 333
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->getComponentInfo(Landroid/content/Context;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find ComponentInfo for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Tile"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.icon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const v3, 0x106000d

    if-eq v2, v3, :cond_3

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 348
    :try_start_0
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 349
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 350
    new-instance v3, Lcom/android/settingslib/drawer/Tile$ResourceInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p0, v1, p1}, Lcom/android/settingslib/drawer/Tile$ResourceInfo;-><init>(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 352
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 420
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    .line 424
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.keyhint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 427
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeywords(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 484
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 485
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.keywords"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    .line 489
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 490
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Tile"

    const-string v0, "Couldn\'t find info"

    .line 492
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 495
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getMetaData()Landroid/os/Bundle;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public getOrder()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    if-eqz v0, :cond_0

    return v0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->hasOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v0, "com.android.settings.order"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getSaLoggingId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 535
    iget-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mSaLoggingIdOverride:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    .line 539
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "com.android.settings.logging_id"

    .line 544
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 545
    iget-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 546
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getSearchTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 508
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 509
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.searchtitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    .line 513
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 514
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Tile"

    const-string v0, "Couldn\'t find info"

    .line 516
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 519
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mSummaryOverride:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    .line 375
    :cond_0
    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mSummaryResIdOverride:I

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/settingslib/drawer/Tile;->mSummaryResIdOverride:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 379
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 382
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "com.android.settings.summary_uri"

    .line 383
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.summary"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    .line 392
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 393
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Tile"

    const-string v0, "Couldn\'t find info"

    .line 395
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 398
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    .line 261
    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mTitleResIdOverride:I

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/settingslib/drawer/Tile;->mTitleResIdOverride:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.title_uri"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v3

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Tile"

    const-string v2, "Couldn\'t find info"

    .line 281
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_0
    if-nez v3, :cond_4

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->getComponentLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_4
    return-object v3
.end method

.method public hasKey()Z
    .locals 1

    .line 560
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "com.android.settings.keyhint"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasOrder()Z
    .locals 3

    .line 240
    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.order"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    .line 246
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSwitch()Z
    .locals 1

    .line 253
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "com.android.settings.switch_uri"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconTintable(Landroid/content/Context;)Z
    .locals 1

    .line 606
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    .line 607
    iget-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "com.android.settings.icon_tintable"

    .line 608
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 609
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNewTask()Z
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.new_task"

    .line 619
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPrimaryProfileOnly()Z
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/settingslib/drawer/Tile;->isPrimaryProfileOnly(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public overrideIconResId(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    return-void
.end method

.method public overrideOrder(I)V
    .locals 0

    .line 314
    iput p1, p0, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    return-void
.end method

.method public overrideSaLoggingId(I)V
    .locals 0

    .line 527
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mSaLoggingIdOverride:Ljava/lang/String;

    return-void
.end method

.method public overrideSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mSummaryOverride:Ljava/lang/CharSequence;

    return-void
.end method

.method public overrideSummaryResId(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/android/settingslib/drawer/Tile;->mSummaryResIdOverride:I

    return-void
.end method

.method public overrideTitleResId(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/android/settingslib/drawer/Tile;->mTitleResIdOverride:I

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    return-void
.end method

.method public setMetaData(Landroid/os/Bundle;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 156
    instance-of v0, p0, Lcom/android/settingslib/drawer/ProviderTile;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 170
    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->role:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
