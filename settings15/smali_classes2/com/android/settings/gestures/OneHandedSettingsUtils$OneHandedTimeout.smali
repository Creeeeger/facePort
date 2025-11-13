.class public final enum Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

.field public static final enum MEDIUM:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    const/4 v2, 0x4

    const-string v3, "SHORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    const/16 v3, 0x8

    const-string v4, "MEDIUM"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->MEDIUM:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    new-instance v3, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    const/16 v4, 0xc

    const-string v5, "LONG"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->$VALUES:[Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;
    .locals 1

    const-class v0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;
    .locals 1

    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->$VALUES:[Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    invoke-virtual {v0}, [Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->mValue:I

    return p0
.end method
