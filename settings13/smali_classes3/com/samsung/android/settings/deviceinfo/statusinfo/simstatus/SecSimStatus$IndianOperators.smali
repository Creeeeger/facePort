.class final enum Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;
.super Ljava/lang/Enum;
.source "SecSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IndianOperators"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

.field public static final enum AIRTEL:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

.field public static final enum OTHERS:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

.field public static final enum RELIANCE:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 145
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    const-string v1, "AIRTEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->AIRTEL:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    .line 146
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    const-string v3, "RELIANCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->RELIANCE:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    .line 147
    new-instance v3, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    const-string v5, "OTHERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->OTHERS:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 144
    sput-object v5, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->$VALUES:[Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;
    .locals 1

    .line 144
    const-class v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;
    .locals 1

    .line 144
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->$VALUES:[Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$IndianOperators;

    return-object v0
.end method
