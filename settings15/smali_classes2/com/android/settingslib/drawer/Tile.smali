.class public abstract Lcom/android/settingslib/drawer/Tile;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


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

.field public static final TILE_COMPARATOR:Lcom/android/settingslib/drawer/Tile$$ExternalSyntheticLambda0;


# instance fields
.field public final fragment:Ljava/lang/String;

.field public mCategory:Ljava/lang/String;

.field public mComponentInfo:Landroid/content/pm/ComponentInfo;

.field public final mComponentName:Ljava/lang/String;

.field public final mComponentPackage:Ljava/lang/String;

.field public mGroupKey:Ljava/lang/String;

.field public mIconResIdOverride:I

.field public final mIntent:Landroid/content/Intent;

.field mLastUpdateTime:J

.field public mMetaData:Landroid/os/Bundle;

.field public mOrderOverride:I

.field public mSaLoggingIdOverride:Ljava/lang/String;

.field public mSummaryOverride:Ljava/lang/CharSequence;

.field public mSummaryResIdOverride:I

.field public mTitleResIdOverride:I

.field public final pendingIntentMap:Ljava/util/HashMap;

.field public final role:Ljava/lang/String;

.field public support:Ljava/lang/String;

.field public tileId:Ljava/lang/String;

.field public final userHandle:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/drawer/Tile$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/android/settingslib/drawer/Tile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/Tile;->TILE_COMPARATOR:Lcom/android/settingslib/drawer/Tile$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ComponentInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->pendingIntentMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz p3, :cond_0

    const-string p2, "com.android.settings.group_key"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/drawer/Tile;->mGroupKey:Ljava/lang/String;

    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->isNewTask()Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mTitleResIdOverride:I

    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mSummaryResIdOverride:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->pendingIntentMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    iput v0, p0, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->role:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mGroupKey:Ljava/lang/String;

    return-void
.end method

.method public static isPrimaryProfileOnly(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "all_profiles"

    if-eqz p0, :cond_0

    const-string v1, "com.android.settings.profile"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    const-string p0, "primary_profile_only"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final ensureMetadataNotStale(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-wide v2, p0, Lcom/android/settingslib/drawer/Tile;->mLastUpdateTime:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->getComponentInfo(Landroid/content/Context;)Landroid/content/pm/ComponentInfo;

    iput-wide v0, p0, Lcom/android/settingslib/drawer/Tile;->mLastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Tile"

    const-string p1, "Can\'t find package, probably uninstalled."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public abstract getComponentInfo(Landroid/content/Context;)Landroid/content/pm/ComponentInfo;
.end method

.method public abstract getComponentLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public final getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .locals 4

    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/settingslib/drawer/Tile;->mIconResIdOverride:I

    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->getComponentInfo(Landroid/content/Context;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot find ComponentInfo for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Tile"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.icon"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    const v3, 0x106000d

    if-eq v1, v3, :cond_6

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const-string v3, "com.android.settings.icon_tintable"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_4
    move p0, v2

    :goto_0
    if-eqz p0, :cond_5

    const p0, 0x1010429

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    return-object v2
.end method

.method public final getKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "com.android.settings.keyhint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOrder()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->hasOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v0, "com.android.settings.order"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getSaLoggingId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mSaLoggingIdOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "com.android.settings.logging_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mSummaryOverride:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mSummaryResIdOverride:I

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/settingslib/drawer/Tile;->mSummaryResIdOverride:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "com.android.settings.summary_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.summary"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

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

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public final getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mTitleResIdOverride:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/settingslib/drawer/Tile;->mTitleResIdOverride:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v3, "com.android.settings.title"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.title_uri"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Tile"

    const-string v3, "Couldn\'t find info"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->getComponentLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public final getTitleRes(Landroid/content/Context;)I
    .locals 3

    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mTitleResIdOverride:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->ensureMetadataNotStale(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const-string v1, "com.android.settings.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.title_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public final getType()Lcom/android/settingslib/drawer/Tile$Type;
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->pendingIntentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v3, p0, Lcom/android/settingslib/drawer/ActivityTile;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz p0, :cond_2

    const-string v4, "com.android.settings.switch_uri"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    sget-object p0, Lcom/android/settingslib/drawer/Tile$Type;->SWITCH_WITH_ACTION:Lcom/android/settingslib/drawer/Tile$Type;

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    sget-object p0, Lcom/android/settingslib/drawer/Tile$Type;->SWITCH:Lcom/android/settingslib/drawer/Tile$Type;

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/settingslib/drawer/Tile$Type;->EXTERNAL_ACTION:Lcom/android/settingslib/drawer/Tile$Type;

    return-object p0

    :cond_5
    if-eqz v3, :cond_6

    sget-object p0, Lcom/android/settingslib/drawer/Tile$Type;->ACTION:Lcom/android/settingslib/drawer/Tile$Type;

    return-object p0

    :cond_6
    sget-object p0, Lcom/android/settingslib/drawer/Tile$Type;->GROUP:Lcom/android/settingslib/drawer/Tile$Type;

    return-object p0
.end method

.method public final hasOrder()Z
    .locals 3

    iget v0, p0, Lcom/android/settingslib/drawer/Tile;->mOrderOverride:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "com.android.settings.order"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

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

.method public final isNewTask()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.new_task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    instance-of v0, p0, Lcom/android/settingslib/drawer/ProviderTile;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->role:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
