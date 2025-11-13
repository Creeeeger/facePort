.class public final Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public final mCallback:Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->mCallback:Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0

    new-instance p1, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public final onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->mCallback:Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;->onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V

    :cond_0
    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method
