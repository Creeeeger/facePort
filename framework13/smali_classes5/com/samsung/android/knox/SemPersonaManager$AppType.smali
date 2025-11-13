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
.method static constructor greylist <clinit>()V
    .locals 10

    .line 594
    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const-string v1, "IME"

    const/4 v2, 0x0

    const-string v3, "TYPE_IME"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->IME:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    .line 595
    new-instance v1, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const-string v3, "INSTALLER_ALLOWLIST"

    const/4 v4, 0x1

    const-string v5, "installerAllowlist"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_ALLOWLIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    .line 596
    new-instance v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const-string v5, "DISABLED_LAUNCHERS"

    const/4 v6, 0x2

    const-string v7, "disabledLaunchers"

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;->DISABLED_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    .line 597
    new-instance v5, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    const-string v7, "COM_DISABLED_OWNER_LAUNCHERS"

    const/4 v8, 0x3

    const-string v9, "comDisabledOwnerLaunchers"

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/knox/SemPersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/knox/SemPersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    .line 593
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/knox/SemPersonaManager$AppType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/knox/SemPersonaManager$AppType;->$VALUES:[Lcom/samsung/android/knox/SemPersonaManager$AppType;

    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 601
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 602
    iput-object p3, p0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->mName:Ljava/lang/String;

    .line 603
    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 593
    const-class v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;

    return-object v0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .locals 1

    .line 593
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->$VALUES:[Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/SemPersonaManager$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/SemPersonaManager$AppType;

    return-object v0
.end method


# virtual methods
.method public greylist fromName(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaManager$AppType;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 610
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->values()[Lcom/samsung/android/knox/SemPersonaManager$AppType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 611
    .local v3, "type":Lcom/samsung/android/knox/SemPersonaManager$AppType;
    iget-object v4, v3, Lcom/samsung/android/knox/SemPersonaManager$AppType;->mName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 612
    return-object v3

    .line 610
    .end local v3    # "type":Lcom/samsung/android/knox/SemPersonaManager$AppType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getName()Ljava/lang/String;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->mName:Ljava/lang/String;

    return-object v0
.end method
