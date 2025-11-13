.class final enum Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;
.super Ljava/lang/Enum;
.source "BiometricEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/BiometricEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnrollStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

.field public static final enum FACE:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

.field public static final enum FINGER:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

.field public static final enum NONE:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 124
    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->NONE:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    .line 125
    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    const-string v3, "FINGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->FINGER:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    .line 126
    new-instance v3, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    const-string v5, "FACE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->FACE:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 123
    sput-object v5, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->$VALUES:[Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;
    .locals 1

    .line 123
    const-class v0, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;
    .locals 1

    .line 123
    sget-object v0, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->$VALUES:[Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    invoke-virtual {v0}, [Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    return-object v0
.end method
