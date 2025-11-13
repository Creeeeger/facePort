.class public Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final customReasonCode:I

.field public final type:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

.field public final validity:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;->DEFAULT:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->type:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->validity:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->customReasonCode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const v1, 0xffffff

    if-le p2, v1, :cond_1

    :cond_0
    const-string v1, "ActionValidity: Out of range of custom code:"

    const-string v2, "RoutineSDK"

    invoke-static {p2, v1, v2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move p2, v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->type:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;

    sget-object p1, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;->NOT_AVAILABLE:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->validity:Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$Validity;

    iput p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;->customReasonCode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionValidity;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionValidity$ValidityType;I)V

    return-void
.end method
