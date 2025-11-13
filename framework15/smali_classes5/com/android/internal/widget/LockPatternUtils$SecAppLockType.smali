.class public final enum Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
.super Ljava/lang/Enum;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecAppLockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum blacklist BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum blacklist FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum blacklist None:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum blacklist PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum blacklist Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum blacklist Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .locals 6

    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->None:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->None:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "Pattern"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "Password"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "PIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "BackupPin"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "FingerPrint"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->$values()[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->$VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .locals 1

    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->$VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-virtual {v0}, [Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-object v0
.end method
