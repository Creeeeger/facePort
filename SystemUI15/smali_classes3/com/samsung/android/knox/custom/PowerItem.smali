.class public Lcom/samsung/android/knox/custom/PowerItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_SEND_BROADCAST:I = 0x1

.field public static final ACTION_SEND_STICKY_BROADCAST:I = 0x2

.field public static final ACTION_START_ACTIVITY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field public final mIcon_KEY:Ljava/lang/String;

.field public mId:I

.field public final mId_KEY:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public mIntentAction:I

.field public final mIntentAction_KEY:Ljava/lang/String;

.field public final mIntent_KEY:Ljava/lang/String;

.field public mText:Ljava/lang/String;

.field public final mText_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/custom/PowerItem$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/PowerItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/BitmapDrawable;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PowerItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->TAG:Ljava/lang/String;

    const-string v0, "ID"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "INTENT_ACTION"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction_KEY:Ljava/lang/String;

    const-string v0, "TEXT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    iput p4, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    iput-object p5, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PowerItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->TAG:Ljava/lang/String;

    const-string v0, "ID"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "INTENT_ACTION"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction_KEY:Ljava/lang/String;

    const-string v0, "TEXT"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/PowerItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId:I

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getIntentAction()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "descr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PowerItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intentAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "intent"

    iget-object v1, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p2, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIntentAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/custom/PowerItem;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/custom/PowerItem;->mText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/custom/PowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length p2, p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
