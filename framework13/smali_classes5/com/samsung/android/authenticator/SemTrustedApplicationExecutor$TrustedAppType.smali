.class public final enum Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
.super Ljava/lang/Enum;
.source "SemTrustedApplicationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrustedAppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

.field public static final enum whitelist ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

.field public static final enum whitelist DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

.field public static final enum whitelist FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 58
    new-instance v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    const-string v1, "FINGERPRINT_TRUSTED_APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 60
    new-instance v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    const-string v3, "DEVICE_ROOT_KEY_TRUSTED_APP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 62
    new-instance v3, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    const-string v5, "ASSET_DOWNLOADER_TRUSTED_APP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 55
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->$VALUES:[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    .locals 1

    .line 55
    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->$VALUES:[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-virtual {v0}, [Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    return-object v0
.end method
