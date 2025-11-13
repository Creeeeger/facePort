.class final enum Lcom/samsung/android/globalactions/util/ThemeChecker$State;
.super Ljava/lang/Enum;
.source "ThemeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactions/util/ThemeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/globalactions/util/ThemeChecker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/globalactions/util/ThemeChecker$State;

.field public static final enum blacklist BLACK:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

.field public static final enum blacklist NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

.field public static final enum blacklist WHITE:Lcom/samsung/android/globalactions/util/ThemeChecker$State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/globalactions/util/ThemeChecker$State;
    .locals 3

    sget-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    sget-object v1, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->WHITE:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    sget-object v2, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->BLACK:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    const-string v1, "NEED_CHECKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactions/util/ThemeChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    new-instance v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    const-string v1, "WHITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactions/util/ThemeChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->WHITE:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    new-instance v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    const-string v1, "BLACK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactions/util/ThemeChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->BLACK:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    invoke-static {}, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->$values()[Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->$VALUES:[Lcom/samsung/android/globalactions/util/ThemeChecker$State;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/globalactions/util/ThemeChecker$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/globalactions/util/ThemeChecker$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->$VALUES:[Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    invoke-virtual {v0}, [Lcom/samsung/android/globalactions/util/ThemeChecker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    return-object v0
.end method
