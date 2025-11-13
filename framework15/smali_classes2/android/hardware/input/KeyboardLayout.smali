.class public final Landroid/hardware/input/KeyboardLayout;
.super Ljava/lang/Object;
.source "KeyboardLayout.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayout$LayoutType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LAYOUT_TYPE_AZERTY:Ljava/lang/String; = "azerty"

.field public static final blacklist LAYOUT_TYPE_COLEMAK:Ljava/lang/String; = "colemak"

.field public static final blacklist LAYOUT_TYPE_DVORAK:Ljava/lang/String; = "dvorak"

.field public static final blacklist LAYOUT_TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field public static final blacklist LAYOUT_TYPE_QWERTY:Ljava/lang/String; = "qwerty"

.field public static final blacklist LAYOUT_TYPE_QWERTZ:Ljava/lang/String; = "qwertz"

.field public static final blacklist LAYOUT_TYPE_TURKISH_F:Ljava/lang/String; = "turkish_f"

.field public static final blacklist LAYOUT_TYPE_TURKISH_Q:Ljava/lang/String; = "turkish_q"

.field public static final blacklist LAYOUT_TYPE_UNDEFINED:Ljava/lang/String; = "undefined"

.field public static final blacklist LAYOUT_TYPE_WORKMAN:Ljava/lang/String; = "workman"


# instance fields
.field private final greylist-max-o mCollection:Ljava/lang/String;

.field private final greylist-max-o mDescriptor:Ljava/lang/String;

.field private final greylist-max-o mLabel:Ljava/lang/String;

.field private final blacklist mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

.field private final greylist-max-o mLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mPriority:I

.field private final greylist-max-o mProductId:I

.field private final greylist-max-o mVendorId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/KeyboardLayout$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayout$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$smof(I)Landroid/hardware/input/KeyboardLayout$LayoutType;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/KeyboardLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayout;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    iput p4, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    iput-object p5, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-static {p6}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$smof(I)Landroid/hardware/input/KeyboardLayout$LayoutType;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    iput p7, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    iput p8, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    return-void
.end method

.method public static blacklist isLayoutTypeValid(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "Provided layout name should not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/hardware/input/KeyboardLayout$LayoutType;->values()[Landroid/hardware/input/KeyboardLayout$LayoutType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$mgetName(Landroid/hardware/input/KeyboardLayout$LayoutType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/hardware/input/KeyboardLayout;)I
    .locals 3

    iget v0, p1, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    iget v1, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$fgetmValue(Landroid/hardware/input/KeyboardLayout$LayoutType;)I

    move-result v1

    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-static {v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$fgetmValue(Landroid/hardware/input/KeyboardLayout$LayoutType;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {p0, p1}, Landroid/hardware/input/KeyboardLayout;->compareTo(Landroid/hardware/input/KeyboardLayout;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCollection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLayoutType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-static {v0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$mgetName(Landroid/hardware/input/KeyboardLayout$LayoutType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public greylist-max-o getProductId()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    return v0
.end method

.method public greylist-max-o getVendorId()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    return v0
.end method

.method public blacklist isAnsiLayout()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "us"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    sget-object v3, Landroid/hardware/input/KeyboardLayout$LayoutType;->EXTENDED:Landroid/hardware/input/KeyboardLayout$LayoutType;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isJisLayout()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyboardLayout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", locales: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", layout type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-static {v2}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$mgetName(Landroid/hardware/input/KeyboardLayout$LayoutType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vendorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLayoutType:Landroid/hardware/input/KeyboardLayout$LayoutType;

    invoke-static {v0}, Landroid/hardware/input/KeyboardLayout$LayoutType;->-$$Nest$mgetValue(Landroid/hardware/input/KeyboardLayout$LayoutType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
