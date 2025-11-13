.class final enum Lcom/samsung/android/lock/SPBnRManager$BnRMode;
.super Ljava/lang/Enum;
.source "SPBnRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lock/SPBnRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BnRMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/lock/SPBnRManager$BnRMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/lock/SPBnRManager$BnRMode;

.field public static final enum blacklist Copy:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

.field public static final enum blacklist FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

.field public static final enum blacklist None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;


# instance fields
.field private blacklist mode:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/lock/SPBnRManager$BnRMode;
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->Copy:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v2, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/lock/SPBnRManager$BnRMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    new-instance v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    const-string v1, "Copy"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/lock/SPBnRManager$BnRMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->Copy:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    new-instance v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    const-string v1, "FsVerity"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/lock/SPBnRManager$BnRMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->$values()[Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->$VALUES:[Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->mode:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/lock/SPBnRManager$BnRMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/lock/SPBnRManager$BnRMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->$VALUES:[Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {v0}, [Lcom/samsung/android/lock/SPBnRManager$BnRMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    return-object v0
.end method


# virtual methods
.method public blacklist getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->mode:I

    return v0
.end method
