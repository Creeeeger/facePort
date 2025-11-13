.class public final Landroidx/slice/compat/SliceProviderCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnr:Landroidx/slice/compat/SliceProviderCompat$1;

.field public final mCallback:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPermissionManager:Landroidx/slice/compat/CompatPermissionManager;

.field public final mProvider:Landroidx/slice/SliceProvider;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceProvider;Landroidx/slice/compat/CompatPermissionManager;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroidx/slice/compat/SliceProviderCompat$1;

    invoke-direct {p1, p0}, Landroidx/slice/compat/SliceProviderCompat$1;-><init>(Landroidx/slice/compat/SliceProviderCompat;)V

    const-string p0, "slice_data_all_slice_files"

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    const-string v0, "slice_data_androidx.slice.compat.SliceProviderCompat"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1, p2}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    new-instance p0, Landroidx/slice/compat/CompatPinnedList;

    invoke-direct {p0, p3, v0}, Landroidx/slice/compat/CompatPinnedList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
