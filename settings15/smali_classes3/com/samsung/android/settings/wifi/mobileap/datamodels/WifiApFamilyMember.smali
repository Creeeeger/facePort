.class public final Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mGuid:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mPhotoString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mGuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mPhotoString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPhoto()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mPhotoString:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v2, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v2, p0, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->setCircular()V

    goto :goto_1

    :cond_2
    const-string p0, "WifiApFamilyMember"

    const-string v0, "getPhoto() - profileImage is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v2

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mContext:Landroid/content/Context;

    const v0, 0x7f080ac1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
