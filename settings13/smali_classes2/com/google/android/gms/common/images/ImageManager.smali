.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
    }
.end annotation


# static fields
.field private static final zaa:Ljava/lang/Object;

.field private static zab:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zaa:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zab:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic zaa(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic zac(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic zad()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zaa:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic zae()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zab:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic zaf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic zag(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic zah(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic zai(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
