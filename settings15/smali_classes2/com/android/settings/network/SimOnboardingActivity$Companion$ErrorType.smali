.class public final enum Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/android/settings/network/SimOnboardingActivity$Companion$ErrorType",
        "",
        "Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

.field public static final enum ERROR_ENABLE_DSDS:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

.field public static final enum ERROR_EUICC_SLOT:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

.field public static final enum ERROR_NONE:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

.field public static final enum ERROR_REMOVABLE_SLOT:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "ERROR_NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->ERROR_NONE:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    new-instance v1, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    const-string v2, "ERROR_EUICC_SLOT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->ERROR_EUICC_SLOT:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    new-instance v2, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    const-string v3, "ERROR_REMOVABLE_SLOT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->ERROR_REMOVABLE_SLOT:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    new-instance v3, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    const-string v4, "ERROR_ENABLE_DSDS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->ERROR_ENABLE_DSDS:Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->$VALUES:[Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;
    .locals 1

    const-class v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;
    .locals 1

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;->$VALUES:[Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/network/SimOnboardingActivity$Companion$ErrorType;

    return-object v0
.end method
