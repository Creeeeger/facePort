.class public final enum Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
.super Ljava/lang/Enum;
.source "SemPersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnoxContainerVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum greylist KNOX_CONTAINER_VERSION_3_11_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

.field public static final enum greylist KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;


# direct methods
.method private static synthetic greylist $values()[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_11_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    filled-new-array {v0, v1}, [Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string v1, "KNOX_CONTAINER_VERSION_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    const-string v1, "KNOX_CONTAINER_VERSION_3_11_0"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_11_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->$values()[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->$VALUES:[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/String;I)V
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

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    return-object v0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->$VALUES:[Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    return-object v0
.end method


# virtual methods
.method public greylist getVersionNumber()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/16 v0, 0xc26

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "N/A"

    return-object v0

    :pswitch_0
    const-string v0, "3.11.0"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
