.class public final enum Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
.super Ljava/lang/Enum;
.source "SemTrustedApplicationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrustedAppAssetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

.field public static final enum whitelist PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

.field public static final enum whitelist PASS_ESE:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .locals 2

    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    sget-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->PASS_ESE:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    const-string v1, "PASS_AUTHENTICATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    new-instance v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    const-string v1, "PASS_ESE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->PASS_ESE:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    invoke-static {}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->$values()[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->$VALUES:[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .locals 1

    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->$VALUES:[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    invoke-virtual {v0}, [Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    return-object v0
.end method
