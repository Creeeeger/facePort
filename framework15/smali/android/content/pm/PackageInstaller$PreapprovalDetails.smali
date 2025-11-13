.class public final Landroid/content/pm/PackageInstaller$PreapprovalDetails;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreapprovalDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$PreapprovalDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIcon:Landroid/graphics/Bitmap;

.field private final blacklist mLabel:Ljava/lang/CharSequence;

.field private final blacklist mLocale:Landroid/icu/util/ULocale;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "App label cannot be empty."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p3, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Locale cannot be null."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p4, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Package name cannot be empty."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Landroid/icu/util/ULocale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const-string v6, "App label cannot be empty."

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object v3, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    iget-object v5, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    invoke-static {v5}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const-string v6, "Locale cannot be null."

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object v4, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const-string v6, "Package name cannot be empty."

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

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

.method public whitelist getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getLocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreapprovalDetails { icon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
