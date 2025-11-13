.class public Landroid/spay/PaymentTZServiceConfig;
.super Ljava/lang/Object;
.source "PaymentTZServiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/spay/PaymentTZServiceConfig$TAConfig;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/spay/PaymentTZServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist QSEE_UNKNOWN_PROCESS:Ljava/lang/String; = "unknown"

.field private static final blacklist QSEE_UNKNOWN_ROOT:Ljava/lang/String; = "unknown"

.field private static final blacklist TBASE_UNKNOWN_PROCESS:Ljava/lang/String; = "ffffffff000000000000000000000000"

.field private static final blacklist TBASE_UNKNOWN_ROOT:Ljava/lang/String; = "0"

.field private static final blacklist UNKNOWN_TA_TECHNOLOGY:Ljava/lang/String; = "unknown"

.field private static final blacklist bQC:Z


# instance fields
.field public blacklist mClient:Landroid/os/IBinder;

.field public blacklist mTAConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/spay/PaymentTZServiceConfig$TAConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetbQC()Z
    .locals 1

    sget-boolean v0, Landroid/spay/PaymentTZServiceConfig;->bQC:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 23
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "(?i)(msm[a-z0-9]*)|(sdm[a-z0-9]*)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/spay/PaymentTZServiceConfig;->bQC:Z

    .line 76
    new-instance v0, Landroid/spay/PaymentTZServiceConfig$2;

    invoke-direct {v0}, Landroid/spay/PaymentTZServiceConfig$2;-><init>()V

    sput-object v0, Landroid/spay/PaymentTZServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/spay/PaymentTZServiceConfig$1;

    invoke-direct {v0, p0}, Landroid/spay/PaymentTZServiceConfig$1;-><init>(Landroid/spay/PaymentTZServiceConfig;)V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    .line 73
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/spay/PaymentTZServiceConfig$1;

    invoke-direct {v0, p0}, Landroid/spay/PaymentTZServiceConfig$1;-><init>(Landroid/spay/PaymentTZServiceConfig;)V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    .line 89
    invoke-virtual {p0, p1}, Landroid/spay/PaymentTZServiceConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/spay/PaymentTZServiceConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/spay/PaymentTZServiceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist addTAConfig(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .locals 2
    .param p1, "taId"    # I
    .param p2, "config"    # Landroid/spay/PaymentTZServiceConfig$TAConfig;

    .line 54
    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;
    .locals 2
    .param p1, "taId"    # I

    .line 64
    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 112
    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/spay/PaymentTZServiceConfig$TAConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist removeTAConfig(I)V
    .locals 2
    .param p1, "taId"    # I

    .line 59
    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 95
    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 96
    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 98
    .local v1, "s":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget-object v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget-object v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget-object v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    .end local v1    # "s":Ljava/lang/Integer;
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method
