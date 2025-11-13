.class public Landroid/drm/DrmEvent;
.super Ljava/lang/Object;
.source "DrmEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist DRM_INFO_OBJECT:Ljava/lang/String; = "drm_info_object"

.field public static final whitelist DRM_INFO_STATUS_OBJECT:Ljava/lang/String; = "drm_info_status_object"

.field public static final whitelist TYPE_ALL_RIGHTS_REMOVED:I = 0x3e9

.field public static final whitelist TYPE_DRM_INFO_PROCESSED:I = 0x3ea


# instance fields
.field private greylist-max-o mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMessage:Ljava/lang/String;

.field private final greylist-max-o mType:I

.field private final greylist-max-o mUniqueId:I


# direct methods
.method protected constructor whitelist <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    iput p1, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    iput p2, p0, Landroid/drm/DrmEvent;->mType:I

    if-eqz p3, :cond_0

    iput-object p3, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected constructor whitelist <init>(IILjava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    iput p1, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    iput p2, p0, Landroid/drm/DrmEvent;->mType:I

    if-eqz p3, :cond_0

    iput-object p3, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    :cond_0
    if-eqz p4, :cond_1

    iput-object p4, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/drm/DrmEvent;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/drm/DrmEvent;->mType:I

    return v0
.end method

.method public whitelist getUniqueId()I
    .locals 1

    iget v0, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    return v0
.end method
