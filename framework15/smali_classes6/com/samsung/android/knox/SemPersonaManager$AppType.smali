.class public final enum Lcom/samsung/android/knox/SemPersonaManager$AppType;
.super Ljava/lang/Enum;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/SemPersonaManager$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/SemPersonaManager$AppType;

.field public static final enum greylist COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

.field public static final enum greylist DISABLED_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

.field public static final enum greylist IME:Lcom/samsung/android/knox/SemPersonaManager$AppType;

.field public static final enum greylist INSTALLER_ALLOWLIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;


# instance fields
.field private final greylist mName:Ljava/lang/String;


# direct methods
.method private static synthetic greylist $values()[Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->IME:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_ALLOWLIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager$AppType;->DISABLED_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/knox/SemPersonaManager$AppType;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const/4 v1, 0x0

    const-string v2, "TYPE_IME"

    const-string v3, "IME"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->IME:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const/4 v1, 0x1

    const-string v2, "installerAllowlist"

    const-string v3, "INSTALLER_ALLOWLIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_ALLOWLIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const/4 v1, 0x2

    const-string v2, "disabledLaunchers"

    const-string v3, "DISABLED_LAUNCHERS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->DISABLED_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const/4 v1, 0x3

    const-string v2, "comDisabledOwnerLaunchers"

    const-string v3, "COM_DISABLED_OWNER_LAUNCHERS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->$values()[Lcom/samsung/android/knox/SemPersonaManager$AppType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->$VALUES:[Lcom/samsung/android/knox/SemPersonaManager$AppType;

    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    return-object v0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->$VALUES:[Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/SemPersonaManager$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/SemPersonaManager$AppType;

    return-object v0
.end method


# virtual methods
.method public greylist fromName(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->values()[Lcom/samsung/android/knox/SemPersonaManager$AppType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;->mName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->mName:Ljava/lang/String;

    return-object v0
.end method
