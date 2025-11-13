.class public final Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sPageIdValue:I


# instance fields
.field public mActivityType:I

.field public final mExtra:Landroid/os/Bundle;

.field public final mFileInfo:Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;

.field public mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

.field public final mPageId:I

.field public final mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

.field public final mParentPageId:I

.field public final mUseIndicator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mUseIndicator:Z

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;->Normal:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mUseIndicator:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mParentPageId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mActivityType:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mUseIndicator:Z

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;->Normal:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageId:I

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageId:I

    iget v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mActivityType:I

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mActivityType:I

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mFileInfo:Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mFileInfo:Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mUseIndicator:Z

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;->Normal:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->sPageIdValue:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->sPageIdValue:I

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageId:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const-string/jumbo v0, "path"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final putExtra(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mUseIndicator:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mParentPageId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mActivityType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
