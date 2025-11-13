.class public Lcom/samsung/android/settings/share/structure/ShareComponent;
.super Ljava/lang/Object;
.source "ShareComponent.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/settings/share/structure/ShareComponent;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

.field private final mComponentName:Landroid/content/ComponentName;

.field public mDisableIcon:Z

.field protected mLabelPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHandle:Landroid/os/UserHandle;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/samsung/android/settings/share/structure/ShareComponent$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/share/structure/ShareComponent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/share/structure/ShareComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/share/structure/ShareComponent;-><init>(Landroid/content/ComponentName;ILandroid/util/Pair;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;ILandroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mDisableIcon:Z

    .line 32
    iput-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    .line 41
    iput p2, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserId:I

    .line 42
    iput-object p3, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mDisableIcon:Z

    .line 32
    iput-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    .line 46
    new-instance v0, Landroid/content/ComponentName;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserId:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/share/structure/ShareComponent;)I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/structure/ShareComponent;->compareTo(Lcom/samsung/android/settings/share/structure/ShareComponent;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 58
    instance-of v0, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getUserId()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getUserId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 62
    :cond_1
    instance-of v0, p1, Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getInfo(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getUserId()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->makePresentationGetter(Landroid/content/Context;Landroid/content/ComponentName;ILjava/util/List;)Lcom/samsung/android/settings/share/common/TargetPresentationGetter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->hasSubstitutePermission()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 98
    new-instance p2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;-><init>(Lcom/samsung/android/settings/share/common/TargetPresentationGetter;)V

    iput-object p2, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    goto :goto_0

    .line 100
    :cond_1
    new-instance p2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;-><init>(Lcom/samsung/android/settings/share/common/TargetPresentationGetter;Landroid/util/Pair;)V

    iput-object p2, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    .line 103
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->getLabelPair()Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    .line 104
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->getIconDrawable()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getLabelPair()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    if-nez p0, :cond_0

    const-string p0, ""

    .line 78
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserId:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
