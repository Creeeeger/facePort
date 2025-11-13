.class public Lcom/samsung/android/settings/analyzestorage/data/model/ClearCacheAppInfo;
.super Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private mGroupType:I

.field private mIsGroupHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/ClearCacheAppInfo;->mIsGroupHeader:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/ClearCacheAppInfo;->mGroupType:I

    return-void
.end method
