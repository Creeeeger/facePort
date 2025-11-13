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
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 2143
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->None:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 2144
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v3, "Pattern"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 2145
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v5, "Password"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 2146
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v7, "PIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 2147
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v9, "BackupPin"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 2148
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v11, "FingerPrint"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 2142
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->$VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2142
    const-class v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .locals 1

    .line 2142
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->$VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-virtual {v0}, [Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-object v0
.end method
