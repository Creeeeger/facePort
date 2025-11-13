.class public final Lcom/att/iqi/lib/Metric$ID;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ID"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/Metric$ID;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[A-Z0-9_]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/lib/Metric$ID;->c:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/att/iqi/lib/Metric$ID$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/Metric$ID$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    invoke-static {p1}, Lcom/att/iqi/lib/Metric$ID;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric$ID;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Metric ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric$ID;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/att/iqi/lib/Metric$ID;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Metric ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [C

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/4 v2, 0x1

    aput-char v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/4 v2, 0x2

    aput-char v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    const/4 v1, 0x3

    aput-char p0, v0, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/att/iqi/lib/Metric$ID;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public asInt()I
    .locals 0

    iget p0, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    return p0
.end method

.method public asString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/att/iqi/lib/Metric$ID;

    if-ne v2, v1, :cond_1

    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    iget v1, p1, Lcom/att/iqi/lib/Metric$ID;->a:I

    iget v2, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/lit16 p0, p0, 0xd15

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/Metric$ID;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
