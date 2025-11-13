.class public Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;
.super Ljava/lang/Object;
.source "WifiApFamilyMember.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WifiApFamilyMember"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGuid:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhotoString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mGuid:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mName:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mPhotoString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mGuid:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoto()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mPhotoString:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mPhotoString:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 55
    array-length v3, v0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 59
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    .line 61
    invoke-virtual {v2, p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    goto :goto_1

    .line 64
    :cond_2
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->TAG:Ljava/lang/String;

    const-string v0, "getPhoto() - profileImage is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-object v2

    .line 49
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApFamilyMember;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_profile_default_image:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
