.class public final enum Lcom/samsung/android/knox/license/LicenseResult$Status;
.super Ljava/lang/Enum;
.source "LicenseResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/LicenseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/license/LicenseResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Status;

.field public static final enum FAILURE:Lcom/samsung/android/knox/license/LicenseResult$Status;

.field public static final enum SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const-string/jumbo v3, "success"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/license/LicenseResult$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    new-instance v1, Lcom/samsung/android/knox/license/LicenseResult$Status;

    const-string v3, "FAILURE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/knox/license/LicenseResult$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/knox/license/LicenseResult$Status;->FAILURE:Lcom/samsung/android/knox/license/LicenseResult$Status;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/knox/license/LicenseResult$Status;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 16
    sput-object v3, Lcom/samsung/android/knox/license/LicenseResult$Status;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/samsung/android/knox/license/LicenseResult$Status;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Status;
    .locals 1

    .line 16
    const-class v0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/license/LicenseResult$Status;
    .locals 1

    .line 16
    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/license/LicenseResult$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/LicenseResult$Status;

    return-object v0
.end method
