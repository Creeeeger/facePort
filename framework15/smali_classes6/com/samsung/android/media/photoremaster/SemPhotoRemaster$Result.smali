.class public Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;
.super Ljava/lang/Object;
.source "SemPhotoRemaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result$getParameterIds;
    }
.end annotation


# static fields
.field public static final whitelist ID_ANALYZED_FULL:I = 0x835

.field public static final whitelist ID_ENHANCE_TYPE:I = 0x836

.field public static final whitelist ID_ENUM_ENHANCE_TYPE:I = 0x899

.field public static final whitelist ID_FOCUS_ROI:I = 0x89c

.field public static final whitelist ID_PATH_INPUT:I = 0x3ea

.field public static final whitelist ID_PATH_RESULT:I = 0x3eb

.field public static final whitelist ID_REVITALIZED:I = 0x837

.field public static final whitelist ID_SCENETYPE_INPUT:I = 0x3ed

.field public static final whitelist ID_SUGGESTION_ENHANCE_LIST:I = 0x89a

.field private static final blacklist TAG:Ljava/lang/String; = "PhotoRemaster.Result"


# instance fields
.field private final blacklist mRemasteredBitmap:Landroid/graphics/Bitmap;

.field private final blacklist mResultJson:Lorg/json/JSONObject;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResultJson(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->mResultJson:Lorg/json/JSONObject;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetParameter(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->setParameter(ILjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->mResultJson:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->mRemasteredBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Bitmap;Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private blacklist setParameter(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->mResultJson:Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoRemaster.Result"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to get string from mResultJson"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist getParameter(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->mResultJson:Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoRemaster.Result"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to get string from mResultJson"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getRemasteredBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Result;->mRemasteredBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
