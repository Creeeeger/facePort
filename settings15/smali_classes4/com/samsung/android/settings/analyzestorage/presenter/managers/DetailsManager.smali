.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static instance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;


# instance fields
.field public final checkedItemLoader:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;->checkedItemLoader:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;Landroid/os/Looper;I)V

    iput-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mLoadHandler:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;

    return-void
.end method
