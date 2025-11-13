.class public Lcom/samsung/android/knox/custom/StatusbarIconItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/StatusbarIconItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUSBAR_ICON_BATTERY_BARS:I = 0x2

.field public static final STATUSBAR_ICON_BATTERY_TEXT:I = 0x3

.field public static final STATUSBAR_ICON_CLOCK_TEXT:I = 0x1

.field public static final STATUSBAR_ICON_MOBILE_BARS:I = 0x4

.field public static final STATUSBAR_ICON_SMART_STAY:I = 0x6

.field public static final STATUSBAR_ICON_WIFI_BARS:I = 0x5


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

.field public final mAttributeColour_KEY:Ljava/lang/String;

.field public mIcon:I

.field public final mIcon_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/custom/StatusbarIconItem$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/StatusbarIconItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StatusbarIconItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->TAG:Ljava/lang/String;

    const-string v0, "ICON"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "ATTRIBUTE_COLOUR"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StatusbarIconItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->TAG:Ljava/lang/String;

    const-string v0, "ICON"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "ATTRIBUTE_COLOUR"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    if-lez v0, :cond_0

    new-array v1, v0, [Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    iput-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    new-instance v5, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    invoke-direct {v5, p0, v2, v3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;-><init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;II)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAttributeColour(I)Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    return-object p0
.end method

.method public getIcon()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    return p0
.end method

.method public setAttributeColour(III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;-><init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;II)V

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "descr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attributeColour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length p2, p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    array-length p2, p0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getColour()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
