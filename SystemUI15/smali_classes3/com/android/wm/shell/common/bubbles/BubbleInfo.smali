.class public final Lcom/android/wm/shell/common/bubbles/BubbleInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wm/shell/common/bubbles/BubbleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAppName:Ljava/lang/String;

.field public final mFlags:I

.field public final mIcon:Landroid/graphics/drawable/Icon;

.field public final mIsImportantConversation:Z

.field public final mKey:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mShortcutId:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/common/bubbles/BubbleInfo$1;

    invoke-direct {v0}, Lcom/android/wm/shell/common/bubbles/BubbleInfo$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mShortcutId:Ljava/lang/String;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIsImportantConversation:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Icon;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    iput p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mFlags:I

    iput-object p3, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mShortcutId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput p5, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mUserId:I

    iput-object p6, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mPackageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mTitle:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mAppName:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIsImportantConversation:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIsImportantConversation:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
