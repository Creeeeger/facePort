.class final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$APP_CACHE;
.super Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "APP_CACHE"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory$APP_CACHE;",
        "Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# virtual methods
.method public final createASList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;
    .locals 0

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsAppCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method
