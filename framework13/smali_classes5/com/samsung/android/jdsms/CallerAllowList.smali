.class final Lcom/samsung/android/jdsms/CallerAllowList;
.super Ljava/lang/Object;
.source "CallerAllowList.java"


# static fields
.field private static final blacklist mAllowList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    .local v0, "modifiableSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "com.android.server.ReactiveService$1.onReceive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v1, "com.android.server.StorageManagerService.prepareUserStorageInternal"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v1, "com.android.server.devicepolicy.DevicePolicyManagerService.SendlogDSMS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "com.samsung.android.jdsms.DsmsService.sendMessage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/jdsms/CallerAllowList;->mAllowList:Ljava/util/Set;

    .line 36
    .end local v0    # "modifiableSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "caller"    # Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/samsung/android/jdsms/CallerAllowList;->mAllowList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
