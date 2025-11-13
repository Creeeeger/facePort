.class public Lcom/samsung/android/knox/mpos/MposTZServiceConfig;
.super Ljava/lang/Object;
.source "MposTZServiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/mpos/MposTZServiceConfig;",
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
.field public blacklist maxRecvRespSize:I

.field public blacklist maxSendCmdSize:I

.field public blacklist processName:Ljava/lang/String;

.field public blacklist rootName:Ljava/lang/String;

.field public blacklist taTechnology:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "(?i)(msm[a-z0-9]*)|(sdm[a-z0-9]*)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->bQC:Z

    new-instance v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/mpos/MposTZServiceConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->maxSendCmdSize:I

    iput p2, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->maxRecvRespSize:I

    iput-object p3, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->taTechnology:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->rootName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->processName:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/mpos/MposTZServiceConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->maxSendCmdSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->maxRecvRespSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->taTechnology:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->rootName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->processName:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->maxSendCmdSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->maxRecvRespSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->taTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->rootName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
