.class public final Lcom/samsung/android/settings/analyzestorage/external/database/detector/DatabaseChangeDetector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mMediaProviderChangeDetector:Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/detector/DatabaseChangeDetector;->mMediaProviderChangeDetector:Lcom/samsung/android/settings/analyzestorage/external/database/detector/MediaProviderChangeDetector;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/external/database/detector/DatabaseChangeDetector;->mContext:Landroid/content/Context;

    return-void
.end method
