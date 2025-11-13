.class public Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
.super Ljava/lang/Object;
.source "ParsedIntentInfoImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHasDefault:Z

.field private blacklist mIcon:I

.field private blacklist mIntentFilter:Landroid/content/IntentFilter;

.field private blacklist mLabelRes:I

.field private blacklist mNonLocalizedLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    iput-boolean v1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    iput v2, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    iput-object v3, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    iput v5, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    iput-object v6, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIcon()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    return v0
.end method

.method public blacklist getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public blacklist getLabelRes()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    return v0
.end method

.method public blacklist getNonLocalizedLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isHasDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    return v0
.end method

.method public blacklist setHasDefault(Z)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    return-object p0
.end method

.method public blacklist setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    return-object p0
.end method

.method public blacklist setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    return-object p0
.end method

.method public blacklist setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_2
    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
