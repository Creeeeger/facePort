.class public Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final type:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

.field public final validityCode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;->GENERAL:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const v1, 0xffffff

    if-le p2, v1, :cond_1

    :cond_0
    const-string v1, "ConditionValidity: Out of range of custom code:"

    const-string v2, "RoutineSDK"

    invoke-static {p2, v1, v2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move p2, v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->type:Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;

    iput p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;->validityCode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity$ValidityType;I)V

    return-void
.end method
