.class public final Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mMediaProviderObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mUpdaterListener:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/observer/AbsContentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/observer/AbsContentObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mUpdaterListener:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mMediaProviderObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string/jumbo p1, "show_hidden_files_pref_key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AbsContentObserver"

    const-string/jumbo p2, "onSharedPreferenceChanged() - Show Hidden state changed"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mUpdaterListener:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    if-eqz p1, :cond_0

    const-string p1, "CategoryContentObserver"

    const-string p2, "contentChanged"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mUpdaterListener:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    invoke-interface {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;->onContentChanged()V

    :cond_0
    return-void
.end method
