.class public Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;
.super Ljava/lang/Object;
.source "TestProbeResult.java"


# static fields
.field public static final PARTIAL:Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

.field public static final PRIVATE_IP:Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;


# instance fields
.field public final detectUrl:Ljava/lang/String;

.field final mHttpResponseCode:I

.field public final probeSpec:Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;

.field public final probeType:I

.field public final redirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    const/4 v1, -0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;-><init>(II)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->PRIVATE_IP:Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    .line 34
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    const/4 v1, -0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;-><init>(II)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->PARTIAL:Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;I)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->mHttpResponseCode:I

    .line 77
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->redirectUrl:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->detectUrl:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->probeSpec:Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;

    .line 80
    iput p5, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->probeType:I

    return-void
.end method

.method public static isPortalCode(I)Z
    .locals 1

    .line 99
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->isSuccessCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x18f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSuccessCode(I)Z
    .locals 1

    const/16 v0, 0xcc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isPartialConnectivity()Z
    .locals 1

    .line 107
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->mHttpResponseCode:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPortal()Z
    .locals 0

    .line 88
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->mHttpResponseCode:I

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->isPortalCode(I)Z

    move-result p0

    return p0
.end method

.method public isSuccessful()Z
    .locals 0

    .line 84
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->mHttpResponseCode:I

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->isSuccessCode(I)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Test result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->isSuccessful()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->isPortal()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->isPartialConnectivity()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
