.class public abstract Lcom/samsung/android/knox/lockscreen/LSOItemData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/lockscreen/LSOItemData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FLOAT_VALUE:F = 0.0f

.field public static final DEFAULT_INT_VALUE:I = -0x1

.field public static final DEFAULT_WH_VALUE:I = -0x63

.field public static final LSO_FIELD_ATTRIBUTES:I = 0x40

.field public static final LSO_FIELD_BG_COLOR:I = 0x10

.field public static final LSO_FIELD_GRAVITY:I = 0x20

.field public static final LSO_FIELD_ITEMID:I = 0x1

.field public static final LSO_FIELD_LAST:I = 0x80

.field public static final LSO_FIELD_PARAM_HEIGHT:I = 0x4

.field public static final LSO_FIELD_PARAM_WEIGHT:I = 0x8

.field public static final LSO_FIELD_PARAM_WIDTH:I = 0x2

.field public static final TAG:Ljava/lang/String; = "LSO_LSOItemData"


# instance fields
.field public attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

.field public bg_color:I

.field public gravity:I

.field public height:I

.field public itemId:Ljava/lang/String;

.field public modifiedFields:I

.field public pfd:Landroid/os/ParcelFileDescriptor;

.field public type:B

.field public weight:F

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemData$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    iput-byte p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    new-instance p1, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    const/16 p1, -0x63

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    return-void
.end method

.method public constructor <init>(BLandroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    iput-byte p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    new-instance p1, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public closeFileDescriptor()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    return-object v0
.end method

.method public getBgColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    return p0
.end method

.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public getGravity()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    return-object p0
.end method

.method public getType()B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    return p0
.end method

.method public getUpdatedFields()[I
    .locals 6

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, -0x1

    and-int/2addr v0, v3

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    move v3, v1

    :goto_1
    const/16 v4, 0x1f

    if-gt v1, v4, :cond_3

    if-lez p0, :cond_3

    if-ge v3, v2, :cond_3

    const/4 v4, 0x1

    shl-int/2addr v4, v1

    and-int v5, p0, v4

    if-ne v5, v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    not-int v3, v4

    and-int/2addr p0, v3

    move v3, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getWeight()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    return p0
.end method

.method public isFieldUpdated(I)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public openFileDescriptor()V
    .locals 3

    instance-of v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptorInternal(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptor()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptorInternal(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    const-string v1, "android:src"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptorInternal(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final openFileDescriptorInternal(Ljava/lang/String;)V
    .locals 3

    const-string v0, "LSO_LSOItemData"

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v1, "openFileDescriptorInternal() error occurs - "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    const-string/jumbo p0, "openFileDescriptorInternal() file not found - "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final readBoolFromParcel(Landroid/os/Parcel;I)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    move p2, p1

    :cond_0
    return p2
.end method

.method public final readByteFromParcel(Landroid/os/Parcel;I)B
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final readFloatFromParcel(Landroid/os/Parcel;I)F
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final readFloatFromParcel(Landroid/os/Parcel;IF)F
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0

    :cond_0
    return p3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    const/4 v0, 0x2

    const/16 v1, -0x63

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFloatFromParcel(Landroid/os/Parcel;IF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/16 v0, 0x10

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    :goto_0
    return-void
.end method

.method public final readIntFromParcel(Landroid/os/Parcel;II)I
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0

    :cond_0
    return p3
.end method

.method public final readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeFieldFlag(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    return-void
.end method

.method public resetUpdatedFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Byte;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;[B)V

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setAttrs(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->clear()V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->putAll(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setDimension(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    return-void
.end method

.method public setDimension(IIF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setWeight(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->updateFieldFlag(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ItemId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Weight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BG_Color:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gravity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attributes:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " "

    invoke-static {p1, p3, p0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final updateFieldFlag(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-byte v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;IF)V

    const/16 v0, 0x10

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 v0, 0x20

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;IB)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeByte(B)V

    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;IF)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;II)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;IZ)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-byte p0, p3

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    :cond_0
    return-void
.end method
