.class public final enum Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "com/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType",
        "",
        "Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "",
        "accountType",
        "Ljava/lang/String;",
        "getAccountType",
        "()Ljava/lang/String;",
        "Companion",
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
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

.field public static final enum GOOGLE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

.field public static final enum NONE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;


# instance fields
.field private final accountType:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    const-string v1, "ONE_DRIVE"

    const/4 v2, 0x0

    const/16 v3, 0x66

    const-string v4, "com.microsoft.skydrive"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    const-string v2, "GOOGLE_DRIVE"

    const/4 v3, 0x1

    const/16 v4, 0x65

    const-string v5, "com.google"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->GOOGLE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    const-string v3, "NONE"

    const/4 v4, 0x2

    const/4 v5, -0x1

    const-string v6, ""

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->NONE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->value:I

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->accountType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    return-object v0
.end method


# virtual methods
.method public final getAccountType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->accountType:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->value:I

    return p0
.end method
