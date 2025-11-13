.class public final enum Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/android/settings/network/SimOnboardingActivity$Companion$CallbackType",
        "",
        "Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;",
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
.field public static final synthetic $VALUES:[Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

.field public static final enum CALLBACK_ENABLE_DSDS:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

.field public static final enum CALLBACK_ERROR:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

.field public static final enum CALLBACK_FINISH:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

.field public static final enum CALLBACK_ONBOARDING_COMPLETE:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

.field public static final enum CALLBACK_SETUP_NAME:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

.field public static final enum CALLBACK_SETUP_PRIMARY_SIM:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "CALLBACK_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_ERROR:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    new-instance v1, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    const-string v2, "CALLBACK_ONBOARDING_COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_ONBOARDING_COMPLETE:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    new-instance v2, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    const-string v3, "CALLBACK_ENABLE_DSDS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_ENABLE_DSDS:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    new-instance v3, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    const-string v4, "CALLBACK_SETUP_NAME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_SETUP_NAME:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    new-instance v4, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    const-string v5, "CALLBACK_SETUP_PRIMARY_SIM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_SETUP_PRIMARY_SIM:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    new-instance v5, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    const-string v6, "CALLBACK_FINISH"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->CALLBACK_FINISH:Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    filled-new-array/range {v0 .. v5}, [Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->$VALUES:[Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;
    .locals 1

    const-class v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;
    .locals 1

    sget-object v0, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;->$VALUES:[Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    return-object v0
.end method
