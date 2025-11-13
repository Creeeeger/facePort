.class public Lcom/samsung/android/settings/external/DynamicMenuData;
.super Ljava/lang/Object;
.source "DynamicMenuData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/external/DynamicMenuData$InvalidMenuDataException;,
        Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/external/DynamicMenuData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsChecked:Z

.field private mIsEnabled:Z

.field private mIsSummaryPrimaryDark:Z

.field private mIsVisible:Z

.field private mKey:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mSummaryRes:I

.field private mTitle:Ljava/lang/String;

.field private mTitleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/samsung/android/settings/external/DynamicMenuData$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/external/DynamicMenuData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/external/DynamicMenuData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$000(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$100(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$200(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitleRes:I

    .line 77
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$300(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$400(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummaryRes:I

    .line 79
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$500(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    .line 80
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$600(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    .line 81
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$700(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    .line 82
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$800(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;Lcom/samsung/android/settings/external/DynamicMenuData$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicMenuData;-><init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getChecked()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    return p0
.end method

.method public getColorPrimaryDark()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    return p0
.end method

.method public getEnabled()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getVisible()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 96
    iget-object p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-boolean p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-boolean p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-boolean p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
