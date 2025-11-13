.class public Landroid/drm/DrmInfoRequest;
.super Ljava/lang/Object;
.source "DrmInfoRequest.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final whitelist SEM_DAY:Ljava/lang/String; = "day"

.field public static final whitelist SEM_DRM_PATH:Ljava/lang/String; = "drm_path"

.field public static final whitelist SEM_FAIL:Ljava/lang/String; = "fail"

.field public static final whitelist SEM_HOUR:Ljava/lang/String; = "hour"

.field public static final whitelist SEM_MINUTE:Ljava/lang/String; = "minute"

.field public static final whitelist SEM_MONTH:Ljava/lang/String; = "month"

.field public static final whitelist SEM_SECOND:Ljava/lang/String; = "second"

.field public static final whitelist SEM_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist SEM_SUCCESS:Ljava/lang/String; = "success"

.field public static final whitelist SEM_TYPE_CONVERT_DRM_FILE:I = 0x7

.field public static final whitelist SEM_TYPE_GET_DECRYPT_IMAGE:I = 0xa

.field public static final whitelist SEM_TYPE_GET_DRMFILE_INFO:I = 0xe

.field public static final whitelist SEM_TYPE_GET_OPTION_MENU:I = 0x10

.field public static final whitelist SEM_TYPE_GET_PERMISSION_TYPE:I = 0xf

.field public static final whitelist SEM_TYPE_HANDLE_TVOUT:I = 0xb

.field public static final whitelist SEM_TYPE_HANDLE_TVOUT_UNPLUGGED:I = 0xc

.field public static final whitelist SEM_TYPE_IS_CONVERTED_FL:I = 0x11

.field public static final whitelist SEM_TYPE_SET_SECURE_CLOCK:I = 0x23

.field public static final whitelist SEM_TYPE_UPDATE_SECURE_CLOCK:I = 0x24

.field public static final whitelist SEM_YEAR:Ljava/lang/String; = "year"

.field public static final whitelist SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"

.field public static final whitelist TYPE_REGISTRATION_INFO:I = 0x1

.field public static final whitelist TYPE_RIGHTS_ACQUISITION_INFO:I = 0x3

.field public static final whitelist TYPE_RIGHTS_ACQUISITION_PROGRESS_INFO:I = 0x4

.field public static final whitelist TYPE_UNREGISTRATION_INFO:I = 0x2


# instance fields
.field private final greylist-max-o mInfoType:I

.field private final greylist-max-o mMimeType:Ljava/lang/String;

.field private final greylist-max-o mRequestInformation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "infoType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    .line 197
    iput p1, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    .line 198
    iput-object p2, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infoType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o isValidType(I)Z
    .locals 1
    .param p0, "infoType"    # I

    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "isValid":Z
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 298
    :sswitch_0
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInfoType()I
    .locals 1

    .line 221
    iget v0, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    return v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o isValid()Z
    .locals 2

    .line 274
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    .line 275
    invoke-static {v0}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0
.end method

.method public whitelist iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method
