.class public final enum Lcom/samsung/android/knox/license/LicenseResult$Type;
.super Ljava/lang/Enum;
.source "LicenseResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/LicenseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/license/LicenseResult$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;


# instance fields
.field status:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 31
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "ELM_ACTIVATION"

    const/4 v2, 0x0

    const/16 v3, 0x320

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 32
    new-instance v1, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v4, "ELM_VALIDATION"

    const/4 v5, 0x1

    const/16 v6, 0x321

    invoke-direct {v1, v4, v5, v6}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 33
    new-instance v4, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v7, "ELM_DEACTIVATION"

    const/4 v8, 0x2

    const/16 v9, 0x322

    invoke-direct {v4, v7, v8, v9}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 34
    new-instance v7, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v10, "KLM_ACTIVATION"

    const/4 v11, 0x3

    invoke-direct {v7, v10, v11, v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 35
    new-instance v3, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v10, "KLM_VALIDATION"

    const/4 v12, 0x4

    invoke-direct {v3, v10, v12, v6}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 36
    new-instance v6, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v10, "KLM_DEACTIVATION"

    const/4 v13, 0x5

    invoke-direct {v6, v10, v13, v9}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 37
    new-instance v9, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v10, "UNDEFINED"

    const/4 v14, 0x6

    const/16 v15, -0x64

    invoke-direct {v9, v10, v14, v15}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v10, 0x7

    new-array v10, v10, [Lcom/samsung/android/knox/license/LicenseResult$Type;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v8

    aput-object v7, v10, v11

    aput-object v3, v10, v12

    aput-object v6, v10, v13

    aput-object v9, v10, v14

    .line 30
    sput-object v10, Lcom/samsung/android/knox/license/LicenseResult$Type;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/samsung/android/knox/license/LicenseResult$Type;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 1

    .line 30
    const-class v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/license/LicenseResult$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object v0
.end method
